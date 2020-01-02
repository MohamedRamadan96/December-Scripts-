
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[SpR_CPTByClinician]
	-- Add the parameters for the stored procedure here
	
		 @StDate datetime,
			@EndDate datetime,
			@CategoryID nvarchar,
			@DoctorID nvarchar,
			@BranchID int  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     dbo.Doctors.Name AS Clincian, dbo.Clinics.Clinic, dbo.Invoice.InvoiceID, dbo.Invoice.InvoiceDate, dbo.InvoiceDetail.Code, dbo.InvoiceDetail.Description, dbo.InvoiceDetail.Qty, 
                      dbo.InvoiceDetail.Fee, dbo.InvoiceDetail.Discount, dbo.InvoiceDetail.NetFee, dbo.InvoiceDetail.TotalGross, dbo.InvoiceDetail.TotalNet, dbo.InvoiceDetail.ClinicID, dbo.InvoiceDetail.DoctorID, 
                      dbo.Patients.PatientID, dbo.Patients.Name AS Patient, dbo.FeeCategory.CategoryID, dbo.FeeCategory.Category
   FROM         dbo.Doctors INNER JOIN
                      dbo.InvoiceDetail ON dbo.Doctors.DoctorID = dbo.InvoiceDetail.DoctorID INNER JOIN
                      dbo.Clinics ON dbo.Doctors.ClinicID = dbo.Clinics.CinicID INNER JOIN
                      dbo.Invoice ON dbo.InvoiceDetail.InvoiceID = dbo.Invoice.InvoiceID INNER JOIN
                      dbo.Patients ON dbo.Invoice.PatientID = dbo.Patients.PatientID INNER JOIN
                      dbo.FeeCategory ON dbo.Invoice.Type = dbo.FeeCategory.CategoryID

 WHERE dbo.Invoice.Del= 0 AND dbo.Invoice.InvoiceDate between @StDate and @EndDate
			AND  (FeeCategory.CategoryID = @CategoryID OR @CategoryID = 0 )
			AND (InvoiceDetail.DoctorID = @DoctorID OR @DoctorID = 0)
			And dbo.Doctors.BranchID=@BranchID
END
GO
