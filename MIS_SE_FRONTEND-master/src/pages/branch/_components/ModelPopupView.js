import React, { useState } from 'react'
import PdfPage from './PdfPage'
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

const ModelPopupView = ({ open, openchange, table, generatePdf, category }) => {
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
        maxWidth='lg'
      >
        <DialogTitle>
          <IconButton onClick={closepopup} style={{ float: 'right' }}>
            <CloseIcon color='primary'></CloseIcon>
          </IconButton>
          <IconButton
            onClick={() => {
              generatePdf()
              closepopup()
            }}
            style={{ float: 'left' }}
          >
            <Button variant='contained'>Download Pdf</Button>
          </IconButton>
          <PdfPage table={table} category={category} />
        </DialogTitle>
      </Dialog>
    </div>
  )
}

export default ModelPopupView
