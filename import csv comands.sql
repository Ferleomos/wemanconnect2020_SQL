CREATE TABLE clients (
    client_id INT NOT NULL AUTO_INCREMENT,
    client_name VARCHAR(255) NOT NULL,
	country VARCHAR(30) NOT NULL,
	purpose INT NOT NULL,
	modified_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (client_id)
);

LOAD DATA INFILE 'import-to-clients-table_mysql.csv' 
INTO TABLE clients
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(country, client_name, purpose);

LOAD DATA INFILE 'import-to-clients-table_v2.csv' 
INTO TABLE clients 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(country, client_name, purpose, modified_date);

LOAD DATA INFILE 'import-to-sales-table.csv' 
INTO TABLE sales_order_details 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(sale_name,type,sale_description,modified_date);

LOAD DATA INFILE 'import-to-purpose-table.csv' 
INTO TABLE purpose_details 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(purpose_name,purpose_description);