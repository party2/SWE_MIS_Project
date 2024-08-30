import React, { useEffect, useState } from 'react'
import { Button } from '@mui/material'
import html2canvas from 'html2canvas'
import jsPDF from 'jspdf'
import PdfPage from './PdfPage'
import 'jspdf-autotable' // Import the jspdf-autotable plugin
import ModelPopupView from './ModelPopupView'
import TableShow from './TableShow'
import { useAuth } from 'src/hooks/useAuth'
import { add } from 'date-fns'
import { base64Encode } from 'src/configs/encyptionValidate'
import { fi } from 'date-fns/locale'

const PageAfterSubmit = ({ databaseData, category }) => {
  const auth = useAuth()
  const [approved, setApproved] = useState(false)
  const [course, setCourse] = useState('')
  const [branch, setBranch] = useState('')
  const [open, openchange] = useState(false)
  const [status, setStatus] = useState('Pending')
  useEffect(() => {
    databaseData.forEach(data => {
      if (data.offered === '1') {
        setStatus('Approved')
        setApproved(true)
        setCourse(data.course_name)
        setBranch(data.branch_name)
      }
    })
  }, [databaseData])

  const generatePdf = () => {
    const doc = new jsPDF({
      orientation: 'portrait',
      unit: 'cm',
      format: 'a4'
    })

    const margin = 1
    const pageWidth = doc.internal.pageSize.getWidth()
    const pageHeight = doc.internal.pageSize.getHeight()
    doc.setLineWidth(0.03)
    doc.rect(margin, margin, pageWidth - 2 * margin, pageHeight - 2 * margin)
    const img = new Image()
    img.src = 'https://upload.wikimedia.org/wikipedia/commons/b/bf/IIT_%28ISM%29_Dhanbad.jpg'
    doc.addImage(img, 'JPEG', margin + 0.7, margin + 0.7, 2, 2)
    doc.setTextColor(0)
    doc.setFontSize(12)
    doc.text('INDIAN INSTITUTE OF TECHNOLOGY(ISM) - 826004', margin + 9.5, margin + 1, { align: 'center' })
    doc.setFontSize(8)
    doc.text('BRANCH CHANGE FORM', margin + 9, margin + 1.5, { align: 'center', borderBottom: '1px solid black' })
    doc.text(`Date : ${new Date().toLocaleDateString()}`, margin + 18, margin + 1.5, { align: 'right' })
    doc.text('Name of Student', margin + 1.6, margin + 3.5, { align: 'left' })
    doc.text('Admission No.', margin + 1.6, margin + 4, { align: 'left' })
    doc.text('Name of Course / Branch', margin + 1.6, margin + 4.5, { align: 'left' })
    doc.text('Physically Challenged', margin + 1.6, margin + 5.0, { align: 'left' })
    doc.text('Category', margin + 1.6, margin + 5.5, { align: 'left' })
    doc.text(auth?.user[0]?.user_name, margin + 6.6, margin + 3.5, { align: 'left' })
    doc.text(auth?.user[0]?.id, margin + 6.6, margin + 4, { align: 'left' })
    doc.text(auth?.user[0]?.dept_type + ' / ' + auth?.user[0]?.dept_name, margin + 6.6, margin + 4.5, { align: 'left' })
    doc.text('NO', margin + 6.6, margin + 5.0, { align: 'left' })
    doc.text(category, margin + 6.6, margin + 5.5, { align: 'left' })
    const bodyData = databaseData.map(row => [row.priority, row.course_name, row.branch_name])

    doc.autoTable({
      head: [['Priority', 'Course Name', 'Branch Name']],
      body: [...bodyData],
      startY: margin + 7.5,
      startX: margin + 1.6,
      showHead: 'everyPage',
      theme: 'grid',
      styles: {
        cellPadding: 0.2,
        fontSize: 8,
        cellWidth: 'auto',
        halign: 'center'
      }
    })

    doc.setFontSize(9)
    doc.setFont('lucida', 'bold')
    doc.text(`Current Status : ${status}`, margin + 1.6, pageHeight - 14.5, { align: 'left' })
    if (approved) {
      doc.text(`Course Offered: ${course}`, margin + 1.6, pageHeight - 14, { align: 'left' })
      doc.text(`Branch Offered: ${branch}`, margin + 1.6, pageHeight - 13.5, { align: 'left' })
    }
    doc.setFontSize(8)
    // make font back to normal
    doc.setFont('helvetica', 'normal')
    // create a horizental line
    doc.setLineWidth(0.03)
    doc.line(margin + 1.6, pageHeight - 6.5, pageWidth - margin - 1.6, pageHeight - 6.5)

    doc.text(
      `I ${auth?.user[0]?.user_name}, I certify that above information is correct.`,
      margin + 1.6,
      pageHeight - 5
    )
    doc.text('Date: ', margin + 1.8, pageHeight - 4)
    doc.text('(Signature of Student)', margin + 16, pageHeight - 4, { align: 'right' })
    // Save the PDF
    doc.save('Branch_Change_PDF.pdf')
  }

  return (
    <div
      style={{
        display: 'flex'
      }}
    >
      <div
        style={{
          flexDirection: 'column',
          marginLeft: '2%'
        }}
      >
        <ModelPopupView
          open={open}
          openchange={openchange}
          table={databaseData}
          generatePdf={generatePdf}
          category={category}
        />
        {/* <PdfPage databaseData={databaseData} table={table} /> */}
        <Button
          variant='contained'
          onClick={() => {
            openchange(true)
          }}
        >
          Download Form
        </Button>
        <p>Current Course: {auth.user[0].dept_type}</p>
        <p>Current Branch: {auth.user[0].dept_name}</p>
        <p>Applied On: {databaseData[0].created_date}</p>
        <p>Request Status : {status}</p>
      </div>
      <div
        style={{
          flexDirection: 'column',
          float: 'right',
          width: '60%',
          marginLeft: '13%'
        }}
      >
        <TableShow databaseData={databaseData} />
      </div>
    </div>
  )
}

export default PageAfterSubmit
