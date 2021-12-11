/*===================================================
														LIMIT
====================================================*/
 	/*invoices tablosunda Total değeri 10$'dan büyük olan ilk 4 kayıt'ın InvoiceId, 
	InvoiceDate ve total bilgilerini sorgulayiniz */
	SELECT InvoiceId, InvoiceDate,total
	FROM invoices
	WHERE total >10
	LIMIT 4;
	
	
/*===================================================
													ORDER BY
====================================================*/
	
	/*invoices tablosunda Total değeri 10$'dan büyük olan kayıtları Total değerine göre 
	ARTAN sırada sıralayarak sorgulayiniz */
	SELECT *
	FROM invoices
	WHERE total >10
	ORDER BY total ASC;  -- ORder By komutunu default değeri ASC dir.
	
	/*invoices tablosunda Total değeri 10$'dan büyük olan kayıtlardan işlem tarihi 
	(InvoiceDate) en yeni olan 10 kaydın tüm bilgilerini listeyiniz */ 
	
	SELECT *
	FROM invoices
	WHERE total >10
	ORDER BY InvoiceDate DESC
	LIMIT 10;