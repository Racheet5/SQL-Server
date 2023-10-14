CREATE TABLE Workers (
	WORKER_ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME NVARCHAR(25),
	LAST_NAME NVARCHAR(25),
	SALARY INT,
	JOINING_DATE NVARCHAR(25),
	DEPARTMENT NVARCHAR(25)
)
select * from Workers
DROP TABLE Workers

INSERT INTO Workers 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09:00:00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin')
CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Workers(WORKER_ID)
        ON DELETE CASCADE
)
INSERT INTO Title 
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00')

 Select FIRST_NAME AS WORKER_NAME FROM Workers
 
 Select UPPER(FIRST_NAME) FROM Workers
 
 Select DISTINCT DEPARTMENT FROM Workers

 Select SUBSTRING(FIRST_NAME, 1, 3) FROM Workers

 Select CHARINDEX('a', FIRST_NAME ) from Workers where FIRST_NAME = 'Amitabh'

 Select RTRIM(FIRST_NAME) from Workers

 Select LTRIM(DEPARTMENT) from Workers

 Select distinct LEN(DEPARTMENT) from Workers

 Select REPLACE(FIRST_NAME,'a','A') from Workers

 Select CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'COMPLETE_NAME' from Workers

 Select * from Workers where FIRST_NAME in ('Vipul','Satish')

 Select * from Workers where FIRST_NAME like '%a%'

 Select * from Workers where JOINING_DATE like'14-02%'

 SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) As Worker_Name, Salary
FROM workers 
WHERE WORKER_ID IN 
(SELECT WORKER_ID FROM workers 
WHERE Salary BETWEEN 50000 AND 100000)

SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1

(SELECT * FROM Workers)
INTERSECT
(SELECT * FROM Workers)

SELECT * FROM Workers
MINUS
SELECT * FROM Title

SELECT Salary
FROM Workers W1
WHERE 4 = (
 SELECT COUNT( DISTINCT ( W2.Salary ) )
 FROM Workers W2
 WHERE W2.Salary >= W1.Salary
 )

select FIRST_NAME, DEPARTMENT from workers W where W.DEPARTMENT='HR' 
union all 
select FIRST_NAME, DEPARTMENT from Workers W1 where W1.DEPARTMENT='HR'

Select * from Workers where WORKER_ID = (SELECT max(WORKER_ID) from Workers)

SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Workers group by DEPARTMENT) as TempNew 
Inner Join Workers t on TempNew.DEPARTMENT=t.DEPARTMENT 
 and TempNew.TotalSalary=t.Salary

 SELECT FIRST_NAME, SALARY from Workers WHERE SALARY=(SELECT max(SALARY) from Workers)