select * from Invoice where InvoiceID = 33473
select * from InvoiceDetail where InvoiceID = 33473
update invoicedetail set fee = 26.4 , NetFee =26.4, TotalGross = 26.4 , TotalNet = 26.4 , CreditAmt =26.4 WHERE InvoiceDetailID = 80429
UPDATE INVOICE SET TotalAmount = 216.17 , NetAmount = 215.653, CreditAmount =165.653 where InvoiceID = 33473