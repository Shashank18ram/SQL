
#self join
select * from myemp;

select e.emp_id,e.first_name as 'student name', m.first_name as ManagerHead
from myemp e
left join
myemp m
on 
m.mgr_id=e.emp_id;

#cross join
select * from drinks;
select * from meals;
select d.drinkname,d.rate,m.mealname,m.rate,(d.rate+m.rate) as 'Total rate'
from drinks d
cross join
meals m;

select * from drinks;
select * from meals;
select d.drinkname,d.rate,m.mealname,m.rate,(d.rate+m.rate) as 'Total rate'
from drinks d
cross join
meals m
where drinkname='pepsi';


#TCL:COMMIT,ROLLBACK,SAVEPOINT
#COMMIT MEANS DEFAULT ALL DML COMMAND WILL BE SAVED IN DB
use exday3;
create table emptrans
(
id int,
namme varchar(25),amount int);
desc emptrans;
insert into emptrans values(1,'darshana',5000);
select * from emptrans;

set autocommit=1;
set autocommit=0;
start transaction;
insert into emptrans values(3,'obama',6000) ;
commit;

#ROLL BACL : UNDO THE CHANGES
start transaction;
insert into emptrans values(4,'suamnth',6000);
update emptrans set amount=5000 where id=3;
rollback;
select distinct * from emptrans;

#SAVEPOINT:CHECK POINT FOR EACH DML COMMAND
start transaction;
insert into emptrans values(4,'suamnth',6000);
update emptrans set amount=5000 where id=3;
savepoint;
select * from emptrans;




