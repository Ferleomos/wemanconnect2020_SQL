SELECT * FROM wemanconnet.purpose_details;

SELECT 
	CL.client_name AS cliente,
    PD.purpose_name AS proposito
FROM 
clients CL
INNER JOIN purpose_details PD
ON CL.purpose = PD.purpose_id;

SELECT 
	CL.client_name AS cliente,
    PD.purpose_name AS proposito
FROM clients CL
LEFT JOIN purpose_details PD
ON CL.purpose = PD.purpose_id
WHERE PD.purpose_name IS NOT NULL;

SELECT 
	CL.client_name AS cliente,
	SD.sale_name,
	SD.sale_description
FROM clients CL
RIGHT JOIN sales_order_details SD
ON CL.sale_id = SD.sale_id
WHERE PD.purpose_name IS NOT NULL;

SELECT * FROM clients
CROSS JOIN sales_order_details;

select 
	max(value),
    min(value),
    avg(value)
from 
(select country, COUNT(sales_amount) AS value
from clients 
group by country) AS clients;

select client_name, sales_amount from clients
where sales_amount > ( SELECT AVG(sales_amount) 
					FROM clients);

select purpose_id,purpose_name, purpose_description 
from purpose_details
where purpose_id IN              
(SELECT PURPOSE FROM CLIENTS WHERE SALES_AMOUNT > 300);

update clients 
set sales_amount = sales_amount * 0.70
where id in (select client_id from clients where sales_amount > 500);

delete from clients
where sales_amount < (SELECT AVG(sales_amount) 
					FROM clients);

