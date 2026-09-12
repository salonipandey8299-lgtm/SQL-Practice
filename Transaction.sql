create database day9db;
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    joining_date DATE,
    gender CHAR(1),
    age INT,
    city VARCHAR(50)
);


INSERT INTO Employee
(emp_id, emp_name, department, salary, joining_date, gender, age, city)
VALUES
(101, 'Vaibhav', 'IT', 60000.00, '2021-06-15', 'M', 25, 'Kanpur'),
(102, 'Priya', 'HR', 45000.00, '2022-01-10', 'F', 28, 'Lucknow'),
(103, 'Amit', 'IT', 72000.00, '2020-09-05', 'M', 30, 'Delhi'),
(104, 'Neha', 'Marketing', 50000.00, '2023-03-01', 'F', 26, 'Kanpur'),
(105, 'Raj', 'Finance', 55000.00, '2019-11-20', 'M', 35, 'Mumbai'),
(106, 'Simran', 'HR', 48000.00, '2021-12-12', 'F', 24, 'Lucknow'),
(107, 'Rohit', 'IT', 65000.00, '2022-07-08', 'M', 29, 'Noida');

start transaction;
delete from employee where emp_id=103;
update employee set emp_name='Vaibhav Singh' where emp_id=101;
commit;
rollback;
select*from employee;


start transaction;
delete from employee where emp_id=104;
savepoint t1;
update employee set emp_name='priya singh Singh' where emp_id=102;
commit;
rollback to t1;
rollback;

select*from employee;

select *, case when gender='M' then 'Male' 
end as 'gender1'from employee;

update employee set gender = null  where emp_id=102;
select *, case when gender='M' then 'male' else 'Female'end  as 'gender1' from employee; 

select *, case when gender='M' then 'Male'
when gender='F' then 'Female' 
end as 'gender1' from employee;

select *, case when gender='M' then 'Male'
when gender='F' then 'Female' 
else 'Unknown'
end as 'gender1' from employee;

select*from employee order by 
case when city='Mumbai' then 2 
when city='Lucknow' then 1
else 0
end desc;
set sql_safe_updates=0;
update employee set salary=case when department='IT' then 10000
when department='HR' then 80000 else salary end where department in ('IT', 'HR');
select*from employee;
update employee set salary=case when department='IT' then 10000
when department='HR' then 80000 end where department in ('IT', 'HR');

