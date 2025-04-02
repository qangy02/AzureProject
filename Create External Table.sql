CREATE DATABASE SCOPED CREDENTIAL cred_qangy020
WITH
   IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver_datastorage
WITH 
(
    LOCATION = 'https://awstoragedatalak31032025.blob.core.windows.net/silver',
    CREDENTIAL = cred_qangy020
)

CREATE EXTERNAL DATA SOURCE source_gold_datastorage
WITH 
(
    LOCATION = 'https://awstoragedatalak31032025.blob.core.windows.net/gold',
    CREDENTIAL = cred_qangy020
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH 
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

-- CREATE EXTERNAL TABLE EXTSALES
CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold_datastorage, 
    FILE_FORMAT = format_parquet
) 
AS 
SELECT * FROM gold.sales

select * from gold.extsales

