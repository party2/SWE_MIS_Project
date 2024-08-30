import React, { useEffect, useState } from 'react'
import { TableContainer, Table, TableHead, TableBody, TableRow, TableCell, Paper } from '@material-ui/core'
import { Tab } from 'mdi-material-ui'
import { useAuth } from 'src/hooks/useAuth'

const PdfPage = ({ table, category }) => {
  const databaseData = table
  const auth = useAuth()
  const [approved, setApproved] = useState(false)
  const [status, setStatus] = useState('Pending')
  const [course, setCourse] = useState('')
  const [branch, setBranch] = useState('')

  useEffect(() => {
    table.forEach(data => {
      if (data.offered === '1') {
        setStatus('Approved')
        setApproved(true)
        setCourse(data.course_name)
        setBranch(data.branch_name)
      }
    })
  }, [table])

  return (
    <div
      id='capture'
      style={{
        width: '100%'
        // width: '7in',
        // height: '9.25in'
      }}
    >
      {/* create a outline around whole page i.e border */}
      <div style={{ border: '1px solid black', width: '100%', height: '100%' }}>
        <div
          style={{
            textAlign: 'center',
            fontSize: '1.5rem',
            fontWeight: 'bold',
            padding: '2rem 0 0 0'
          }}
        >
          INDIAN INSTITUTE OF TECHNOLOGY(ISM) - 826004
        </div>
        <div
          style={{
            textAlign: 'center',
            fontSize: '1rem',
            fontWeight: 'bold',
            padding: '0rem 0'
          }}
        >
          <span
            style={{
              borderBottom: '1px solid black'
            }}
          >
            BRANCH CHANGE FORM
          </span>
          {/* make this span to the right */}
          <span
            style={{
              float: 'right',
              padding: '0 1rem'
            }}
          >
            {/* convert date into dd/mm/yyyy */}
            Date : {new Date().toLocaleDateString()}
          </span>
        </div>
        <br />
        <br />
        <br />
        <div
          className='container'
          style={{
            // make two child divs as column
            display: 'flex'
          }}
        >
          <div
            style={{
              padding: '0 1rem',
              marginLeft: '2rem',
              width: '30%',
              display: 'flex',
              flexDirection: 'column'
            }}
          >
            <p
              style={{
                fontWeight: 'bold'
              }}
            >
              Name of student
            </p>
            <p
              style={{
                fontWeight: 'bold'
              }}
            >
              Admission No.
            </p>
            <p
              style={{
                fontWeight: 'bold'
              }}
            >
              Name of Course / Branch
            </p>
            <p
              style={{
                fontWeight: 'bold'
              }}
            >
              Physically Challenged
            </p>
            <p
              style={{
                fontWeight: 'bold'
              }}
            >
              Category
            </p>
          </div>
          <div
            style={{
              padding: '0 1rem',
              marginLeft: '2rem',
              width: '50%',
              display: 'flex',
              flexDirection: 'column'
            }}
          >
            <p>{auth?.user[0]?.user_name}</p>
            <p>{auth?.user[0]?.id}</p>
            <p>
              {auth?.user[0]?.dept_type} / {auth?.user[0]?.dept_name}
            </p>
            <p>NO</p>
            <p>{category}</p>
          </div>
        </div>
        <br />
        <br />
        <br />
        <div
          className='table-container'
          style={{
            width: '90%',
            margin: '0 auto'
          }}
        >
          <TableContainer component={Paper}>
            <Table>
              <TableHead>
                <TableRow>
                  <TableCell>Priority</TableCell>
                  <TableCell>Course</TableCell>
                  <TableCell>Branch</TableCell>
                </TableRow>
              </TableHead>
              <TableBody>
                {/* map over the selected branches */}
                {databaseData.map((branch, index) => (
                  <TableRow key={branch.id + branch.branch_name}>
                    <TableCell>{branch.priority}</TableCell>
                    <TableCell>{branch.course_name}</TableCell>
                    <TableCell>{branch.branch_name}</TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </TableContainer>
          <br />
          <br />
          <br />
          <br />
          <div
            style={{
              // reduce font
              fontSize: '1.2rem'
            }}
          >
            <p>
              <strong>Current Status</strong> : {status}
            </p>
            {approved && (
              <div>
                <p>
                  <strong>Course Offered</strong> : {course}
                </p>
                <p>
                  <strong>Branch Offered</strong> : {branch}
                </p>
              </div>
            )}
          </div>
          <br />
          <br />
          <br />
          <br />
          <hr />
          <br />
          <div>
            I <strong> {auth?.user[0]?.user_name} </strong>, I certify that above information is correct.
          </div>
          <br />
          <br />
          <div
            style={{
              width: '100%'
            }}
          >
            <div
              style={{
                flexDirection: 'left',
                display: 'inline-block'
              }}
            >
              Date
            </div>
            <div
              style={{
                float: 'right'
              }}
            >
              (Signature of Student)
            </div>
          </div>
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
        </div>
      </div>
    </div>
  )
}

export default PdfPage
