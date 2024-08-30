import React from 'react'
import { TableContainer, Table, TableHead, TableBody, TableRow, TableCell, Paper } from '@material-ui/core'
import Helper from './Helper'
const databaseData = []
const TableShow = ({ databaseData }) => {
  return (
    <div>
      <TableContainer component={Paper}>
        <Table>
          <TableHead>
            <TableRow>
              <TableCell>Priority</TableCell>
              <TableCell>Course</TableCell>
              <TableCell>Branch</TableCell>
              <TableCell>Status</TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {/* map over the selected branches */}
            {databaseData.map((branch, index) => (
              <TableRow key={Helper.idGenerator(branch)}>
                <TableCell>{branch.priority}</TableCell>
                <TableCell>{branch.course_name}</TableCell>
                <TableCell>{branch.branch_name}</TableCell>
                <TableCell
                  style={{
                    color: 'green'
                  }}
                >
                  {branch.offered === '1' ? 'Approved' : ''}
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>
    </div>
  )
}

export default TableShow
