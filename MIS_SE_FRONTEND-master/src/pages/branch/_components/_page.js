import React, { useState, useEffect } from 'react'
import { useAuth } from 'src/hooks/useAuth'
import { Select, MenuItem, List, ListItem, ListItemText, Button, TextField } from '@mui/material'
import { DragDropContext, Droppable, Draggable, DropResult } from '@hello-pangea/dnd'
import { set } from 'nprogress'

const Index = () => {
  const auth = useAuth()
  const [branches, setBranches] = useState([])
  const [selectedBranches, setSelectedBranches] = useState([])
  const [selectedBranch, setSelectedBranch] = useState('')

  const [databaseData, setDatabaseData] = useState(null)

  useEffect(() => {
    console.log('selectedBranches:', selectedBranches)
  }, [selectedBranches])

  const fetchBranches = async () => {
    try {
      const res = await auth.getAllBranch()
      setBranches(res)
    } catch (error) {
      console.error('Error fetching branches:', error)
    }
  }

  const submitBranchChanges = async () => {
    try {
      const dataToSend = {
        arrayData: selectedBranches,
        user_id: auth.user[0].id
      }
      const res = await auth.postBranchChange(dataToSend)
      console.log('Branches updated:', res)
      setSelectedBranches([])
    } catch (error) {
      console.error('Error updating branches:', error)
    }
  }

  const handleUserBranch = async () => {
    try {
      const dataToSend = {
        user_id: auth.user[0].id
      }
      const res = await auth.getUserBranch(dataToSend)
      setDatabaseData(res)
    } catch (error) {
      console.error('Error fetching user branches:', error)
    }
  }

  useEffect(() => {
    handleUserBranch()
    fetchBranches()
  }, [])

  const handleBranchSelect = event => {
    const branchId = event.target.value
    const selectedBranchObject = branches.find(branch => branch.id === branchId)
    setSelectedBranch(selectedBranchObject)
  }

  const handleAddBranch = () => {
    if (selectedBranch && selectedBranches.length < 5) {
      const newBranch = { ...selectedBranch, priority: selectedBranches.length + 1 }
      setSelectedBranches([...selectedBranches, newBranch])
      setBranches(branches.filter(branch => branch.id !== selectedBranch.id))
      setSelectedBranch('')
    }
  }

  const handleRemoveBranch = branchId => {
    const removedBranch = selectedBranches.find(branch => branch.id === branchId)
    setSelectedBranches(selectedBranches.filter(branch => branch.id !== branchId))
    setBranches([...branches, removedBranch])
  }

  const handleDragEnd = result => {
    if (!result.destination) return

    const items = Array.from(selectedBranches)
    const [reorderedItem] = items.splice(result.source.index, 1)
    items.splice(result.destination.index, 0, reorderedItem)

    const updatedItems = items.map((item, index) => {
      if (result.destination.index < result.source.index) {
        // Dragged up, increase priority
        return { ...item, priority: index + 1 }
      } else if (result.destination.index > result.source.index) {
        // Dragged down, decrease priority
        return { ...item, priority: index + 2 }
      }
      return item
    })

    setSelectedBranches(updatedItems)
  }

  return (
    <div>
      <h1>Branches</h1>
      <Select value={selectedBranch.id || ''} onChange={handleBranchSelect} disabled={selectedBranches.length >= 5}>
        {branches.map(branch => (
          <MenuItem key={branch.id} value={branch.id}>
            {branch.branch_name}
          </MenuItem>
        ))}
      </Select>
      <Button onClick={handleAddBranch} disabled={!selectedBranch} variant='contained' color='primary'>
        Add Branch
      </Button>
      <List>
        <DragDropContext onDragEnd={handleDragEnd}>
          <Droppable droppableId='selectedBranches'>
            {provided => (
              <div ref={provided.innerRef} {...provided.droppableProps}>
                {selectedBranches.map((branch, index) => (
                  <Draggable
                    key={branch.id + branch.branch_name}
                    draggableId={branch.id + branch.branch_name}
                    index={index}
                  >
                    {provided => (
                      <div ref={provided.innerRef} {...provided.draggableProps} {...provided.dragHandleProps}>
                        <ListItem>
                          <ListItemText primary={branch.branch_name} />
                          <TextField
                            type='number'
                            value={branch.priority}
                            onChange={e => {
                              const newPriority = parseInt(e.target.value)
                              if (!isNaN(newPriority)) {
                                const updatedBranches = [...selectedBranches]
                                updatedBranches[index] = { ...branch, priority: newPriority }
                                setSelectedBranches(updatedBranches)
                              }
                            }}
                          />
                          <Button onClick={() => handleRemoveBranch(branch.id)} variant='outlined' color='secondary'>
                            Remove
                          </Button>
                        </ListItem>
                      </div>
                    )}
                  </Draggable>
                ))}
                {provided.placeholder}
              </div>
            )}
          </Droppable>
        </DragDropContext>
      </List>
      <Button onClick={() => submitBranchChanges()} variant='outlined' color='primary'>
        Submit
      </Button>

      <h1>Database Data</h1>

      <p>{databaseData && databaseData[0]?.user_id}</p>
      <p>{databaseData && databaseData[0]?.priority1}</p>
      <p>{databaseData && databaseData[0]?.priority2}</p>
      <p>{databaseData && databaseData[0]?.priority3}</p>
      <p>{databaseData && databaseData[0]?.priority4}</p>
      <p>{databaseData && databaseData[0]?.priority5}</p>
    </div>
  )
}

export default Index
