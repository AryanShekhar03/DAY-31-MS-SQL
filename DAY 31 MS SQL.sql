create database Payroll_Services --UC1
create table Employee_Payroll(EmpId int IDENTITY, EmpName varchar(100),Salary int,StartDate Date) --UC2

SET IDENTITY_INSERT
 Employee_Payroll ON
insert into
 Employee_Payroll(EmpId,EmpName,Salary,StartDate) --UC3
values(113, 'Rohit',30000,'2019-7-17')
insert into
 Employee_Payroll(EmpId,EmpName,Salary,StartDate)
 values(117, 'Sam',35000,'2018-12-11')
insert into 
 Employee_Payroll(EmpId,EmpName,Salary,StartDate)
 values(119, 'Rahul',19000,'2018-10-15')
insert into
 Employee_Payroll(EmpId,EmpName,Salary,StartDate)
 values(121, 'Karn',39000,'2021-11-25')
insert into
 Employee_Payroll(EmpId,EmpName,Salary,StartDate)
 values(137, 'Cris',10000,'2019-12-12')
insert into
 Employee_Payroll(EmpId,EmpName,Salary,StartDate)
 values(139, 'Abhinav',100000,'2019-12-9')

 select * from Employee_Payroll --UC4
 Select salary from Employee_Payroll where EmpName = 'Rahul' --UC5
 select * from Employee_Payroll where start BETWEEN CAST('2018-09-05') AND (NOW('2021-05-25')); --UC5

 ALTER TABLE Employee_Payroll  --UC6
 ADD Gender varchar;

UPDATE [Employee_Payroll] SET Gender = 'M' WHERE EmpName = 'Rahul';
UPDATE [Employee_Payroll] SET Gender = 'M' WHERE EmpName = 'Rohit';
UPDATE [Employee_Payroll] SET Gender = 'M' WHERE EmpName =  'Sam';
UPDATE [Employee_Payroll] SET Gender = 'M' WHERE EmpName = 'Karn'; 
UPDATE [Employee_Payroll] SET Gender = 'F' WHERE EmpName = 'Cris';
UPDATE [Employee_Payroll] SET Gender = 'M' WHERE EmpName = 'Abhinav';

select SUM(Salary) from Employee_Payroll --UC7
where Gender = 'F' Group BY Gender
select SUM(Salary) from Employee_Payroll 
where Gender = 'M' Group BY Gender

select AVG(Salary) from Employee_Payroll  
where Gender = 'M' Group BY Gender
select AVG(Salary) from Employee_Payroll  
where Gender = 'F' Group BY Gender

select MIN(Salary) from Employee_Payroll  
where Gender = 'M' Group BY Gender
select MIN(Salary) from Employee_Payroll  
where Gender = 'F' Group BY Gender

select MAX(Salary) from Employee_Payroll  
where Gender = 'M' Group BY Gender
select MAX(Salary) from Employee_Payroll  
where Gender = 'F' Group BY Gender

select COUNT(Salary) from Employee_Payroll
where Gender = 'M' Group BY Gender
select COUNT(Salary) from Employee_Payroll  --UC7
where Gender = 'F' Group BY Gender

