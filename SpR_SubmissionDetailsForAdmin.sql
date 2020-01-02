USE [ClinicPro]
GO
/****** Object:  StoredProcedure [dbo].[SpR_SubmissionDetailsForAdmin]    Script Date: 05-Dec-19 4:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Alter PROCEDURE [dbo].[SpR_SubmissionDetailsForAdmin]
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
	

SELECT     SUBSTRING(CONVERT(nvarchar(25), dbo.Invoice.InvoiceDate, 106), 4, 15) AS MonthDate, dbo.Invoice.InvoiceDate, Invoice.EclaimSent,
		 dbo.Doctors.Name, 
							  dbo.FeeCategory.Category,
		 dbo.Invoice.NetAmount, dbo.Invoice.CreditAmount, 
							  dbo.Invoice.Cash, dbo.Invoice.InvoiceID
		FROM         
							  dbo.Doctors INNER JOIN
							  dbo.FeeCategory INNER JOIN
							  dbo.Invoice ON dbo.FeeCategory.CategoryID = dbo.Invoice.Type ON dbo.Doctors.DoctorID = dbo.Invoice.DoctorID 


		WHERE dbo.Invoice.InvoiceDate between @StDate and @EndDate
		AND  (dbo.FeeCategory.CategoryID = @CategoryID OR @CategoryID = 0 )
		AND  (dbo.FeeCategory.CategoryID = @CategoryID OR @CategoryID = 0 )
		ANd Invoice.Del = 0 AND Invoice.Type != 1 

	
END
