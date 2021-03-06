ALTER TABLE [dbo].[Client]
   ADD CLIENT_ID INT IDENTITY
       CONSTRAINT PK_Client PRIMARY KEY CLUSTERED

ALTER TABLE [dbo].[Client] DROP constraint [MyUniqueConstraint]

SELECT top 6 * FROM [dbo].[Client] order by modified_date desc

INSERT INTO [dbo].[Client]
VALUES
('mexican vendor 1','MX',1,GETDATE()),
('mexican vendor 2','MX',1,GETDATE()),
('mexican vendor 3','MX',1,GETDATE()),
('mexican vendor 4','MX',1,GETDATE())


ALTER TABLE [dbo].[Client]
ADD modified_date DATETIME


ALTER TABLE [dbo].[Client]
drop column clientid 

update Client set [modified_date] = GETDATE()