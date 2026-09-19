# Arithmatic operators
create database Exday3;
use Exday3;
create table student( studentid int,name varchar(50),age int,city varchar(50),marks int,grade char(1));
insert into student values
(101,'shashank','20','bangalore','80','A'),
(102,'punith','21','Mumbai','81','B'),
(103,'Gani','20','Goa','82','C'),
(104,'Anee','23','Delhi','50','z'),
(105,'Rahul','26','mandya','88','h');
select * from student;
# show student data along with new column that adds 20 marks for assignment 
select *,marks+10 from student;

#alias to give temporary name to the coulmn in select statement 
select *,marks+10 as "finsl_marks" from student;

# if you want to add parmanently  name to the coulmn in select statement 
 alter table student add column Final_marks int ;
 set sql_safe_updates=0;
 update student set Final_marks=marks+20;
 
 # deduct marks for not attendence 
 select *, final_marks -10 as 'deduct marks' from student;
 
 # special cahracter
 select * from student where marks between 80 and 85;
 
 select * from student where city in ('mumbai','bangalore');
 
 # wild card characters ( like ,_) is used for showing showing the startinf with name A
select * from student where name like 'A%';

select * from student where name like '%k';
select * from student where name like '_h%';

#orderr by
select * from student order by name;
 select * from student order by marks;
 
 # topper
 select * from student order by marks desc limit 3;
 # leaving three 
select * from student order by marks desc limit 3,2;
 
select *, final_marks between 70 and 75 as 'need Improvment'  from student ;
# when then used for multiple checking
select name,final_marks,
case
when final_marks <=70 then 'need improvment'
when final_marks <=80 then 'Average'
else 'Excellent'
end as student_performence from student ;
select name,city,
case 
when city='mumbai' then '10%'
when city='bangalore' then '15%'
else '0'
end as discount from student;

# handling null vayes
#select *,ifnull(marks,0) from student
#coalesce fromula 

 
