--Address Book Problem

--UC1
create database AddressBookService;
Use AddressBookService;
--UC2
Create table AddressBook(
id int primary key identity(1,1),
firstName varchar(20),
lastName varchar(20),
address varchar(30), 
city varchar(20),
state varchar(20), 
zip bigint, 
phone varchar(10),
email varchar(30),
)
--UC3
select * from AddressBook;
--Create Stored Procedures
create Procedure AllDetails
As
Begin
select * from AddressBook;
end

Delete from AddressBook where Id in (9);
create Procedure AddContactDetails
(
@firstName varchar(20),
@lastName varchar(20),
@address varchar(30),
@city varchar(20),
@state varchar(20),
@zip bigint,
@phonenumber varchar(10), 
@email varchar(30),
@Relation varchar(30) 
)
As
begin insert Into AddressBook values(@firstName,@lastName,@address,@city,@state,@zip,@phonenumber,@email,@Relation)
End
 
--UC4
Create Procedure EditContactDetails(
@firstName varchar(20),
@lastName varchar(20),
@address varchar(30),
@city varchar(20),
@state varchar(20),
@zip bigint,
@phonenumber varchar(10), 
@email varchar(30),
@Relation varchar(30)  
)
As
begin
update AddressBook set firstName=@firstName,lastName=@lastName,address=@address,city=@city,state=@state,zip=@zip,phone=@phonenumber,email=@email,Relation= @Relation  where firstName=@firstName
End

--UC5
Create Procedure DeleteContactDetails(
@firstName varchar(20)
)
As
Begin Delete from AddressBook where firstName=@firstName
End

--UC6
Create Procedure DetailsinCity(
@city varchar(20)
)
As
Begin Select * from AddressBook where city=@city
End

Create Procedure DetailsinState(
@state varchar(20)
)
As
Begin Select * from AddressBook where state=@state
End

--UC7
Create Procedure SizeByCity
As
Begin Select city, count(*) as count from AddressBook group by city
End

Create Procedure SizeByState
As
Begin Select state, count(*) as count from AddressBook group by state
End
exec SizeByState;

--UC8
CREATE PROCEDURE GetPeopleInCitySortedByName
    @city NVARCHAR(255)
AS
BEGIN
    -- Select the names of people in the specified city and sort them alphabetically by name
    SELECT *
    FROM AddressBook
    WHERE city = @city
    ORDER BY firstName;
END;

exec GetPeopleInCitySortedByName @city = 'processor';

--UC9
Create table Type(
id int primary key identity(1,1),
type varchar(20)
);

Insert into Type values('Family');
Insert into Type values('Friends');
Insert into Type values('Profession');
Insert into Type values('Others');

select * from Type
select * from AddressBook;


--UC10
Create Procedure CountByType
As
Begin
Select Relation, count(Relation) as count from AddressBook group by Relation ;
End

exec CountByType;

--UC11
CREATE PROCEDURE AddPersonToFriendAndFamily
    @PersonName NVARCHAR(255),
    @AddToFriend BIT,
    @AddToFamily BIT
AS
BEGIN
    IF @AddToFriend = 1
    BEGIN
        INSERT INTO AddressBook (firstName, Relation)
        VALUES (@PersonName, 'Friend');
    END

    IF @AddToFamily = 1
    BEGIN
        INSERT INTO AddressBook (firstName, Relation)
        VALUES (@PersonName, 'Family');
    END
END;

EXEC AddPersonToFriendAndFamily @PersonName = 'readdy', @AddToFriend = 0, @AddToFamily = 1;
--problem above is

--UC11
CREATE PROCEDURE CopyDataWithDifferentRelation
    @FirstName NVARCHAR(255),
    @NewRelation NVARCHAR(255)
AS
BEGIN
    INSERT INTO AddressBook (FirstName, LastName, Address, City, State, Zip, Phone, Email, Relation)
    SELECT FirstName, LastName, Address, City, State, Zip, Phone, Email, @NewRelation AS Relation
    FROM AddressBook
    WHERE FirstName = @FirstName;
END;

  INSERT INTO AddressBook (FirstName, LastName, Address, City, State, Zip, Phone, Email, Relation)
    SELECT FirstName, LastName, Address, City, State, Zip, Phone, Email, 'Others' AS Relation
    FROM AddressBook
    WHERE FirstName = 'kanha';