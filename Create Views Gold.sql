-- CREATE VIEW CALENDAR
CREATE VIEW gold.calendar
AS 
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalak31032025.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) as q1

--CREATE VIEW CUSTOMERS
CREATE VIEW gold.customers
AS 
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalak31032025.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) as q2

--CREATE VIEW PRODCAT
CREATE VIEW gold.prodcat
AS 
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalak31032025.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
    FORMAT = 'PARQUET'
) as q3

--CREATE VIEW SUBCAT
CREATE VIEW gold.subcat
AS 
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalak31032025.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
) as q4

--CREATE VIEW PRODUCTS
CREATE VIEW gold.products
AS 
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalak31032025.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) as q5

--CREATE VIEW RETURNS
CREATE VIEW gold.returns
AS 
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalak31032025.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) as q6

--CREATE VIEW SALES
CREATE VIEW gold.sales
AS 
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalak31032025.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) as q7

--CREATE VIEW TERRITORIES
CREATE VIEW gold.territories
AS 
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalak31032025.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) as q8