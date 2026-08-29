CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;
 
CREATE TABLE employees (
    emp_id       INT AUTO_INCREMENT PRIMARY KEY,
    first_name   VARCHAR(50)  NOT NULL,
    last_name    VARCHAR(50)  NOT NULL,
    email        VARCHAR(100),
    department   VARCHAR(50),
    designation  VARCHAR(50),
    salary       DECIMAL(10,2),
    gender       CHAR(1),
    hire_date    DATE,
    date_of_birth DATE
);

INSERT INTO employees
(first_name, last_name, email, department, designation, salary, gender, hire_date, date_of_birth)
VALUES
('Rahul',  'Sharma',  'rahul.sharma@company.com',  'IT',        'Software Engineer', 55000.00, 'M', '2019-03-15', '1994-05-12'),
('Priya',  'Nair',    'priya.nair@company.com',    'IT',        'Senior Engineer',   85000.00, 'F', '2016-07-01', '1990-11-23'),
('Amit',   'Verma',   'amit.verma@company.com',    'HR',        'HR Executive',      42000.00, 'M', '2021-01-10', '1996-02-08'),
('Sneha',  'Iyer',    'sneha.iyer@company.com',    'HR',        'HR Manager',        75000.00, 'F', '2015-06-20', '1988-09-17'),
('Karan',  'Mehta',   'karan.mehta@company.com',   'Finance',   'Accountant',        48000.00, 'M', '2020-09-05', '1993-12-30'),
('Divya',  'Rao',     'divya.rao@company.com',     'Finance',   'Finance Manager',   92000.00, 'F', '2014-04-18', '1987-03-25'),
('Arjun',  'Kapoor',  'arjun.kapoor@company.com',  'IT',        'Software Engineer', 58000.00, 'M', '2018-11-11', '1995-07-19'),
('Neha',   'Joshi',   'neha.joshi@company.com',    'Marketing', 'Marketing Exec',    39000.00, 'F', '2022-02-14', '1998-01-05'),
('Vikram', 'Singh',   'vikram.singh@company.com',  'Marketing', 'Marketing Manager', 70000.00, 'M', '2017-08-09', '1991-06-14'),
('Anjali', 'Desai',   'anjali.desai@company.com',  'IT',        'DevOps Engineer',   62000.00, 'F', '2019-10-01', '1994-10-02');

select * from employees;
select count(*) from employees;
select min(salary) as 'lowest_salary',max(salary)as 'Highest_salary'from employees;
select avg(salary) from employees;
select sum(salary) as 'total slary' from employees;




# Show No of Employees per Department
select department,count(*) from employees group by department;

# Show Average Salary per Department
select department,round(avg(salary),2)from employees group by department;

# Show no of employees as per Department and Gender
select department ,gender,count(emp_id) from employees group by department ,gender;

# Show Departments with more than 2 Employees
select department,count(*) as 'More tahan 2 Employee' from employees group by department having count(*)>2;

# Show Departments with Average Salary above 60000
select department,avg(salary) as 'More than 60000'from employees group by department having round(avg(salary),2)>60000;

# Among employees hired after 2016, show departments with more than 1 employee
select department,count(*) from employees where hire_date>'2016,12,31' group by department having count(*)>1;


# Show Male employees only, departments with average salary above 50000
select department,avg(salary) from employees
where gender="M" 
group by department
having avg(salary)>50000;

# String Functions is used to standardize the textual data
-- Full name as one column
select concat(first_name," ",last_name) as 'full name' from employees;

-- Uppercase and lowercase
select first_name,upper(first_name) as 'Upper name',lower(last_name) as 'lower name' from employees;


-- Length of ema
select email,length(email) from employees;


-- First 3 characters of first name (e.g., generate short codes)
select first_name,substr(first_name,1,3) from employees;

-- Same result using LEFT()
select first_name,Right(first_name,3) from employees;


-- Last 10 characters of email using RIGHT()
select email,right(email,10) from employees;

-- Replace part of a string : Email address company.com to newcompany.com
select email,replace(email,'company.com','newcomapany') from employees;

-- Concatenate with a separator: First Name, Department, Designation as Summary
select first_name,department,designation,
concat_ws(" | ",first_name,department,designation)
from employees;


# Date&Time Functions
select now();
-- Current date and time
select curdate();
-- Extract year, month, day of hiring
select hire_date, year(hire_date),month(hire_date),day(hire_date) from employees;

-- Days since each employee was hired
select first_name,hire_date,datediff(curdate(),hire_date) from employees group by first_name,hire_date;

-- Calculate exact age in years using date of birth
select first_name,date_of_birth,timestampdiff(year,date_of_birth,curdate()) as 'Age of Employee' from employees;
select * from employees;
-- Years of service using TIMESTAMPDIFF
select first_name,hire_date,timestampdiff(year,hire_date,curdate()) from employees;

-- Add 5 years to hire_date (e.g., anniversary planning)
select first_name,hire_date,date_add(hire_date, interval 5 year) as 'Added year'from Employees;

-- Subtract 30 days from today
select date_sub(curdate(), interval 30 day) ;

-- Format hire_date as "15 March 2019"
select first_name,hire_date,date_format(hire_date,'%d,%M,%y') from employees; 


