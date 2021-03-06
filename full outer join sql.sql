/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM [wemanconnect].[dbo].[Client]
SELECT * FROM [dbo].[sales_order_details]

  CREATE TABLE sales_order_details (
    sale_id INT NOT NULL identity,
    sale_name VARCHAR(255) NOT NULL,
	type INT NOT NULL,
	sale_description VARCHAR(255) NOT NULL,
	modified_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (sale_id)
);


SELECT 
	CL.client_name AS cliente,
	SD.sale_name,
	SD.sale_description
FROM client CL
FULL OUTER JOIN sales_order_details SD
ON CL.[sale_id] = SD.sale_id

WHERE SD.sale_name IS NULL or cl.client_name is null