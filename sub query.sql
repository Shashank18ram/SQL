select * from myemp;
select  first_name,max(salary) from myemp group by first_name;

#SUB QUERY :QUERY WITHIN A QUERY
#TYPES
#SCALAR SUB QUERY THE INNER QUERY WILL GEERATE SINGLE OUTPUT
#MULTY ROW SUB QUERY THE INNER QUERY GENERATE MULTIPLE RECORD
#CO RELATED SUN QUERY IS  THE INNER QUERY IS DEPENDENT ON OUTER QUERY


#SCALAR SUB QUERY
#GER EMP DETAIL WHO EARNS HIHEST SALRY IN MYEMP TABLE
select max(salary) from myemp;
select * from myemp where salary=(select max(salary) from myemp);

select * from myemp where salary>(select avg(salary) from myemp );
select * from myemp where salary<(select max(salary) from myemp) limit 1;

select job_id from myemp where First_name='diana';
select * from myemp where JOB_ID=(select job_id from myemp where First_name='diana');

#MULTI ROW SUB QUERY
#GET EMP DETAILS EARNING MAX SALARY IN THEIR DEPARTN=MENT
select * from myemp where (dep_id,salary)in (select dep_id, max(salary) from myemp group by dep_id);
select * from myemp where salary > all(select salary from myemp where job_id='IT_Prog');

select * from myemp where dep_id in
(select dep_id from myemp group by dep_id having count(emp_id)>3);


#co Related sub Query
#GET EMP DETAILS WHO EARNS MORE THSN AVERAGE SALARY OF THEIR DEPT
select * from myemp e where salary > ( select avg(salary) from myemp where dep_id=e.DEP_ID);

# find emp wo joined after their manager
select * from myemp e where HIRE_DATE >(select HIRE_DATE from myemp m where m.EMP_ID=e.MGR_ID);`1`