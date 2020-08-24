-------------------DELETE-------------------
DELETE FROM clients WHERE client_id = 12 LIMIT 1 /******Importante el LIMIT*/ 




-------------------UPDATE-------------------
UPDATE tabla
 SET 
    columna = valor
 WHERE 
    conditions = valor
LIMIT 1;

-------------------------------------------
UPDATE clients 
    SET active = 0
WHERE 
    client_id = 80
LIMIT 1
-----------------------------------------
UPDATE clients
    SET active  = 0
WHERE client_id = 7
    OR client_id IN (1,2,7,3,15)
    OR `name` LIKE '%Lopez%'


SELECT client_id, name, active 
FROM clients 
WHERE client_id IN (1,2,7,3,15)
   OR name LIKE '%Lopez%' 

----------------------------------------