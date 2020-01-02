
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Alter PROCEDURE [dbo].[SpR_AuditRequestReport] 
			 @StDate datetime,
			@EndDate datetime,
			@CategoryID nvarchar,
			@DoctorID nvarchar
	
AS
BEGIN
	SET NOCOUNT ON;

    -- Insert statements for procedure here

Select WaitingPatient.PatientID as FileNumber , Invoice.InvoiceID as InvoiceNumber , Invoice.InvoiceDate as InvoiceDate , patients.Name as PatientName ,
WaitingPatient.WaitingID as VisitNumber ,Doctors.Name as DoctorName , DoctorGP.Complain as CheifComplain , 
DoctorDentalExamination.IntraOral as IntraOral , DoctorDentalExamination.ExtraOral as ExtraOral 
, DoctorGPDecisionMacking.NarrativeDiagnosis as NerrativeDiagnosis, IPProgressNotes.ProgressDetails as ProgressNotes ,
VisitStatus.VisitStatus as Status , DoctorGPDecisionMacking.TreatmentPaln as TreatmentPlan , feecategory.category,



		 coalesce(substring(
        (
            Select ','+ST1.CPTCode  AS [text()]
            From dbo.PatientCPTRequests ST1
            Where ST1.WaitingID  = WaitingPatient.WaitingID
      
            For XML PATH ('')
        ), 2, 1000),'') as [Cpt Insurance],

		 coalesce(substring(
        (
            Select ','+ST1.CPTCashCode  AS [text()]
            From dbo.PatientCPTCashRequests ST1
            Where ST1.WaitingID  = WaitingPatient.WaitingID
           
            For XML PATH ('')
        ), 2, 1000),'') as [Cpt Cash],

		  coalesce(substring(
        (
            Select ','+ST1.ICD9  AS [text()]
            From dbo.PatientClaimFormDetail ST1
            Where ST1.WaitingID  = WaitingPatient.WaitingID
           
            For XML PATH ('')
        ), 2, 1000),'') as [ICD10]

		,	 coalesce(substring(
        (
            Select ','+ST1.ObservationCode  AS [text()]
            From dbo.InvoiceDetailObservation ST1
            Where ST1.invoiceid  = Invoice.Invoiceid
           
            For XML PATH ('')
        ), 2, 1000),'') as [Tooth No]




From WaitingPatient  inner join Patients on patients.PatientID = WaitingPatient.PatientID
									  inner join doctors on doctors.DoctorID = WaitingPatient.DoctorID
									  inner join FeeCategory on FeeCategory.CategoryID = WaitingPatient.CategoryID
									  inner join VisitStatus on VisitStatus.VisitStatusID = WaitingPatient.VisitStatusID
									  left outer join DoctorDentalExamination on DoctorDentalExamination.VisitID = WaitingPatient.WaitingID 
								    left outer join Invoice on WaitingPatient.PatientID = Invoice.PatientID
									left outer join DoctorGP on DoctorGP.VisitID = WaitingPatient.WaitingID 
									left outer join DoctorGPDecisionMacking on DoctorGPDecisionMacking.VisitID = WaitingPatient.WaitingID
									left outer join IPProgressNotes on IPProgressNotes.VisitID = WaitingPatient.WaitingID
					
	
									
			where Invoice.InvoiceDate between @StDate and @EndDate
			AND  (WaitingPatient.CategoryID = @CategoryID OR @CategoryID = 0 )
			AND (WaitingPatient.DoctorID = @DoctorID OR @DoctorID = 0)
			  
END
GO
