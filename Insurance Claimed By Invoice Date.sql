

SELECT     SUBSTRING(CONVERT(nvarchar(25), dbo.Invoice.InvoiceDate, 106), 4, 15) AS MonthDate, dbo.Invoice.InvoiceDate, Invoice.EclaimSent,
 dbo.Doctors.Name, dbo.FeeCategory.Category, dbo.Invoice.NetAmount, dbo.Invoice.CreditAmount, dbo.Invoice.Cash, dbo.Invoice.InvoiceID
FROM         
                      dbo.Doctors INNER JOIN
                      dbo.FeeCategory INNER JOIN
                      dbo.Invoice ON dbo.FeeCategory.CategoryID = dbo.Invoice.Type ON dbo.Doctors.DoctorID = dbo.Invoice.DoctorID 


WHERE dbo.Invoice.InvoiceDate between {?StDate} and {?EndDate}
AND Convert(nvarchar(5),dbo.FeeCategory.CategoryID) like '{?CategoryID}'
AND Convert(nvarchar(5),Invoice.DoctorID) Like '{?DoctorID}'
ANd Invoice.Del = 0 AND Invoice.Type != 1 