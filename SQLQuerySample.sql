Create Database Example;

Use Example;

Create table Sample(
Id int not null,
Name varchar(30) not null,
Email varchar(30) null,
PhoneNumber varchar(10) null
);

Insert into Sample(Id, Name, Email, PhoneNumber) values(2, 'Mukesh', 'Shreym@gmail.com', '1234567890'); 
Insert into Sample(Id, Name, Email, PhoneNumber) values(3, 'Verma', 'Mukesh@gmail.com', '0987654321');
Insert into Sample(Id, Name, Email, PhoneNumber) values(4, 'Nithin', 'Nithinm@gmail.com', '7712347611'); 
Insert into Sample(Id, Name, Email, PhoneNumber) values(5, 'Jogan', 'Johanm@gmail.com', '7712347611'); 

Select * from Sample;

Select * from Sample where Id=2;
Select * from Sample where Id in (2,3);
Select Name, PhoneNumber from Sample where Id=2;
select * from Sample where PhoneNumber = '7712347611';

Update Sample set Name = 'Bunny' where Id=2 ;

Delete from Sample where Id=2;

SELECT DISTINCT PhoneNumber,Email FROM Sample ;
SELECT DISTINCT PhoneNumber,Email FROM Sample where PhoneNumber = '7712347611';
SELECT COUNT(DISTINCT PhoneNumber) FROM Sample;

Select Top 2 * from Sample ;
Select Top 25 PERCENT * from Sample ;
SELECT MIN(Email) AS SmallestEmail FROM Sample;

Select * from Sample;
Select * from Sample where Name like 'V%';