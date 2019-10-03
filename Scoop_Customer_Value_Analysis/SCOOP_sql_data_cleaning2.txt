select * from ['Registered Users$']


DROp TABLE Reg_Users;
CREATE TABLE Reg_Users

(
Customer Varchar(255),
[DATE] Varchar(255) NOT NULL,
REG_USERS INT);

INSERT INTO Reg_Users



Select [company name] as 'Customer',
		-- CONVERT(VARCHAR(7),CAST('2018-12' AS DATE),120), -- for 'YYYY-MM' format
		'2018-12' AS 'DATE',
		([December '18]) as 'REG_USERS'
FROM	[SCOOP].[dbo].['Registered Users$']
 

UNION

Select [company name] as 'Customer',
		'2019-01' AS 'DATE',
		([January '19]) as 'REG_USERS'
FROM	[SCOOP].[dbo].['Registered Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-02' AS 'DATE',
		([February '19]) as 'REG_USERS'
FROM	[SCOOP].[dbo].['Registered Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-03' AS 'DATE',
		([March '19]) as 'REG_USERS'
FROM	[SCOOP].[dbo].['Registered Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-04' AS 'DATE',
		([April '19]) as 'REG_USERS'
FROM	[SCOOP].[dbo].['Registered Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-05' AS 'DATE',
		([May '19]) as 'REG_USERS'
FROM	[SCOOP].[dbo].['Registered Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-06' AS 'DATE',
		([June '19]) as 'REG_USERS'
FROM	[SCOOP].[dbo].['Registered Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-07' AS 'DATE',
		([July '19]) as 'REG_USERS'
FROM	[SCOOP].[dbo].['Registered Users$']
 
 


UNION

Select [company name] as 'Customer',
		'2019-08' AS 'DATE',
		([August '19]) as 'REG_USERS'
FROM	[SCOOP].[dbo].['Registered Users$']


;


UPDATE Reg_Users
SET Customer.lstrip('Company')
FROM Reg_Users;

UPDATE Reg_Users
SET Customer = REPLACE(Customer, 'Company', '')
FROM Reg_Users;

DELETE FROM Reg_Users
WHERE Customer is NULL;

SELECT * FROM Reg_Users ORDER BY Customer;

select (count(distinct customer)) as distinct_cust 
FROM Reg_Users;




select [company name],'2018-12' AS month_x,[December '18] AS metric FROM [dbo].['Registered Users$']
ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F12];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F13];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F14];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F15];


ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F16];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F17];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F18];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F19];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F20];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F21];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F22];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F23];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F24];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F25];

ALTER TABLE [SCOOP].[dbo].['Registered Users$'] DROP COLUMN [F26];
