-- comment line
-- create a database named Excelr1
create database Excelr1;
use Excelr1;
-- create a table -Employee
create table Employee
( 
	id int,
	FirstName varchar(50),
	LastName varchar(50),
	Email varchar(50),
	Department varchar(50)
);

desc Employee;
# Alter to Modify structure : ADD ,Modify,Rename,Drop
alter table Employee add column HireDate date;
alter table Employee add column HireTime time;
desc Employee;

# no null value should be added to the id col
alter table Employee modify column id int not null;
alter table Employee modify column Email varchar(50) not null;
alter table Employee modify column Firstname varchar(75);
alter table Employee add column PAN_NO char(12);
alter table Employee Modify column PAN_NO char(50);
alter table Employee drop column PAN_NO;
alter table Employee rename column id to Emp_id;
rename table Employee to Emp_data;
desc Emp_data;

#delete the table
#truncate Remove all the data of the table in 1 go keeping the structure
truncate table Emp_data;
desc Emp_data;
# drop remove the structure and data both
drop table Emp_data;
desc Emp_data;

-- DQL command --SELECT
select * from Employee;
select Firstname,Email,Department from Employee;

