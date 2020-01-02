update InvoiceDetail 
Set Fee = Fees.Amount , NetFee = Fees.NetPrice , TotalGross = Qty *Fees.Amount , CreditAmt = (Qty*Fees.NetPrice) - InvoiceDetail.Cash  , TotalNet = Qty * Fees.NetPrice
From InvoiceDetail 
Inner join 
invoice on invoice.invoiceid=InvoiceDetail.InvoiceID
inner join 
Fees on InvoiceDetail.Code = Fees.Code  and Fees.CategoryID=invoice.[type] 
where Fees.FeeServiceTypeID = 3 and CategoryID = 5 and ProcedureDate between '2019-12-12' and '2019-12-16' and fees.Code between '97001' and '97542'