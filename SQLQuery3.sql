CREATE TABLE Person (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
)
insert into Person (ID, Lastname, Firstname, Age) values (1, 'Hansen', 'Ola', 30)
insert into Person (ID, Lastname, Firstname, Age) values (2, 'Peterson', 'Mike', 25)
insert into Person (ID, Lastname, Firstname, Age) values (3, 'Coulson', 'Phil', 45)
select * from Person

CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Person(ID)
)
insert into Orders(OrderID, OrderNumber, PersonID) values (1, 77895, 3)
insert into Orders(OrderID, OrderNumber, PersonID) values (2, 22456, 2)
insert into Orders(OrderID, OrderNumber, PersonID) values (3, 24562, 1)
select * from Orders

create index lookid on Person (ID)
SELECT * FROM Person WITH(INDEX(lookid))

create table Staff (StaffNo nvarchar(10) NOT NULL primary key, Name nvarchar(20) NOT NULL, Position nvarchar(10) NOT NULL, Salary int NOT NULL, BranchNo nvarchar(10) NOT NULL)
select * from Staff
drop table Staff

insert into Staff(StaffNo, Name, Position, Salary, BranchNo) values ('S1500', 'Tom Daniels', 'Manager', 46000,'B001')
insert into Staff(StaffNo, Name, Position, Salary, BranchNo) values ('S0003', 'Sally Adams', 'Assistant', 30000,'B001')
insert into Staff(StaffNo, Name, Position, Salary, BranchNo) values ('S0010', 'Mary Martinez', 'Manager', 50000,'B002')
insert into Staff(StaffNo, Name, Position, Salary, BranchNo) values ('S3250', 'Robert Chin', 'Supervisor', 32000,'B002')
insert into Staff(StaffNo, Name, Position, Salary, BranchNo) values ('S2250', 'Sally Stern', 'Manager', 48000,'B004')
insert into Staff(StaffNo, Name, Position, Salary, BranchNo) values ('S0415', 'Art Peters', 'Manager', 41000,'B003')

create table Branch (BranchNo nvarchar(10) FOREIGN KEY REFERENCES Staff(BranchNo), BranchAddress nvarchar(50) NOT NULL, TelNo nvarchar(20) NOT NULL)
insert into Branch (BranchNo, BranchAddress, TelNo) values ('B001', '8 Jefferson Way, Portland, OR 97201', '503-555-3618')
insert into Branch (BranchNo, BranchAddress, TelNo) values ('B002', 'City Centre Plaza, Seattle, WA 98122', '206-555-6756')
insert into Branch (BranchNo, BranchAddress, TelNo) values ('B003', '14 - 8th Avenue, New York, NY 10012', '212-371-3000')
insert into Branch (BranchNo, BranchAddress, TelNo) values ('B004', '16 - 14th Avenue, Seattle, WA 98128', '206-555-3131')
drop table Branch
select * from Staff order by Salary having BranchNo='B002'
select * from(select Name, salary, dense_rank() over(order by Salary desc)r from Staff) where r=4
