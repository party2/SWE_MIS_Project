import React, { useState } from 'react'
import { Button } from '@mui/material'
import ModelPopup from './ModelPopup'

const Submit = ({ selectedBranches, submitBranchChanges }) => {
  const [open, openchange] = useState(false)
  return (
    <div>
      <Button
        disabled={selectedBranches.length === 0}
        onClick={() => openchange(true)}
        variant='contained'
        color='primary'
        style={{
          width: '25%',
          padding: '0.5rem',
          borderRadius: '0.375rem',
          height: '3rem'
        }}
      >
        Submit
      </Button>
      <ModelPopup
        open={open}
        openchange={openchange}
        submitBranchChanges={submitBranchChanges}
        selectedBranches={selectedBranches}
      />
    </div>
  )
}

export default Submit
