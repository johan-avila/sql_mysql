SELECT `name`, gender FROM clients WHERE gender = "M" LIMIT 10;

SELECT `name`, gender, year(birthdate) FROM clients WHERE gender = "M" LIMIT 10;

SELECT "name", email,  year(now()) - year(birthdate) AS edad , gender
FROM clients 
WHERE gender = "F" 
and  name like '%Lop%'



---------------------------------------------------
SELECT book_id, a.name, b.title
FROM books AS b  
JOIN authors AS a
    ON a.author_id = b.author_id
WHERE a.author_id BETWEEN 1 AND 5;    


SELECT * FROM books WHERE author_id BETWEEN 1 AND 5;

---------------------------------------------------
INSERT INTO transactions(transaction_id,book_id,client_id,`type`,`finished`) 
VALUES
(1, 12, 34, 'sell',1),
(2, 54, 87, 'lend',0),
(3, 3,  14, 'sell',1),
(4, 1,  54, 'sell',1),
(5, 12, 81, 'lend',1),
(6, 12, 81, 'lend',1),
(7, 87, 29, 'sell',1);

--------------------------------------------------------------


SELECT c.name, b.title, t.type ,a.name
FROM transactions AS t
JOIN books AS b
    on t.book_id = b.book_id
JOIN clients AS c
    on t.client_id = c.client_id
JOIN authors AS a
    on  b.author_id = a.author_id
WHERE c.gender = "F" and t.type = "sell" 



------------------------------------------------------------------

SELECT a.name, b.title
FROM authors AS a, books AS b
WHERE a.author_id = b.book_id 
-------------------------------------------------------
SELECT a.name, b.title
FROM books as b
JOIN authors as a
    ON b.author_id = a.author_id
WHERE b.author_id BETWEEN 1 and 5;
-----------------------------------------------------------------
SELECT a.author_id, a.name, b.title, a.nationality
FROM authors AS a 
JOIN books AS b
    on b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 and 5
ORDER BY a.author_id;                            --TRAE LAS COSAS EN ORDEN ASECENDENTE

-------------------------------------------------
SELECT a.author_id, a.name, b.title, a.nationality
FROM authors AS a 
JOIN books AS b
    on b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 and 5
ORDER BY a.author_id DESC                      --TRAE EN ORDEN DESCENDENTE
---------------------------------------------------
SELECT a.author_id, a.name, b.title, a.nationality
FROM authors AS a 
JOIN books AS b
    on b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 and 5
ORDER BY a.name DESC                            -- ALFABETIOCAMENTE ABC
---------------------------------------------------------










----------------------------------------------------------------------------
--|****|------|*************|--||||||||||||---|||||||||||||||---------------
--|   *|------|****|-----------|   |----------|||||||||||||||-- LEFT JOIN---
--|   *|------|*************|--|   |||||||---------|   |--------------------
--|   *|------|*************|--|   |---------------|   |--------------------
--|      *|---|****|-----------|   |---------------|   |--------------------
--|*******|---|*************|--|   |---------------|   |--------------------
-------------------------------|   |---------------|   |--------------------
SELECT a.author_id, a.name, b.title, a.nationality
FROM authors AS a 
LEFT JOIN books AS b
    on b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 and 5
ORDER BY a.name 

------------------------------------------
SELECT a.author_id, a.name, COUNT(b.book_id), a.nationality
FROM authors AS a 
LEFT JOIN books AS b
    on b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 and 5
GROUP BY a.author_id
ORDER BY a.name 

-------------------------------------------------------
SELECT a.author_id, a.name, COUNT(b.book_id), a.nationality
FROM authors AS a 
RIGHT JOIN books AS b
    on b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 and 5
GROUP BY a.author_id
ORDER BY a.name 

--//CINCO CASOS DE NEGOCIO
--Que nacionalidades hay?
SELECT DISTINCT nationality FROM authors ORDER BY nationality ;
   
--cuantos escritores hay de cadas nacionalidad
SELECT nationality , COUNT(author_id) AS c_authors
FROM authors
WHERE nationality IS NOT NULL
GROUP BY nationality
ORDER BY c_authors DESC  , nationality ASC
--
/* SELECT nationality , COUNT(author_id) AS c_authors
FROM authors
WHERE nationality IS NOT NULL
    AND nationality NOT IN ("RUS" , "AUT") 
GROUP BY nationality
 ORDER BY c_authors DESC  , nationality ASC*/
--cuantos libos hay de cada nacionalidad 
RETO
--promedio y  desviacion estandar del precio?
SELECT AVG(price) as promedio, STDDEV(price) as stda from books;  //Estoy calculando la desviacion 
                                              //  estandar y ====>STDDEV(price) &&&
                                              //el promedio ====>AVG(price)
SELECT a.nationality, 
    COUNT(book_id),
    AVG(price) as promedio,
     STDDEV(price) as stda 
FROM books as b 
JOIN authors as a 
    ON b.author_id = a.author_id
GROUP BY nationality
ORDER by promedio DESC

--idem pero por nacionalidad 
RETO
--valor maximo y minimo de un precio
SELECT a.nationality, MAX(price), MIN(price) 
FROM books as b
JOIN authors as a
    ON a.author_id = b.author_id
WHERE b.price is not NULL
GROUP BY a.nationality
;

--reporte de prestamo 
SELECT  c.name, t.type, b.title, 
    CONCAT(a.name ," '", a.nationality ,"'" ) AS autor,
    TO_DAYS()
FROM transactions AS t
LEFT JOIN books AS b
    ON t.book_id = b.book_id
LEFT JOIN clients AS c
    ON t.client_id = c.client_id
LEFT JOIN authors AS a
    ON a.author_id = b.author_id





    ----

    SELECT `name`, TO_DAYS(now())-TO_DAYS( birthdate ) --TO_DAYS() dice cuantos 
    FROM clients;                                 --años pasaron desde el inicio de la
                                            --ERA hasta la fecha del parametro 'yyyy-mm-dd'