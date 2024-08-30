import React, { useState, useEffect } from 'react'
import { useAuth } from 'src/hooks/useAuth'
import Dnd from './Dnd'
import Input from './Input'
import Submit from './Submit'
import Helper from './Helper'

const PageBeforeSubmit = ({ handleUserBranch }) => {
  const auth = useAuth()

  // states
  const [branches, setBranches] = useState([])
  const [selectedBranches, setSelectedBranches] = useState([])
  const [course, setCourse] = useState([])
  const [selectedBranch, setSelectedBranch] = useState('')
  const [selectedCourse, setSelectedCourse] = useState(null)

  useEffect(() => {
    let temp = []
    branches.forEach(element => {
      if (!temp.some(course => Helper.idGeneratorByCourse(course) === Helper.idGeneratorByCourse(element))) {
        temp.push({
          course_id: element.course_id,
          course_name: element.course_name
        })
      }
    })
    setCourse(temp)
  }, [branches])

  // useEffect(() => {
  //   console.log(selectedBranches)
  // }, [selectedBranches])

  // actions
  const fetchBranches = async () => {
    try {
      const res = await auth.getAllBranch()
      if (res?.success === true) {
        setBranches(res?.data || [])
      }
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
      if (res?.success === true) {
        setSelectedBranches([])
        handleUserBranch()
        fetchBranches()
      }
    } catch (error) {
      console.error('Error updating branches:', error)
    }
  }

  const handleRemoveBranch = option => {
    const removedBranch = selectedBranches.find(branch => Helper.idGenerator(branch) === Helper.idGenerator(option))
    const updatedBranches = selectedBranches.filter(branch => Helper.idGenerator(branch) !== Helper.idGenerator(option))
    updatedBranches.sort((a, b) => a.priority - b.priority)
    updatedBranches.forEach((branch, index) => {
      branch.priority = index + 1
    })
    setSelectedBranches(updatedBranches)
    setBranches([...branches, removedBranch])
  }

  const handleAddBranch = () => {
    if (selectedBranch && selectedBranches.length < 5) {
      const newBranch = { ...selectedBranch, priority: selectedBranches.length + 1 }
      setSelectedBranches([...selectedBranches, newBranch])
      setBranches(
        branches.filter(branch => Helper.idGenerator(branch) !== Helper.idGeneratorBy(selectedCourse, selectedBranch))
      )
      setSelectedBranch('')
      setSelectedCourse(null)
    }
  }

  const handleBranchSelect = course_branch => {
    const selectedBranchObject = branches.find(branch => Helper.idGenerator(branch) === course_branch)
    setSelectedBranch(selectedBranchObject)
  }

  const handleDragEnd = result => {
    if (!result.destination) return
    const items = Array.from(selectedBranches)

    const updatedItems = items.map((item, index) => {
      if (item.priority === result.source.index + 1) {
        item.priority = result.destination.index + 1
      } else {
        if (result.source.index <= result.destination.index) {
          if (item.priority >= result.source.index + 1 && item.priority <= result.destination.index + 1) {
            item.priority -= 1
          }
        } else {
          if (item.priority <= result.source.index + 1 && item.priority >= result.destination.index + 1) {
            item.priority += 1
          }
        }
      }
      return item
    })
    // sort by priority
    updatedItems.sort((a, b) => a.priority - b.priority)

    setSelectedBranches(updatedItems)
  }

  // useEffects
  useEffect(() => {
    fetchBranches()
  }, [])

  return (
    <>
      <div
        className='container'
        style={{
          display: 'flex',
          flexDirection: 'column',
          gap: '1rem',
          padding: '1rem',
          border: '1px solid #E5E7EB',
          borderRadius: '0.375rem',
          width: '80%',
          margin: '0 auto'
        }}
      >
        <Input
          handleAddBranch={handleAddBranch}
          handleBranchSelect={handleBranchSelect}
          selectedBranch={selectedBranch}
          selectedBranches={selectedBranches}
          setSelectedBranch={setSelectedBranch}
          branches={branches}
          course={course}
          setCourse={setCourse}
          selectedCourse={selectedCourse}
          setSelectedCourse={setSelectedCourse}
        />
        <Dnd
          selectedBranches={selectedBranches}
          handleDragEnd={handleDragEnd}
          handleRemoveBranch={handleRemoveBranch}
        />
        <Submit selectedBranches={selectedBranches} submitBranchChanges={submitBranchChanges} />
      </div>
    </>
  )
}

export default PageBeforeSubmit

// $sql = "INSERT INTO `change_branch_option` (`cb_log_id`,`dept_id`,`offered`,`priority`,`created_by`,`created_date`,`modified_by`,`modified_date`,`is_deleted`, `branch_id`, `course_id`) VALUES (`1`,``,?, ?, ?)";
//
