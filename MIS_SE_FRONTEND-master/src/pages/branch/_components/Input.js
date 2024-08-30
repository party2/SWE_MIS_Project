import React, { useEffect, useState } from 'react'
import { Select, MenuItem, Button } from '@mui/material'
import { TableContainer, Table, TableHead, TableBody, TableRow, TableCell, Paper } from '@material-ui/core'
import Helper from './Helper'

const Input = ({
  handleBranchSelect,
  handleAddBranch,
  selectedBranches,
  selectedBranch,
  setSelectedBranch,
  branches,
  course,
  setCourse,
  selectedCourse,
  setSelectedCourse
}) => {
  const [branch, setBranch] = useState([])
  const handleCourseSelect = e => {
    setSelectedCourse(course.find(course => Helper.idGeneratorByCourse(course) === e.target.value))
  }
  useEffect(() => {
    if (!selectedCourse) return
    let temp = branches.filter(branch => branch.course_id === selectedCourse.course_id)
    setBranch(temp)
    setSelectedBranch('')
  }, [selectedCourse])
  // useEffect(() => {
  //   console.log(course)
  // }, [course])

  return (
    <div
      style={{
        border: '1px solid #E5E7EB',
        borderRadius: '0.375rem',
        padding: '1rem'
      }}
    >
      <div
        style={{
          display: 'flex',
          gap: '1rem',
          padding: '1rem',
          margin: '0 auto'
        }}
      >
        <TableContainer component={Paper}>
          <Table>
            <TableHead>
              <TableRow>
                <TableCell>Course</TableCell>
                <TableCell>Branch</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              <TableCell>
                <Select
                  value={selectedCourse && Helper.idGeneratorByCourse(selectedCourse)}
                  onChange={handleCourseSelect}
                  disabled={selectedBranches.length >= 5}
                  placeholder='Select Branch'
                  style={{
                    width: '95%',
                    padding: '0.5rem',
                    borderRadius: '0.375rem',
                    border: '1px solid #E5E7EB',
                    height: '3rem'
                  }}
                >
                  {course.map(course => (
                    // <MenuItem key={course.course_id} value={course.course_id}>
                    //   {course.course_name}
                    // </MenuItem>
                    <MenuItem key={Helper.idGeneratorByCourse(course)} value={Helper.idGeneratorByCourse(course)}>
                      {course.course_name}
                    </MenuItem>
                  ))}
                </Select>
              </TableCell>
              <TableCell>
                <Select
                  value={(selectedBranch && Helper.idGenerator(selectedBranch)) || ''}
                  onChange={e => {
                    handleBranchSelect(e.target.value)
                  }}
                  disabled={selectedBranches.length >= 5 || !selectedCourse}
                  style={{
                    width: '95%',
                    padding: '0.5rem',
                    borderRadius: '0.375rem',
                    border: '1px solid #E5E7EB',
                    height: '3rem'
                  }}
                >
                  {branch.map(branch => (
                    <MenuItem key={Helper.idGenerator(branch)} value={Helper.idGenerator(branch)}>
                      {branch.branch_name}
                    </MenuItem>
                  ))}
                </Select>
              </TableCell>
            </TableBody>
          </Table>
        </TableContainer>
      </div>
      <Button
        onClick={e => {
          e.preventDefault()
          handleAddBranch(selectedCourse.course_id, selectedBranch.branch_id)
        }}
        disabled={!selectedBranch}
        variant='contained'
        color='primary'
        style={{
          width: '25%',
          padding: '0.5rem',
          borderRadius: '0.375rem',
          height: '3rem',
          display: 'block',
          margin: '0 auto'
        }}
      >
        Add Branch
      </Button>
    </div>
  )
}

export default Input
