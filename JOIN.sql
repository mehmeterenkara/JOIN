--Merhabalar,



--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.



--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.


--Kolay Gelsin.

SELECT city,country 
FROM country C 
LEFT JOIN city CY 
ON C.country_id=CY.country_id 
WHERE country 
LIKE 'Tur%' 
ORDER BY country;


SELECT payment_id, first_name, last_name 
FROM customer C 
right join payment 
ON C.customer_id=P.customer_id 
ORDER BY payment_id;

SELECT rental_id, first_name,last_name 
FROM customer C full 
join rental R 
ON C.customer_id=R.customer_id 
ORDER BY rental_id;