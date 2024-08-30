import {
  Button,
  Checkbox,
  Dialog,
  DialogActions,
  DialogContent,
  DialogContentText,
  DialogTitle,
  FormControlLabel,
  IconButton,
  Stack,
  TextField
} from '@mui/material'
import CloseIcon from '@mui/icons-material/Close'
import React, { useState } from 'react'
import { TableContainer, Table, TableHead, TableBody, TableRow, TableCell, Paper } from '@material-ui/core'

const Modalpopup = ({ selectedBranches, open, openchange, submitBranchChanges }) => {
  const [checked, setChecked] = useState(false)
  const functionopenpopup = () => {
    openchange(true)
  }
  const closepopup = () => {
    openchange(false)
  }
  return (
    <div style={{ textAlign: 'center' }}>
      <Dialog
        // fullScreen
        open={open}
        onClose={closepopup}
        fullWidth
        maxWidth='sm'
      >
        <DialogTitle>
          Branch Priority Details{' '}
          <IconButton onClick={closepopup} style={{ float: 'right' }}>
            <CloseIcon color='primary'></CloseIcon>
          </IconButton>{' '}
        </DialogTitle>
        <DialogContent>
          {/* <DialogContentText>Do you want remove this user?</DialogContentText> */}
          <Stack spacing={2} margin={2}>
            <TableContainer component={Paper}>
              <Table>
                <TableHead>
                  <TableRow>
                    <TableCell>Priority</TableCell>
                    <TableCell>Course Name</TableCell>
                    <TableCell>Branch Name</TableCell>
                  </TableRow>
                </TableHead>
                <TableBody>
                  {selectedBranches.map((branch, index) => (
                    <TableRow key={branch.id + branch.branch_name}>
                      <TableCell>{branch.priority}</TableCell>
                      <TableCell>{branch.course_name}</TableCell>
                      <TableCell>{branch.branch_name}</TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </TableContainer>
            <FormControlLabel
              control={
                <Checkbox
                  defaultChecked
                  color='primary'
                  checked={checked}
                  onChange={e => setChecked(e.target.checked)}
                ></Checkbox>
              }
              label='I agree to the current branch priority details'
            ></FormControlLabel>
            {/* make sure that submit button is only enabled after clicking on checkbox */}
            <Button
              color='primary'
              variant='contained'
              onClick={submitBranchChanges}
              disabled={selectedBranches.length === 0 || checked === false}
            >
              Submit
            </Button>
          </Stack>
        </DialogContent>
        <DialogActions>
          {/* <Button color="success" variant="contained">Yes</Button>
                    <Button onClick={closepopup} color="error" variant="contained">Close</Button> */}
        </DialogActions>
      </Dialog>
    </div>
  )
}

export default Modalpopup
