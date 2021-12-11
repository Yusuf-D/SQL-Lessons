/*=================================================================================================
                                       LIMIT
==================================================================================================*/
/*invoices tablosunda Total değeri 10$'dan büyük olan ilk 4 kayıt'ın InvoiceId,
InvoiceDate ve total bilgilerini sorgulayiniz */
	
SELECT InvoiceId, InvoiceDate, total
FROM invoices
WHERE total > 10
LIMIT 4;
/*=================================================================================================
                                       ORDER BY
==================================================================================================*/
/*invoices tablosunda Total değeri 10$'dan büyük olan kayıtları Total değerine göre
ARTAN sırada sıralayarak sorgulayiniz */
	
SELECT total FROM invoices WHERE total > 10 ORDER BY total ASC; --ORDER BY command has the default as ASC
/*invoices tablosunda Total değeri 10$'dan büyük olan kayıtlardan işlem tarihi
(InvoiceDate) 	en yeni olan 10 kaydın tüm bilgilerini listeyiniz */
SELECT InvoiceDate FROM invoices WHERE total > 10 ORDER BY InvoiceDate DESC LIMIT 10;
/*=================================================================================================
                                       AND, OR, NOT
==================================================================================================*/
/* invoices tablosunda ülkesi (BillingCountry) USA olmayan kayıtları total değerine
göre  AZALAN sırada listeyiniz */
SELECT *
FROM invoices
WHERE NOT BillingCountry = 'USA' --"WHERE NOT BillingCountry <> 'USA'" kullanırsak aynı manada gelir
ORDER BY total DESC;
/* invoices tablosunda, ülkesi (BillingCountry) USA veya Germany olan kayıtları,
InvoiceId sırasına göre artan sırada listeyiniz */
SELECT *
FROM invoices
WHERE BillingCountry = 'USA' OR BillingCountry = 'Germany'
ORDER BY InvoiceId ASC;
/* invoices tablosunda fatura tarihi (InvoiceDate) 01-01-2012 ile 03-01-2012
tarihleri arasındaki faturaların tüm bilgilerini listeleyiniz */
SELECT *
FROM invoices
WHERE InvoiceDate >= '2012-01-01' AND InvoiceDate <= '2012-01-03';