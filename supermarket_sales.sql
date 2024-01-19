CREATE DATABASE Sales;
USE Sales;

ALTER TABLE supermarket_sales
ADD Pre_tax_profit FLOAT;

ALTER TABLE supermarket_sales
ADD Revenue FLOAT;

ALTER TABLE supermarket_sales
ADD Tax_value FLOAT;

#Total profit earning from sale
UPDATE supermarket_sales
SET Pre_tax_profit=Unit_price*Quantity; 

#considering tax with percentage per product
UPDATE supermarket_sales
SET Revenue=Pre_tax_profit*(1-Tax/100.0);

#the value of tax
UPDATE supermarket_sales
SET Tax_value=Pre_tax_profit-Revenue;

#Sorting the table in terms of ratings
SELECT * FROM supermarket_sales
ORDER BY Rating DESC;


