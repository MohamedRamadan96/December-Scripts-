USE [ClinicPro]
GO

/****** Object:  StoredProcedure [dbo].[SP_Patient_Lab_Requests_Invoice]    Script Date: 31-Dec-19 11:32:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO










-- =============================================
-- Author:		Mostafa Safwat
-- Modified date: 19-6-2011
-- Description:	this function in used in dental invoice control to get what Lab doctor choose in doctor screen
-- =============================================
ALTER PROCEDURE [dbo].[SP_Patient_Lab_Requests_Invoice](@WaitingID int , @ClinicID int)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT     dbo.DoctorGP.CategoryID, dbo.DoctorGP.SubCategoryID, dbo.Fees.Amount, dbo.Fees.NetPrice, dbo.Fees.FeeServiceTypeID, 
                      dbo.FeeCategory.PriceType, dbo.FeeCategory.CreditType, dbo.FeeCategory.Disc, dbo.FeeCategory.Category, 
                      dbo.PatientLabRequests.TestCode AS CPTCode, dbo.PatientLabRequests.Test AS CPT, 1 as Qty, dbo.Fees.FeeID, dbo.Fees.VAT
FROM         dbo.DoctorGP INNER JOIN
                      dbo.Fees ON dbo.DoctorGP.CategoryID = dbo.Fees.CategoryID INNER JOIN
                      dbo.FeeCategory ON dbo.DoctorGP.CategoryID = dbo.FeeCategory.CategoryID INNER JOIN
                      dbo.PatientLabRequests ON dbo.Fees.Code = dbo.PatientLabRequests.TestCode AND dbo.DoctorGP.VisitID = dbo.PatientLabRequests.WaitingID
WHERE     (dbo.Fees.Clinic in (@ClinicID,0)) AND (dbo.PatientLabRequests.WaitingID = @WaitingID)


END










GO


