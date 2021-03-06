/****** Script for SelectTopNRows command from SSMS  ******/

INSERT INTO [dbo].[Client] VALUES (112,'VEN','PR',0)


USE [wemanconnect]
 --INSERT INTO [dbo].[Client] VALUES (10,'VEN','PR',4)

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


ALTER TABLE Client DROP CONSTRAINT MYUNIQUECRT;




SELECT * FROM SYS.check_constraints 
WHERE parent_object_id = OBJECT_ID('[wemanconnect].[dbo].[Client]');
