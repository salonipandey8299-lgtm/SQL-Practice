create database day4db;
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
(107, 'Rohit', 'IT', 65000.00, '2022-07-08', 'M', 29, 'Noida'),
(108, 'Sneha', 'Finance', 53000.00, '2020-05-15', 'F', 31, 'Mumbai'),
(109, 'Ankit', 'Marketing', 47000.00, '2023-01-25', 'M', 27, 'Delhi'),
(110, 'Tina', 'HR', 46000.00, '2021-04-19', 'F', 22, 'Kanpur'),
(111, 'Karan', 'IT', 75000.00, '2018-08-10', 'M', 32, 'Pune'),
(112, 'Divya', 'Finance', 51000.00, '2022-03-03', 'F', 29, 'Lucknow'),
(113, 'Arjun', 'Marketing', 52000.00, '2019-06-06', 'M', 34, 'Jaipur'),
(114, 'Meena', 'HR', 44000.00, '2023-05-14', 'F', 23, 'Noida'),
(115, 'Suresh', 'IT', 71000.00, '2020-01-01', 'M', 31, 'Kanpur'),
(116, 'Alisha', 'Finance', 58000.00, '2019-09-18', 'F', 33, 'Delhi'),
(117, 'Manoj', 'Marketing', 49500.00, '2021-11-30', 'M', 36, 'Pune'),
(118, 'Pooja', 'IT', 68000.00, '2022-10-22', 'F', 26, 'Mumbai'),
(119, 'Ravi', 'Finance', 54000.00, '2023-02-17', 'M', 28, 'Kanpur'),
(120, 'Isha', 'HR', 47000.00, '2020-07-07', 'F', 27, 'Jaipur');


#Aggregations
#1.	Count the total number of employees.
#2.	Find the average salary of all employees.
#3.	Find the maximum and minimum salary in the company.
#4.	Show the total salary paid per department.
select sum(salary), department from employee group by department order by sum(salary) desc;
#5.	Count the number of employees per city.
select count(emp_name) , city from employee group by city;
#6.	Show average age per department.
select avg(age), department from employee group by department;
#7.	Find departments where average salary is greater than 50,000
select avg(Salary), department from employee  group by department having avg(Salary)>50000;

#distinct keyword
select distinct gender from Employee; 
select distinct gender,city from Employee;
select distinct department from Employee;
#select max salary of every gender
select max(salary) from employee; 
select max(salary),gender from employee group by gender; 
#select max salary for per department
select max(salary), department from employee group by department;
#select min and max age of male and female employee
select gender,min(age), max(age) from employee group by gender;
#select total number of employees per city.
select count(emp_name) , city from employee group by city;
#select max and min salary from each city
select min(salary), max(salary) , city from employee group by city;
#select min and max age of male and female employee from kanpur
select gender,min(age), max(age) from employee where city='Kanpur' group by gender;
#select those cities and no of employee where more than 2 employees are registered
select city , count(*)  from employee group by city having count(*)>1;
#select those cities from hr department having more than 1 employee
select city , count(*) from employee where department='HR' group by city  having count(*)>1;

#limit-boundation of selected no of records (pagination)
select*from employee limit 10; 
select*from employee limit 2,10; 
#select second highest salary from table
select distinct salary from employee order by salary desc limit 1,1;


