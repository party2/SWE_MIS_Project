<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Stringable;
use App\Models\User; // Import your User model here
use Illuminate\Support\Facades\Auth;

class BranchChange extends ControllerAPI
{
    public function __construct()
    {
        parent::__construct();
        $this->middleware('AuthCheck:stu,emp', ['except' => ['login', 'validateUser', 'refresh', 'gen_menu', 'TokenError', 'sanctum/csrf-cookie']]);
    }
    public function get_course_branch(Request $request)
    {
        if (Auth::check()) {
            $user_id = Auth::user()->id;
            if (!$this->validator($user_id)) {
                return response()->json(['success' => false]);
            }
            $course_branch_student = DB::table('stu_academic')->where('admn_no', $user_id)->first(['course_id', 'branch_id']);
            if (empty($course_branch_student)) {
                return response()->json(['success' => false]);
            }
            $sql = "SELECT 
            b.id AS branch_id, 
            b.name AS branch_name, 
            c.id AS course_id, 
            c.name AS course_name 
        FROM 
            cbcs_branches b
        JOIN 
            course_branch cb ON b.id = cb.branch_id
        JOIN 
            cbcs_courses c ON cb.course_id = c.id
        WHERE 
            b.name IS NOT NULL AND c.name IS NOT NULL;
        ";
            $data = DB::select($sql);
            $data = array_filter($data, function ($value) use ($course_branch_student) {
                return $value->course_id !== $course_branch_student->course_id || $value->branch_id !== $course_branch_student->branch_id;
            });
            $data = array_values($data);

            return response()->json(['data' => $data, 'success' => true]);
        } else {
            return response()->json(['success' => false]);
        }
    }

    // public function getAllBranch(Request $request)
    // {
    //     if (Auth::check()) {
    //         $branch = DB::table('branch_list')->get();
    //         return response()->json($branch);
    //     } else {
    //         return response()->json([], 401);
    //         // return an error message of authCheck that what is the error
    //     }
    // }

    public function getDataToSubmit(Request $request)
    {
        if (Auth::check()) {

            // Get user_id from the request
            $user_id = Auth::user()->id;
            if (!$this->validator($user_id)) {
                return response()->json(['success' => false]);
            }
            $data = DB::table('change_branch_log')->where('admn_no', $user_id)->get();
            if (count($data) > 0) {
                return response()->json(['status' => 'already_submitted', 'success' => false]);
            }

            // Fetch user details
            $user_Details = DB::table('user_details')->where('id', $user_id)->first(['dept_id']);

            // Fetch student's academic details
            $stu_academic = DB::table('stu_academic')->where('admn_no', $user_id)->first(['auth_id', 'course_id', 'branch_id', 'semester']);

            // Fetch the latest regular form submission details
            $reg_regular_form = DB::table('reg_regular_form')->where('admn_no', $user_id)->orderBy('form_id', 'desc')->first(['session', 'session_year', 'status', 'acad_status', 'form_id', 'acad_time']);

            // Insert log for branch change
            DB::table('change_branch_log')->insert([
                'admn_no' => $user_id,
                'current_dept_id' => $user_Details->dept_id,
                'current_course_id' => $stu_academic->course_id,
                'current_branch_id' => $stu_academic->branch_id,
                'session' => $reg_regular_form->session,
                'session_year' => $reg_regular_form->session_year,
                'acad_status' => $reg_regular_form->acad_status,
                'acad_id' => $reg_regular_form->form_id,
                'acad_date_time' => $reg_regular_form->acad_time,
                'timestamp' => now(),
                'ip' => $request->ip(),
                'created_by' => $user_id,
                'created_date' => now()
            ]);

            // Fetch change branch log data for the user
            $data = DB::table('change_branch_log')->where('admn_no', $user_id)->get();

            $arrayData = $request->input('arrayData');
            for ($i = 0; $i < count($arrayData); $i++) {
                $branch_id = $arrayData[$i]['branch_id'];
                $course_id = $arrayData[$i]['course_id'];
                $priority = $arrayData[$i]['priority'];
                $sql = "INSERT INTO `change_branch_option` ( `cb_log_id`,`branch_id`, `course_id`,`priority`,`created_by`,`created_date`) VALUES ( ?, ?, ?, ?, ?, ?)";
                DB::insert($sql, [$data[0]->id, $branch_id, $course_id, $priority, $user_id, now()]);
            }
            return response()->json(['status' => 'success', 'success' => true]);
        } else {
            return response()->json(['success' => false]);
        }
    }

    public function access_branch_checker(Request $request)
    {
        if (Auth::check()) {
            $user_id = Auth::user()->id;
            if (!$this->validator($user_id)) {
                return response()->json(['success' => false]);
            } else return response()->json(['status' => 'success', 'success' => true]);
        } else {
            return response()->json(['success' => false]);
        }
    }


    public function getBranchChangeData(Request $request)
    {
        if (Auth::check()) {

            // $user_id = $request->input('user_id');
            $user_id = Auth::user()->id;
            if (!$this->validator($user_id)) {
                return response()->json(['success' => false]);
            }

            // Create the SQL query
            $sql = "SELECT cbo.course_id, cbo.branch_id, cbo.priority, cbo.offered,cbo.created_date, cc.name as course_name, bc.name as branch_name FROM change_branch_option cbo JOIN cbcs_courses cc ON cbo.course_id = cc.id JOIN cbcs_branches bc ON cbo.branch_id = bc.id WHERE cbo.cb_log_id = (SELECT id FROM change_branch_log WHERE admn_no = ?)";

            $data = DB::select($sql, [$user_id]);

            $sql = "SELECT allocated_category as category from user_details where id = ?";
            $category = DB::select($sql, [$user_id]);


            if (empty($data)) {
                return response()->json(["success" => false]);
            } else {
                return response()->json(["data" => $data, "success" => true, "category" => $category[0]->category]);
            }
        } else {
            return response()->json(["success" => false]);
        }
    }



    public function validator($user_id)
    {
        $sql = "SELECT auth_id,semester FROM stu_academic WHERE admn_no = ?";
        $auth_id = DB::select($sql, [$user_id]);
        $sql = "SELECT r.status FROM reg_regular_form as r WHERE r.admn_no = ? and r.semester = ?";
        $status = DB::select($sql, [$user_id, 3]);
        $sql = "SELECT cgpa,status FROM final_semwise_marks_foil_freezed  WHERE admn_no = ? and semester = ?";
        $cgpa = DB::select($sql, [$user_id, 2]);
        if (empty($auth_id) && empty($status)) {
            return false;
        }
        if ($auth_id[0]->auth_id !== "ug" || $auth_id[0]->semester !== 3 || $status[0]->status !== "0" || $cgpa[0]->cgpa < 7 || $cgpa[0]->status !== "PASS") {
            return false;
        }
        return true;
    }
}
