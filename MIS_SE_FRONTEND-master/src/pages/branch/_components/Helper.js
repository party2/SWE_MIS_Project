class Helper {
  idGenerator = option => {
    return option.course_id + option.course_name + option.branch_id + option.branch_name
  }
  idGeneratorBy = (course, branch) => {
    return course.course_id + course.course_name + branch.branch_id + branch.branch_name
  }
  idGeneratorByCourse = course => {
    return course.course_id + course.course_name
  }
  idGeneratorByBranch = branch => {
    return branch.branch_id + branch.branch_name
  }
}

export default new Helper()
