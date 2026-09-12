create database mydb1;
 create table student
 (
 stu_rollno int primary key,
 stu_name varchar(50),
 email_id varchar(100),
 mobile_no bigint,
 stu_Fee int,
 stu_gender enum('Male','Female'),
 stu_regdate datetime,
 stu_dob date
 );
 insert into student value 
 (1, "Saloni Pandey", "Salonipandey@123", 8299813088, 76000, 'Female', '2026-06-21 12:12:12','2007-07-12'),
 (2, "Riya Pandey", "Riyapandey@123", 8299812342, 76000, 'Female', '2026-06-21 12:12:12','2007-07-12'),
 (3, "Gaurav Pandey", "Gauravpandey@123", 82998130343, 76000, 'Male', '2026-06-21 12:12:12','2007-07-12');
 #syntax to supply value in specific column
 insert into student(stu_name, stu_rollno)  value('Chhavi pandey', 4);
 select *from student;
 create table tb1_employee 
 (
 emp_id int primary key,
 name varchar(30) not null,
 salary int check (salary>=1000) default 0,
 joining_date date,
 grnder enum('male', 'female'),
 email_id varchar(100) unique,
 mobile_no bigint 
 );
 insert into tb1_employee value 
 (101, 'Riya', 12000,'2026-07-12', 'female', 'riya@123gmail.com', 1234567891),
(105, 'Aman', 18000, '2026-07-15', 'male', 'aman@gmail.com', '9876543210'),
(106, 'Neha', 22000, '2026-07-16', 'female', 'neha@gmail.com', '9876543211'),
(107, 'Rahul', 25000, '2026-07-17', 'male', 'rahul@gmail.com', '9876543212'),
(108, 'Priya', 27000, '2026-07-18', 'female', 'priya@gmail.com', '9876543213'),
(109, 'Karan', 30000, '2026-07-19', 'male', 'karan@gmail.com', '9876543214'),
(110, 'Anjali', 32000, '2026-07-20', 'female', 'anjali@gmail.com', '9876543215');
 insert into tb1_employee(emp_id, name,salary) value(102,'sal',13000),(103,'ritika',14000),(104,'simran',15000);
 create table tabl_enquiry
 (
 id int auto_increment primary key,
 name varchar(50) not null,
 email_id varchar(100),
 mobile_no bigint not null,
 subject varchar(250),
 message text
 );
 insert into tabl_enquiry (name,email_id, mobile_no,subject,message)values('Ram', 'ram@gami.com',8299813088,'hello','Iwant to know');
 select email_id,mobile_no from tb1_employee;
 select *from tb1_employee;
 select *,name,salary+10000 from tb1_employee;
 #select name and email of all female employee
 select name, email_id from tb1_employee where grnder='female';
 #select all record of employee who earn more than 30000
 select *from tb1_employee where salary>=30000;
 #select all record of employee who earn less than 30000
select *from tb1_employee where salary<30000;
#select all record of employee who earn more than 30000 and all female employee
select *from tb1_employee where salary>=30000 or grnder='female';
select *from tb1_employee where salary between 20000 and 40000; 
#select all record of employee with id 102, 106, 108,107 by in opertaor
select * from tb1_employee where emp_id in (102,106,108,107);
#is not null
select *from tb1_employee where grnder is not null;

# select all employee whose name starts with a
select *from tb1_employee where  name like 'a%';

#select all employee who name end with a
select *from tb1_employee where  name like '%a';

#select all employee whose name is char 5 long
select *from tb1_employee where  name like '______';
#select all employee whosestart name a to e
select *from tb1_employee where  name like '[a-e]';

#select all employee whose joined in march month
select *from tb1_employee where  joining_date like '_____07___';
select *from tb1_employee where  joining_date like '_____07___' order by emp_id desc;

# select the maximum salary present in table 
select max(salary) from tb1_employee;

#select max salary and name of employee
select max(salary), min(salary), min(name), min(joining_date) from tb1_employee;

#how many male employee are registered
select count(*) from tb1_employee where grnder='male';


#set sql_safe_updates=0;
create table table1
(
id int auto_increment primary key,
name varchar(50),
city varchar(50),
mobile_no bigint
);
insert into table1(name, city,mobile_no) value
( 'Rahul','lucknow',8299),
('saloni','ayodhya',2134),
('Ritika','lucknow',2354);
update table1 set name='Ram' where id=1;
update table1 set name='simran' where id=3;
update table1 set name='ritika', city='ayodhya' where id=4;
set sql_safe_updates=0;
delete from table1 where name='ritika';
truncate table table1;
alter table table1 add age int ;
alter table table1 add subject varchar(50) ;
alter table table1 add marks int ;
update table1 set age=20, subject='eng', marks=50 ;
update table1 set age=21, subject='math', marks=60 where id=2 ;






 