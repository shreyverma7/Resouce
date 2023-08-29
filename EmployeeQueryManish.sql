--Database : EmpluyeeManagement 
Create Database  EmployeeManagement;
Use EmployeeManagement;

--Table :- Employee
Create table Employee(
Empld int primary key identity(1,1),
 Name varchar(20), 
City varchar(20),
Address varchar(30)
);

--Stored Procedure
Create procedure AddEmployee 
(
	@Name varchar(20),
	 @City varchar(20), 
	 @Address varchar(30)
)
As
Begin 
Insert into Employee (Name,City, Address) values (@Name,@City,@Address)
End


 Create procedure GetAllEmployees
As
Begin
Select * from Employee
End


Create procedure DeleteEmployee
( 
@Id int
 )
As
Begin
Delete from Employee where Empld =@Id
End

Create procedure UpdateEmployee
(
@Id int,
@Name varchar(20),
@City varchar(20),
@Address varchar(30)
)
As 
Begin
Update Employee set Name= @Name, City = @City, Address = @Address where Empld= @Id
End

--Excute stored procedure

EXEC GetAllEmployees ;
EXEC AddEmployee @Name ='shrey', @City = 'chennai',  @Address ='abc';
EXEC AddEmployee @Name ='verma', @City = 'delhi',  @Address ='abc';
EXEC AddEmployee @Name ='nithin', @City = 'ladakh',  @Address ='ac';
EXEC AddEmployee @Name ='amma', @City = 'heart',  @Address ='ilu';
exec   DeleteEmployee @id = 2;
execute UpdateEmployee (3,'shrey','up','asdff');
exec UpdateEmployee @Id=3,@Name = 'reddy',@City = 'andhra',@Address = 'adfas';


