USE [ClinicPro]
GO

/****** Object:  StoredProcedure [dbo].[SP_Patient_Lab_Requests_Invoice_ByNetworks_Mandatory]    Script Date: 31-Dec-19 11:37:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO










-- =============================================
-- Author:		Mostafa Safwat
-- Modified date: 19-6-2011
-- Description:	this function in used in dental invoice control to get what Lab doctor choose in doctor screen
-- =============================================
ALTER PROCEDURE [dbo].[SP_Patient_Lab_Requests_Invoice_ByNetworks_Mandatory](@WaitingID int , @ClinicID int)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT dbo.DoctorGP.CategoryID, dbo.DoctorGP.SubCategoryID, dbo.FeesMandatory.Amount * dbo.FeeCategoryFactor.Factor AS Amount, dbo.FeesMandatory.NetPrice * dbo.FeeCategoryFactor.Factor AS NetPrice, 
                  dbo.FeesMandatory.FeeServiceTypeID, dbo.FeeCategory.PriceType, dbo.FeeCategory.CreditType, dbo.FeeCategory.Disc, dbo.FeeCategory.Category, dbo.PatientLabRequests.TestCode AS CPTCode, 
                  dbo.PatientLabRequests.Test AS CPT, 1 AS Qty, dbo.FeesMandatory.FeeID, dbo.FeesMandatory.VAT
FROM     dbo.FeesMandatory INNER JOIN
                  dbo.DoctorGP INNER JOIN
                  dbo.FeeCategory ON dbo.DoctorGP.CategoryID = dbo.FeeCategory.CategoryID INNER JOIN
                  dbo.PatientLabRequests ON dbo.DoctorGP.VisitID = dbo.PatientLabRequests.WaitingID ON dbo.FeesMandatory.Code = dbo.PatientLabRequests.TestCode INNER JOIN
                  dbo.FeeCategoryFactor ON dbo.FeesMandatory.FeeMandatoryGroupID = dbo.FeeCategoryFactor.FeeMandatoryGroupID AND dbo.DoctorGP.CategoryID = dbo.FeeCategoryFactor.CategoryID AND 
                  dbo.DoctorGP.NetworkID = dbo.FeeCategoryFactor.NetworkID
WHERE  (dbo.FeesMandatory.FeeServiceTypeID = 3)
                      AND     (dbo.PatientLabRequests.WaitingID = @WaitingID)


END










GO


