create table dept(DEPT_NO nvarchar(5), DEPT_NAME nvarchar(20), DEPT_LOC nvarchar(20))
select * from dept
insert into dept(DEPT_NO, DEPT_NAME, DEPT_LOC) values ('DP100', 'Neurology', '1st Floor')
insert into dept(DEPT_NO, DEPT_NAME, DEPT_LOC) values ('DP101', 'Nephrology', '2nd Floor')
insert into dept(DEPT_NO, DEPT_NAME, DEPT_LOC) values ('DP102', 'Haematology', '3rd Floor')
insert into dept(DEPT_NO, DEPT_NAME, DEPT_LOC) values ('DP103', 'Gynecology', 'Ground Floor')
insert into dept(DEPT_NO, DEPT_NAME, DEPT_LOC) values ('DP104', 'Haematology', '4th Floor')
truncate table dept
drop table dept



create table EMP(EMP_ID nvarchar(10), EMP_FNAME nvarchar(10), EMP_LNAME nvarchar(10), DEPT_NO nvarchar(5), EMP_SAL int, EMAIL_ID nvarchar(50), CITY nvarchar(20))
select * from EMP
insert into EMP(EMP_ID, EMP_FNAME, EMP_LNAME, DEPT_NO, EMP_SAL, EMAIL_ID, CITY) values('ED20211', 'John', 'Emily', 'DP102', 23000, 'johnemily02@gmail.com', 'Germany')
insert into EMP(EMP_ID, EMP_FNAME, EMP_LNAME, DEPT_NO, EMP_SAL, EMAIL_ID, CITY) values('ED20212', 'Enric', 'Dosni', 'DP101', 15000, 'enricdosni002@outlook.com', 'Mexico')
insert into EMP(EMP_ID, EMP_FNAME, EMP_LNAME, DEPT_NO, EMP_SAL, EMAIL_ID, CITY) values('ED20213', 'Mario', 'Saule', 'DP103', 34000, 'mariosaule05@gmail.com', 'Mexico')
insert into EMP(EMP_ID, EMP_FNAME, EMP_LNAME, DEPT_NO, EMP_SAL, EMAIL_ID, CITY) values('ED20214', 'Alan', 'Snappy', 'DP104', 65000, 'alanSnapp@outlook.com', 'UK')
insert into EMP(EMP_ID, EMP_FNAME, EMP_LNAME, DEPT_NO, EMP_SAL, EMAIL_ID, CITY) values('ED20215', 'Enric', 'Dosio', 'DP101', 25000, 'enricdosio@gmail.com', 'Germany')
insert into EMP(EMP_ID, EMP_FNAME, EMP_LNAME, DEPT_NO, EMP_SAL, EMAIL_ID, CITY) values('ED20216', 'Carlos', 'Robbin', 'DP104', 17800, 'carlosrobbin@yahoo.com', 'Mexico')
insert into EMP(EMP_ID, EMP_FNAME, EMP_LNAME, DEPT_NO, EMP_SAL, EMAIL_ID, CITY) values('ED20217', 'Henrey', 'Gabriel', 'DP103', 65000, 'henreygabrie@gmail.com', 'Germany')




delete from EMP where EMP_ID='ED20216'

update EMP set CITY='Sweden' where EMP_FNAME='John'

delete from dept where DEPT_NAME= 'Neurology'

select * from EMP where city='Germany' OR 'UK' 

delete from EMP where EMP F_Name= 'Henery' AND EMP_LNAME='Gabriel'

update EMP set EMP_SAL=40000 where EMP_ID='ED20211' AND 'ED20213'