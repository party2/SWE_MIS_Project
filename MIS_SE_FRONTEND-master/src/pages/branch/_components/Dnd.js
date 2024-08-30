import React, { useEffect, useState } from 'react'
import { DragDropContext, Droppable, Draggable, DropResult } from '@hello-pangea/dnd'
import { Button, Chip } from '@mui/material'
import Helper from './Helper'

const Dnd = ({ selectedBranches, handleDragEnd, handleRemoveBranch }) => {
  const handleDragStart = () => {}

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: '5' }}>
      <DragDropContext onDragStart={handleDragStart} onDragEnd={handleDragEnd}>
        <Droppable droppableId='droppable'>
          {droppableProvided => (
            <ul
              style={{ display: 'flex', flexDirection: 'column', gap: '4', listStyleType: 'none' }}
              ref={droppableProvided.innerRef}
              {...droppableProvided.droppableProps}
            >
              {selectedBranches.map((branch, index) => (
                <Draggable key={Helper.idGenerator(branch)} draggableId={Helper.idGenerator(branch)} index={index}>
                  {draggableProvided => (
                    <li
                      style={{
                        display: 'flex',
                        alignItems: 'center',
                        justifyContent: 'center',
                        gap: '4',
                        borderRadius: '0.375rem',
                        backgroundColor: '#E5E7EB',
                        padding: '1rem',
                        width: '100%'
                      }}
                      ref={draggableProvided.innerRef}
                      {...draggableProvided.draggableProps}
                      {...draggableProvided.dragHandleProps}
                    >
                      <div
                        style={{
                          display: 'flex',
                          justifyContent: 'space-between',
                          alignItems: 'center',
                          gap: '4',
                          border: '1px solid #E5E7EB',
                          padding: '1rem',
                          borderRadius: '0.375rem'
                        }}
                      >
                        <div style={{ display: 'flex', alignItems: 'space-between', gap: '4' }}>
                          <p>{branch.priority}</p>
                        </div>
                        <p>{branch.course_name}</p>
                        <p>{branch.branch_name}</p>
                        <div style={{ display: 'flex', alignItems: 'right', gap: '4' }}>
                          <Button onClick={() => handleRemoveBranch(branch)}>Delete</Button>
                        </div>
                      </div>
                    </li>
                  )}
                </Draggable>
              ))}
              {droppableProvided.placeholder}
            </ul>
          )}
        </Droppable>
      </DragDropContext>
    </div>
  )
}

export default Dnd
