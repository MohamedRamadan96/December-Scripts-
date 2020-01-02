-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPR_PrescriptionsForPatients]
	-- Add the parameters for the stored procedure here
	@StDate datetime,
	@EndDate datetime,
	@BranchID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select waitingpatient.PatientId ,  waitingpatient.WaitingID ,  waitingpatient.Patient , 
	 Doctors.name as DoctorName ,  waitingpatient.ArrDate as [Visit Date], patients.mobile  
	 , 
		substring(
			(
				Select ',' + PatientDrugs.PackageName + ','   AS [text()]
				From dbo.PatientDrugs 
           
				Where PatientDrugs.WaitingID = WaitingPatient.WaitingID 
				For XML PATH ('')
			), 2, 1000) [Prescription]

	from WaitingPatient inner join patients 

	on WaitingPatient.PatientID = Patients.PatientID inner join
	Doctors on Doctors.DoctorID=WaitingPatient.DoctorID

	where WaitingPatient.ArrDate between @StDate and @EndDate
	   and doctors.BranchID= @BranchID


END
go
