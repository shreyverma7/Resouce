--UC-1
Create database payroll_service;
use payroll_service;

--UC-2

Create table employee_payroll(
id int primary key identity(1,1),
name varchar(30),
salary varchar(30),
start_date date);

--UC-3
Insert into employee_payroll values('a','1000','2018-01-01');
Insert into employee_payroll values('b','1200','2018-01-02');
Insert into employee_payroll values('c','1300','2018-01-03');
Insert into employee_payroll values('d','1400','2018-01-04');

--UC-4
Select * from employee_payroll;

--UC-5 
Select * from employee_payroll where name = 'b';
Select * from employee_payroll where start_date between cast('2018-01-01' as date) and GETDATE();

--UC-6
Alter table employee_payroll
Add Gender Char(1);

update employee_payroll set Gender = 'M' where id in (1,4);
update employee_payroll set Gender = 'F' where id between 2 and 3;

--UC7
Select sum(cast(salary as bigint)) from employee_payroll; 
Select Avg(cast(salary as bigint)) from employee_payroll; 
Select min(cast(salary as bigint)) from employee_payroll; 
Select max(cast(salary as bigint)) from employee_payroll;
Select * from employee_payroll;
Select Gender,count(*) from employee_payroll group by(Gender); 

--UC8
ALTER TABLE employee_payroll
ADD  Phone VARCHAR(10), Address VARCHAR(30), Department VARCHAR(20) ;

--UC9
ALTER TABLE employee_payroll
Add Basic_pay bigint, Deductions bigint, Taxable_pay bigint,Income_Tax bigint, Net_pay bigint;

--UC10
Insert into employee_payroll(name, salary,start_date,Gender,Phone,Address,Department,Basic_pay,Deductions,Taxable_pay,Income_Tax,Net_pay) Values ('Terisa','1500','2018-01-01','F','1234567890','Chennai','Sales',
'1400','100','200','1350','1351');

Insert into employee_payroll(name, salary,start_date,Gender,Phone,Address,Department,Basic_pay,Deductions,Taxable_pay,Income_Tax,Net_pay) Values ('Terisa','1500','2018-01-02','F','1234567890','Chennai','marketing',
'1400','100','200','1350','1351');

--stored procedure
Create procedure AddEmployee 
(
	@name varchar(20),
	 @salary varchar(20), 
	 @start_date Date,
	 @Gender char(1) ,
	 @Phone VARCHAR(10), 
	 @Address VARCHAR(30), 
	 @Department VARCHAR(20),
	 @Basic_pay bigint, 
	 @Deductions bigint, 
	 @Taxable_pay bigint,
	@Income_Tax bigint, 
	 @Net_pay bigint)
	 As
Begin 
Insert into employee_payroll values (@name,@salary,@start_date,@Gender,@Phone,@Address,@Department,@Basic_pay,@Deductions,@Taxable_pay,@Income_Tax,@Net_pay);
End

Create procedure UpdateEmployee
(
@Id int,
@name varchar(20),
@salary varchar(20),
@Phone varchar(30)
)
As 
Begin
Update employee_payroll set name= @name, salary = @salary , Phone= @Phone where id= @Id
End

Create procedure DeleteEmployee
( 
@Id int
 )
As
Begin
Delete from employee_payroll where id =@Id
End

 Create procedure GetAllEmployees
As
Begin
Select * from employee_payroll
End
 

EXEC AddEmployee @name ='Terisa',@salary='1500',@start_date='2018-01-02',@Gender='F',@Phone='1234567890',@Address='Chennai',@Department='marketing',
@Basic_pay='1400',@Deductions='100',@Taxable_pay='200',@Income_Tax='1350',@Net_pay='1351';
EXEC UpdateEmployee @Id =7, @name = 'shrey',@salary = '12342',@Phone = '1234565434';
EXEC DeleteEmployee @Id = 5;
EXEC GetAllEmployees ;

--UC11
 

