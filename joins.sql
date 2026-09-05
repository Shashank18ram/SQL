create table courses 
( cid varchar(15) primary key,
cname varchar(25),
c_duration int check (c_duration between 10 and 20));

create table student( 
sid int primary key,
sname varchar(25) not null,
semail varchar(35) not null unique,
scid varchar(25),
s_loacation varchar(25) default "munbai",
Foreign key(scid) references courses(cid) on update cascade on delete  set Null);

insert into courses values('C101',"MYSQL",25) ;#ITS VOILET BCS OF BTW 10 TO 20
insert into courses values
('C101',"MYSQL",15) ,
('C102',"eXCEL",16),
('C103',"pOWER",17),
('C104',"tABLUE",18),
('C105',"pYTHON",19)
;
select * from courses;

insert into student (sid,sname, semail, scid) values (3,'darshana','darshan@gmail.com','c101');
insert into student (sid,sname, semail, scid) values (4,'darsh','darsh@gmail.com','c102');
insert into student  values (5,'darshi','darshi@gmail.com','c103','Mumbai');

# to test cascade
#on update
update courses set cid='201',c_duration=20 where cid='C101';

delete from courses where cid='C103';
select * from student;
select s.sname,c.cname
from student s join courses c on s.scid=c.cid;

# left join means all data from left table + matched data from right table

select s.sid,s.sname,s.scid,c.cname,c.c_duration
from student s 
left join
courses c
on s.scid=c.cid;

# right joijn get all course along  with student is and name if enrolled
select s.sid,s.sname,s.scid,c.cname,c.c_duration
from student s 
Right join
courses c
on s.scid=c.cid;

# full to get all data from both the table
select s.sid,s.sname,s.scid,c.cname,c.cid
from student s 
left join
courses c
on s.scid=c.cid
 
union

select s.sid,s.sname,s.scid,c.cname,c.cid
from student s 
right join
courses c
on s.scid=c.cid;

select * from student;
alter table student add column s_assignment int;
update student set s_assignment=1 where sid in (2,3);
update student set s_assignment=4 where sid=5;

# seld join to get all student name along with there assignment names
# if we use left join we can see all data if manager also emoloyee it will show null bcs ther are also employess
select s.sid,s.sname as 'Student name',a.sname as 'head name'
from student s 
join
student a 
on
s.s_assignment=a.sid;