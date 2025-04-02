SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalak31032025.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) as query1