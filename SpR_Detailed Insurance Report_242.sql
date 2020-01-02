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
CREATE PROCEDURE [dbo].[SpR_Detailed Insurance Report]
	-- Add the parameters for the stored procedure here
	@StDate datetime ,
	@EndDate datetime 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        [dbo].[Invoice].InvoiceID, [dbo].[Invoice].InvoiceDate,EclaimInvoice.TransactionDate as SubmitDate, 
				  [dbo].[Invoice].CreditAmount, [dbo].[Invoice].[1stPayment], [dbo].[Invoice].[1stRejection], [dbo].[Invoice].[1stResubmission], 
				  [dbo].[Invoice].[2ndPayment], [dbo].[Invoice].[2ndRejection], [dbo].[Invoice].[2ndResubmission],
				  [dbo].[Invoice]. [3rdPayment],[dbo].[Invoice].[1stPaymentDate],[dbo].[Invoice].[2ndPaymentDate]
		


FROM             	[dbo].[Invoice]  left outer join  EclaimInvoice on EclaimInvoice.EclaimInvoiceID=Invoice.InvoiceID

where InvoiceDate between @StDate and @EndDate  and [dbo].[Invoice].[DEL]=0

order by [Invoice].InvoiceDate
END
GO
