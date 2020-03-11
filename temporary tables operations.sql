

/****** search for temp tables into system  ******/


SELECT
    tables.name AS TableName,
    columns.name AS ColumnName,
    columns.max_length AS ColumnLength,
    types.name AS TypeName
FROM TempDB.sys.tables
    INNER JOIN TempDB.sys.columns
    ON tables.object_id = columns.object_id
    INNER JOIN TempDB.sys.types
    ON types.user_type_id = columns.user_type_id
WHERE tables.name LIKE '#temp_table1%';

/****** temp tables operations  ******/

SELECT *
FROM [wemanconnect].[dbo].[Client]

SELECT [client_name], [modified_date]
INTO #temp_table1
FROM [dbo].[Client]

SELECT *
FROM #temp_table1

DROP TABLE #temp_table1

SELECT *
INTO [Client_backup]
FROM [dbo].[Client]

SELECT *
FROM [dbo].[Client_backup]