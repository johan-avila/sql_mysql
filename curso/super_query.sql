///////////////////////
-----BUENA PRACTICA ES SIEMPRE ELIMINAR O ACTUALIZAR CON EL ID


-- SELECT DISTINCT FROM   

SELECT nationality, COUNT(author_id) AS c_aut
FROM authors 
    WHERE nationality = ENG
-- --------  
UPDATE authors
    SET nationality = 'GBR'
WHERE nationality ='ENG'
    LIMIT 10;    
-- -------------------
SELECT sellable, SUM(price*copies) from books where price is not null group by sellable;    








----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-----||||||||||||||||------|||||||||||||||----------------------------------------
-----------||||------------||||---------------------------------------------------  
-----------||||------------|||||||||----------------------------------------------
-----------||||------------||||---------------------------------------------------
-----||||||||||||||||------||||---------------------------------------------------
----------------------------------------------------------------------------------
 SELECT COUNT(book_id), SUM(if (cond, 1, false))


SELECT COUNT(book_id), SUM(if (year < 1950, 1, 0))  AS '<1950' FROM books;


/*Con WHERE*/ SELECT COUNT(book_id) from books where year < 1950;



---------







    SELECT 
        nationality,        
        COUNT(book_id),
        SUM(IF (year< 1950, 1, 0)) AS '<1950',
        SUM(IF (year >=1950 and year < 1990 , 1, 0)) AS '1950 <= x <1990 ',
        SUM(IF (year >=1990 , 1, 0)) AS 'x > 1990 '
    FROM books as b
    JOIN authors as a
        ON a.author_id = b.author_id
    WHERE nationality is not null
    GROUP BY  nationality
    ORDER BY nationality
    
