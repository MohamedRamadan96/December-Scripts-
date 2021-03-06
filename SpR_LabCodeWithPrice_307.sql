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
CREATE PROCEDURE [dbo].[SpR_LabCodeWithPrice]
	-- Add the parameters for the stored procedure here
	@StDate datetime,
	@EndDate datetime,
	@DoctorID  nvarchar,
	@CategoryID  nvarchar
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select patients.PatientID as FileNumber , Patients.Name as PatientName , Doctors.Name as DoctorName ,
	FeeCategory.Category as InsuranceCompany , PatientLabRequests.WaitingID as VisitNumber , 
	WaitingPatient.ArrDate as VisitDate , Fees.Code as Code , Fees.NetPrice as Price 

	from patients inner join WaitingPatient on patients.PatientID = WaitingPatient.PatientID 
				  inner join FeeCategory on WaitingPatient.CategoryID = FeeCategory.CategoryID
				  inner join Doctors on Doctors.DoctorID = WaitingPatient.DoctorID
				  inner join PatientLabRequests on PatientLabRequests.WaitingID = WaitingPatient.WaitingID
				  inner join Fees on Fees.Code = PatientLabRequests.TestCode and Fees.CategoryID=WaitingPatient.CategoryID

	WHERE dbo.WaitingPatient.ArrDate between @StDate and @EndDate
	AND  (dbo.FeeCategory.CategoryID = @CategoryID OR @CategoryID = 0 )
    AND (WaitingPatient.DoctorID = @DoctorID OR @DoctorID = 0)
END
GO
