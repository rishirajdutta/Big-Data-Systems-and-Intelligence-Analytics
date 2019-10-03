CREATE TABLE Schedule_Users

(
Customer Varchar(255),
[DATE] Varchar(255) NOT NULL,
Schedule_Users INT);

INSERT INTO Schedule_Users



Select [company name] as 'Customer',
		-- CONVERT(VARCHAR(7),CAST('2018-12' AS DATE),120), -- for 'YYYY-MM' format
		'2018-12' AS 'DATE',
		([December '18]) as 'Schedule_Users'
FROM	[SCOOP].[dbo].['Scheduling Users$']
 

UNION

Select [company name] as 'Customer',
		'2019-01' AS 'DATE',
		([January '19]) as 'Schedule_Users'
FROM	[SCOOP].[dbo].['Scheduling Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-02' AS 'DATE',
		([February '19]) as 'Schedule_Users'
FROM	[SCOOP].[dbo].['Scheduling Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-03' AS 'DATE',
		([March '19]) as 'Schedule_Users'
FROM	[SCOOP].[dbo].['Scheduling Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-04' AS 'DATE',
		([April '19]) as 'Schedule_Users'
FROM	[SCOOP].[dbo].['Scheduling Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-05' AS 'DATE',
		([May '19]) as 'Schedule_Users'
FROM	[SCOOP].[dbo].['Scheduling Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-06' AS 'DATE',
		([June '19]) as 'Schedule_Users'
FROM	[SCOOP].[dbo].['Scheduling Users$']
 
 

UNION

Select [company name] as 'Customer',
		'2019-07' AS 'DATE',
		([July '19]) as 'Schedule_Users'
FROM	[SCOOP].[dbo].['Scheduling Users$']


UNION

Select [company name] as 'Customer',
		'2019-08' AS 'DATE',
		([August '19]) as 'Schedule_Users'
FROM	[SCOOP].[dbo].['Scheduling Users$']

;


UPDATE Schedule_Users
SET Customer = REPLACE(Customer, 'Company', '')
FROM Schedule_Users;

select (count(distinct customer)) as distinct_cust 
FROM Schedule_Users;

DELETE FROM Schedule_Users
WHERE Customer is NULL;

SELECT * FROM Schedule_Users;


