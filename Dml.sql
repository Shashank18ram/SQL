create database DML;
use dml;
-- creating a student data
create table student( studentid int,name varchar(50),age int,city varchar(50),marks int,grade char(1));
insert into student values('101','shashank','20','bangalore','80','A');
select * from Student;
-- if mult
truncate table student;
insert into student values
(102,'Diya',19,'pune',62,'B'),
(103,'kabir',20,'Delhi',68,'c'),
(104,'Meera',21,'Mumbai',67,'A'),
(105,'Rohan',22,'Pune',65,'B');
select * from student;
insert into student(studentid,name,city,age) values
(106,'Zoya','bandra',55);
insert into student(studentid,name,city,age) values
(107,'Anil','bandra',null);

#update diya marks 90
set sql_safe_updates=0;
update student set marks=90 where name='Diya';
update student set grade='Z' where studentid=102;
update student set city='mumbai' where name='kabir';

#delete
delete from student where name='kabir';

#INTERVIEW Q
#delte: delete record based on condition
#truncate:were it delete all the record
drop table student;

select name,marks from student;

#SELECT STATEMENT

select * from student;

select name,city from student;

select city from student;
# if you want unique city not the same use distinct
select distinct city from student;
select * from student where city='Mumbai';
select * from student;
select * from student name where marks  is null;
select * from student name where marks is not null;

# Operators 
# comparisons operators =,<>,!=,<,>,<=,<+
select * from student where city <>'mumbai';
select * from student where marks>=85;

select * from student ;
select * from student where city='mumbai' and grade='a';
select * from student where grade='A' or marks=80;