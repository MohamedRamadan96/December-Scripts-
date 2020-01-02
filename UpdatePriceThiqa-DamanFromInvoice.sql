update invoice set TotalAmount=(select sum(invoicedetail.TotalGross) from invoicedetail where invoicedetail.invoiceid=invoice.invoiceid)
where  Invoice.Type = 5 and InvoiceDate between '2019-12-12' and '2019-12-16' and invoice.ClinicID<>3

update invoice set NetAmount=(select sum(invoicedetail.TotalNet) from invoicedetail where invoicedetail.invoiceid=invoice.invoiceid)
where  Invoice.Type = 5 and InvoiceDate between '2019-12-12' and '2019-12-16' and invoice.ClinicID<>3

update invoice set CreditAmount=(select sum(invoicedetail.CreditAmt) from invoicedetail where invoicedetail.invoiceid=invoice.invoiceid)
where  Invoice.Type = 5 and InvoiceDate between '2019-12-12' and '2019-12-16' and invoice.ClinicID<>3

update invoice set CoPayAmount=(select sum(invoicedetail.Cash) from invoicedetail where invoicedetail.invoiceid=invoice.invoiceid)
where  Invoice.Type = 5 and InvoiceDate between '2019-12-12' and '2019-12-16' and invoice.ClinicID<>3