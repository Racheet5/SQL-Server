create table student(ID int, name nvarchar(10))
select * from student
insert into student(ID,name)values(01,'Racheet')
insert into student(ID,name)values(02,'Aniket')
insert into student(ID,name)values(03,'Sarthak')
insert into student(ID,name)values(04,'Parth')
insert into student(ID,name)values(06,'Nikhil')
alter table student add age int
update student set age=20 where ID=01
update student set age=19 where ID=02
update student set age=21 where ID=03
update student set age=23 where ID=06
update student set age=22 where ID=04
truncate student
drop student
insert into student(ID,name)values(04,'Sarth')
select * from student where age=20
select * from student order by age
select count(*) from student
select * from student where age=max(age)
select * from student where age BETWEEN 19 AND 22 
select name from student where name LIKE 's%'