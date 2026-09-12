create database day3db;

# 1 Student table
create table Students
(
ID int primary key,
Name varchar(50) not null,
Age int,
Grade varchar(20) not null
);
insert into Students (ID, NAme,Age, Grade)value
(1,'Anvi',15, '10th'),
(2, 'Mahi', 14,'9th'),
(3,'Kabir' ,16,'11th'),
(4, 'Meera',15,'12th');
# 	Display the ID and Name of all students.
select ID,Name from Students;
#	Show the students whose Age is less than 16
select * from Students where Age<16;
#	Display the Name and Age of students studying in '11th' grade.
select Name, Age from Students where Grade='11th';
#	Display the Age of all students
select Age from Students;
#	Show the Name of all students.
select Name from Students;

#day5
set sql_safe_updates=0;
#Update the grade of student Anvi from 10th to 11th.
update Students set Grade='11th' where Name = 'Anvi';
# Update the age of student whose ID = 2 to 15.
update Students set Age=15 where ID= 2;
# Delete the record of the student named Kabir.
delete from Students where Name= 'Kabir';
# Add a new column City with datatype VARCHAR(50) to the Students table.
alter table Students add City varchar(50);
# Truncate the Students table.
truncate table Students;
select*from Students;


# 2 Books Table
Create table Books
(
Book_ID int auto_increment primary key,
Title varchar(100),
Author varchar(50),
Price int 
);
insert into Books(Title, Author,Price) value 
('The Alchemist','Paulo Coelho',299),
('Wings of Fire','A.P.J. Abdul Kalam',350),
('1984','George Orwell',280),
('Think Like a Monk','Jay Shetty',400);
#•	Display the books whose price is 350.
select * from Books where price=350;
#•	Show the title and author of books costing less than 350.
select Title, Author from Books where Price>350;
#•	Find the books whose price is between 280 and 350.
select Title from Books where price between 280 and 350;
#•	Display the books with prices 299 and 400.
select Title, Price from Books where Price in (299,400);
#•	Show all books except those priced at 280 and 350. 
select*from Books where Price not in(280,350);

#day5
set sql_safe_updates=0;
# Update the price of The Alchemist to 350.
update Books set price=350 where Title= 'The Alchemist';
# Update the author of 1984.
update Books set Author= 'RR' where Title='1984';
# Delete the book whose BookID = 4.
delete from Books where Book_ID=4;
# Add a column Publisher VARCHAR(100) to the Books table.
alter table Books add Publisher varchar(100);
# Truncate the Books table.
truncate table Books;

# 3 Employees table
create table Employees(
Empid int primary key,
Name varchar(50),
Department varchar(100),
Salary int
);
insert into  Employees(Empid,Name,Department,Salary)
values(1,'Rahul','Sales',30000),
(2,'Sneha','HR',40000),
(3,'Amit','IT',50000),
(4,'Pooja','Finance',45000);
#	Display the employees whose salary is greater than 40000.
select Name from Employees where salary>4000;
#Show the names of employees whose salary is less than or equal to 45000.
Select Name from Employees where salary<=45000;
#Find the employees whose salary is between 30000 and 45000.
Select Name from Employees where salary between 30000 and 45000;
#Display the employees working in Sales and HR departments.
select Name from Employees where Department in('Sales','HR');
#Show the employees who are not working in the IT department.
select Name from Employees where Department not in('IT');

#day5
set sql_safe_updates=0;
# Update the salary of employee Rahul to 35000.
update Employees set salary=35000 where Name='Rahul';
# Change the department of Sneha from HR to Admin.
update Employees set Department='Admin' where Name='Sneha';
# Delete the employee working in the Finance department.
delete from Employees where Department='Finance';
# Add a new column Email VARCHAR(100) to the Employees table.
alter table Employees add Email varchar(100);
# Truncate the Employees table.
truncate table Empoyees;

#4 Orders table
create table Orders(
OrderID int primary key,
CustomerName varchar(100),
OrderDateTime datetime
);
insert into Orders(OrderID,CustomerName,OrderDateTime)
values(1,'Ankit','2024-01-10 10:30:00'),
(2,'Priya','2024-02-15 14:45:00'),
(3,'Rohan','2024-03-05 09:20:00'),
(4,'Sneha','2024-03-21 12:00:00');
#Display the orders placed after 2024-02-01.
select * from Orders where OrderDateTime>'2024-02-01';
#Show the orders placed before 2024-03-01.
select * from Orders where OrderDateTime<'2024-03-01';
#Find the orders placed between 2024-02-01 and 2024-03-31.
select * from Orders where OrderDateTime between '2024-02-01' and '2024-03-31';
#Display the orders placed by Ankit and Sneha.
select * from Orders where CustomerName in('Ankit','Sneha');
select * from Orders where CustomerName='Ankit' or CustomerName='Sneha';
#Show the orders not placed by Priya and Rohan
select * from Orders where CustomerName not in('Priya','Rohan');

#day5
set sql_safe_updates=0;
#Update the order date of OrderID = 2.
update Orders set OrderDateTime='2024-03-25 11:30:00';
#• Change the customer name from Rohan to Rohit.
update Orders set CustomerName='Rohit' where CustomerName='Rohan';
#• Delete the order placed by Sneha.
delete from Oredrs where CustomerName='Sneha';
#• Add a new column Status VARCHAR(20) to the Orders table.
alter table Orders add Status varchar(20);
#• Truncate the Orders table.
truncate table Orders;

# 5.	Products Table
create table Products
(
ProductID int auto_increment primary key,
ProductName varchar(70) not null,
Category varchar(50),
Price int 
);
insert into Products(ProductName,Category,Price) value
('pen','Stationery',10),
('leptop','Electronics',55000),
('chair','Furniture',1200),
('bottle','Kitchen',150);

#•	Display the products whose price is greater than 500.
select ProductName from products where Price >500;
#•	Show the products whose price is less than or equal to 1200.
select ProductName from products where price<=1200;
#•	Find the products whose price is between 100 and 2000.
select ProductName from Products where price between 100 and 200;
#•	Display the products in the Electronics and Furniture categories.
select * from Products where Category in ('Electronics', 'Furniture');

#day5
set sql_safe_updates=0;
#• Update the price of Laptop to 60000.
update products set Price=60000 where ProductName='leptop';
#• Change the category of Bottle from Kitchen to Home Essentials.
update products set Category= 'Home Essentials' where ProductName='bottel';
#• Delete the product named Chair.
delete from products where ProductName='chair';
#• Add a column Stock INT to the Products table.
alter table products add Stock int;
#• Truncate the Products table
truncate table products;








