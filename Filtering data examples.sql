
#ALTER TABLE clients ADD sales_amount double AFTER purpose;
#insert into clients (client_name, country, purpose) values('anti-ventas cms', 'COL', 5);

#>, <, =, <=, =>, !=, LIKE
#update clients set client_name = 'madrid vendiendo' where client_id in(6);
#update clients set sales_amount = 975 WHERE client_id in(1);

SELECT * FROM clients;

SELECT 
client_name AS Name,
country AS CTN
FROM clients;

SELECT 
cls.client_name AS Name,
cls.country AS CTN
FROM clients Cls;

SELECT concat(country,' - ',client_name,' - ',purpose) AS Client_info
FROM clients;

SELECT * FROM clients limit 3;
SELECT * FROM clients limit 3,2;
SELECT DISTINCT country FROM clients;
SELECT * FROM clients WHERE region IS NULL limit 2;
SELECT * FROM clients WHERE region IS NOT NULL limit 2;

SELECT * FROM clients WHERE purpose < 5;
SELECT * FROM clients WHERE client_id = 5;
SELECT * FROM clients WHERE purpose >= 5;
SELECT * FROM clients WHERE country != "COL";
SELECT * FROM clients WHERE country < "M";

SELECT * FROM clients WHERE purpose between 3 and 7; 
SELECT * FROM clients WHERE country between 'l' and 'p';
SELECT * FROM clients WHERE client_id in (2,5);
SELECT * FROM clients WHERE purpose not in (3,4,5);

SELECT * FROM clients WHERE client_name LIKE '%m%';  #clientes que contengan una ‘m’ en el nombre
SELECT * FROM clients WHERE country LIKE 'M%';	#clientes cuyo nombre comienza por ‘M’
SELECT * FROM clients WHERE country LIKE '%l';	#clientes cuyo nombre termina con ‘l’
SELECT * FROM clients WHERE client_name LIKE '_e%';	#clientes cuyo nombre tiene como segundo caracter la ‘e’
SELECT * FROM clients WHERE client_name LIKE '________';	#clientes cuyo nombre tiene 8 caracteres de longitud
SELECT * FROM clients WHERE client_name LIKE '%a%' and client_name LIKE '%r%';	#clientes cuyo nombre tiene una ‘a’ y una ‘r’

SELECT * FROM clients WHERE client_id > 3 AND client_name LIKE 'm%';
SELECT * FROM clients WHERE purpose < 5 OR country > 'l';
SELECT * FROM clients WHERE NOT(client_id = 4);

SELECT * FROM clients ORDER BY client_name DESC;
SELECT * FROM clients ORDER BY country ASC, client_name DESC;

SELECT * FROM clients GROUP BY region;
SELECT country, region, 
count(region) as total FROM clients GROUP BY region;
SELECT *, MIN(purpose) FROM clients;
SELECT *, MAX(purpose) FROM clients;	
SELECT  SUM(sales_amount) AS total FROM clients;	
SELECT  AVG(sales_amount) AS AVERAGE FROM clients;

SELECT region, SUM(sales_amount) as Amount
FROM clients
where region is not null
GROUP BY region 
HAVING amount < 200