Create TABLE Salary(	
SalID int primary key identity(501,1),
Salary bigint,
 Basic_pay bigint, 
 Deductions bigint, 
 Taxable_pay bigint,
 Income_Tax bigint, 
 Net_pay bigint);

 Create table Department (
 DeptID int primary key identity(101,1),
 Dept_Name varchar (20)
 );

 Create table Employee(
 id int primary key identity(1001,1),
name varchar(30),
start_date date,
Phone VARCHAR(10),
 Address VARCHAR(30), 
 SalID int Foreign key References salary(SalID) );

 Create table emp_department_mapping(
id int primary key identity(1,1),
EmpID int Foreign Key References Employee(id),
DeptID int  Foreign Key References Department(DeptID)
);


Select * from Salary;
Select * from Department;
Select * from Employee;
Select * from emp_department_mapping;

--PRACTICE
insert into Department  values ('Developer');
insert into Salary values ('10000','8000','2000','1000','500','8500');
insert into Salary values ('20000','18000','2000','1000','500','18500');
insert into Salary values ('30000','28000','2000','1000','500','28500');
insert into Salary values ('40000','88000','2000','1000','500','38500');

insert into Employee values ('shrey','2018-01-01','8787878787','Chennai',504);
insert into Employee values ('Verma','2018-02-01','8712121287','Pune',503);
insert into Employee values ('Guna','2018-01-06','8712345687','Mumbai',501);
insert into Employee values ('Nithin','2016-01-01','8765432187','Delhi',503);
insert into Employee values ('prasanna','2017-01-01','8711111187','Chennai',502);
insert into Employee values ('Mukesh','2017-01-01','8722211187','Ladakh',501);


insert into emp_department_mapping values (1001,104);
insert into emp_department_mapping values (1002,103);
insert into emp_department_mapping values (1003,102);
insert into emp_department_mapping values (1004,104);
insert into emp_department_mapping values (1005,101);

Select Dept_Name as Designation from Department;
SELECT id, Address +  ' ' + name  AS Details FROM Employee;

--Inner joins
SELECT Employee.id, Employee.name, Salary.Basic_pay,Salary.Salary,Employee.Phone FROM Salary FULL JOIN Employee ON Employee.SalID =Salary.SalID;
SElect * from Salary INNER Join Employee on Employee.SalID =Salary.SalID;
--Practice questions
SELECT Distinct * FROM Employee , Salary ;
SELECT UPPER(name) AS EmpName FROM Employee;
Select count(id) from Employee;
select GETDATE();
SELECT SUBSTRING(name, 1, 4) FROM Employee;
SELECT REPLACE('Shrey', 'y', 'yy');
SELECT * INTO NewTable FROM Employee ;
drop table NewTable;
select * from NewTable;


use PersonDetails;
create table Person(
id int primary key identity(1,1),
name varchar(max),
salary bigint,
address varchar(max),
phonenumber varchar(10)
);
select * from person;
Insert into Person values('a',20000,'Chennai','6368888889');
Insert into Person values('b',20000,'Chennai','6368888889');
Insert into Person values('c',20000,'Chennai','6368888889');
Insert into Person values('d',20000,'Chennai','6368888889');
Insert into Person values('e',20000,'Chennai','6368888889');
Insert into Person values('f',20000,'Chennai','6368888889');


--stored procedure 25/09
Create procedure sp_GetEmployee
(
@id int
)
as 
Begin try
select * from employee_payroll where id = @id;
End try
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ErrorNumber,
ERROR_STATE() AS ErrorState,
ERROR_PROCEDURE() AS ErrorProcedure,
ERROR_LINE() AS ErrorLine,
ERROR_MESSAGE() AS ErrorMessage;
END CATCH

exec sp_GetEmployee @id = 2;
select * from employee_payroll;

--function
Create function fun_GetAllEmployees()
returns table
as
return (select * from employee_payroll)

select * from fun_GetAllEmployees();


Create function fun_Join_Column
(
@id int,
@name varchar(20),
@Gender varchar(1)
) 
Returns varchar(100)
As
Begin
Return (select @id+''+@name+''+ @Gender)
End

select * from fun_Join_Column(1, 'a','M');

--26/09 inbuilt function
Select MAX(salary) as max_salary from employee_payroll;
Select MIN(salary) from employee_payroll;
Select AVG(Basic_pay) from employee_payroll;
Select SUM(Basic_pay) from employee_payroll;