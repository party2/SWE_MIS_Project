import { useEffect, useState } from 'react'
import PageBeforeSubmit from './_components/PageBeforeSubmit'
import PageAfterSubmit from './_components/PageAfterSubmit'
import { useAuth } from 'src/hooks/useAuth'
import NotAllowed from './_components/NotAllowed'

const Index = () => {
  // states
  const [databaseData, setDatabaseData] = useState([])
  const [error, setError] = useState(false)
  const [branchAccess, setBranchAccess] = useState(false)
  const [category, setCategory] = useState('NOT DISCLOSED')

  // actions
  const auth = useAuth()
  const handleUserBranch = async () => {
    try {
      const dataToSend = {
        user_id: auth.user[0].id
      }
      const res = await auth.getUserBranch(dataToSend)
      if (res?.success === true) {
        setDatabaseData(res?.data)
        if (res && res.category && res.category !== '') {
          setCategory(res.category)
        }
      }
    } catch (error) {
      console.error('Error fetching user branches:', error)
    }
  }
  const branchAccessCheck = async () => {
    try {
      const res = await auth.branchAccessChecker()
      if (res?.success === true) {
        setBranchAccess(true)
      }
    } catch (error) {
      console.error('Error fetching branch access:', error)
    }
  }

  useEffect(() => {
    if (branchAccess) handleUserBranch()
  }, [branchAccess])
  useEffect(() => {
    branchAccessCheck()
  }, [])

  // return
  return (
    <>
      {error ? (
        <div>
          <p>Error Encountered</p>
          <p>Please Report to the Developer Team. Thanks in Advance for finding bug.</p>
        </div>
      ) : (
        <section style={{ display: 'flex', padding: '1.25rem 0', paddingTop: '1rem' }}>
          <div style={{ margin: '0 auto', width: '100%', padding: '0' }}>
            <div style={{ marginBottom: '1rem', textAlign: 'center' }}>
              <p style={{ fontSize: '3.125rem', fontWeight: 'bold', margin: '0' }}>Branch Change</p>
              {/* <p style={{ color: '#A1A1AA', margin: '0' }}>Add subtitle</p> */}
            </div>
            {!branchAccess && <NotAllowed />}
            {branchAccess && databaseData.length === 0 && <PageBeforeSubmit handleUserBranch={handleUserBranch} />}
            {branchAccess && databaseData && databaseData.length !== 0 && (
              <PageAfterSubmit databaseData={databaseData} category={category} />
            )}
          </div>
        </section>
      )}
    </>
  )
}

export default Index
