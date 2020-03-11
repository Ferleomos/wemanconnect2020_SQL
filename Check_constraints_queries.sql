EXEC sp_helpindex '[Client]'

SELECT
	name AS Index_Name,
	type_desc  As Index_Type,
	is_unique,
	IS_PRIMARY_KEY,
OBJECT_NAME(object_id) As Table_Name
FROM
    sys.indexes
WHERE
    is_hypothetical = 0 AND
    index_id != 0 AND
    object_id = OBJECT_ID('[wemanconnect].[dbo].[Client]');  
GO 