#1. Perform the following tasks using GROUP BY and HAVING clauses.
create database day7db;
CREATE TABLE candidates
(
id INT PRIMARY KEy auto_increment,
name VARCHAR(100),
college VARCHAR(100),
phone VARCHAR(15),
city VARCHAR(50),
department VARCHAR(50),
fees DECIMAL(10, 2),
year INT,
dob DATE);
INSERT INTO candidates (name, college, phone, city, department, fees, year, dob) VALUES
('Alice Johnson', 'ABC University', '1234567890', 'New York', 'Computer Science', 1500.00, 2025, '2003-05-15'),
('Bob Smith', 'XYZ College', '1234567891', 'Los Angeles', 'Mechanical Engineering', 1600.00, 2025, '2002-08-22'),
('Charlie Brown', 'LMN Institute', '1234567892', 'Chicago', 'Electrical Engineering', 1550.00, 2025, '2003-01-10'),
('Diana Prince', 'PQR University', '1234567893', 'Houston', 'Civil Engineering', 1620.00, 2024, '2002-12-30'),
('Ethan Hunt', 'STU College', '1234567894', 'Phoenix', 'Information Technology', 1580.00, 2025, '2003-03-25'),
('Fiona Apple', 'GHI University', '1234567895', 'Philadelphia', 'Biotechnology', 1650.00, 2024, '2002-09-18'),
('George Clooney', 'JKL Institute', '1234567896', 'San Antonio', 'Physics', 1500.00, 2025, '2003-07-07'),
('Hannah Montana', 'MNO College', '1234567897', 'San Diego', 'Mathematics', 1525.00, 2024, '2002-11-11'),
('Ian Malcolm', 'RST University', '1234567898', 'Dallas', 'Chemistry', 1575.00, 2025, '2003-04-04'),
('Julia Roberts', 'UVW College', '1234567899', 'San Jose', 'Economics', 1610.00, 2024, '2002-06-14'),
('Kevin Spacey', 'XYZ University', '1234567800', 'Austin', 'Business Administration', 1590.00, 2025, '2003-02-20'),
('Laura Croft', 'ABC Institute', '1234567801', 'Jacksonville', 'Graphic Design', 1540.00, 2024, '2002-10-30'),
('Ursula K. Le Guin', 'DEF Institute', '1234567810', 'Milwaukee', 'Literature Studies', 1550.00, 2025, '2003-04-11'),
('Victor Hugo', 'GHI University', '1234567811', 'Memphis', 'History Studies', 1620.00, 2024, '2002-09-29'),
('Walt Disney', 'JKL College', '1234567812', 'Baltimore', 'Animation Studies', 1515.00, 2025, '2003-03-10'),
('Xena Warrior Princess', 'MNO Institute', '1234567813', 'Colorado Springs', 'Martial Arts Studies', 1580.00, 2024, '2002-11-23'),
('Yoda Jedi Master', 'RST University', '1234567814', 'Albuquerque', 'Philosophy Studies', 1640.00, 2025, '2003-02-14'),
('Zoe Saldana', 'UVW College', '1234567815', 'Tucson', 'Dance Studies', 1560.00, 2024, '2002-10-05'),
('Aaron Paul', 'XYZ Institute', '1234567816', 'Fresno', 'Psychology Studies', 1530.00, 2025, '2003-07-17'),
('Bella Swan', 'ABC University', '1234567817', 'Sacramento', 'Biochemistry Studies', 1615.00, 2024, '2002-12-24'),
('Chris Hemsworth', 'DEF College', '1234567818', 'Kansas City', 'Astrophysics Studies', 1599.99, 2025, '2003-01-01'),
('Daisy Ridley', 'GHI Institute', '1234567819', 'Long Beach', 'Environmental Science Studies', 1549.50, 2024, '2002-04-16'),
('Elijah Wood', 'JKL University', '1234567820', 'Virginia Beach', 'Creative Writing Studies', 1501.75, 2025, '2003-08-19'),
('Freddie Mercury', 'MNO College', '1234567821', 'Atlanta', 'Sociology Studies', 1637.30, 2024, '2002-11-28'),
('Gandalf the Grey', 'RST Institute', '1234567822', 'Colorado Springs', 'Theology Studies', 1566.80, 2025, '2003-02-20'),
('Olivia Benson', 'ABC University', '1234567830', 'New York', 'Criminal Justice', 1450.00, 2025, '2003-01-15'),
('Peter Parker', 'XYZ College', '1234567831', 'Los Angeles', 'Photography', 1580.00, 2025, '2002-07-20'),
('Quinn Fabray', 'LMN Institute', '1234567832', 'Chicago', 'Theater Arts', 1500.00, 2024, '2002-10-25'),
('Rick Grimes', 'PQR University', '1234567833', 'Houston', 'Emergency Management', 1600.00, 2025, '2003-04-12'),
('Samantha Carter', 'STU College', '1234567834', 'Phoenix', 'Astrophysics', 1650.00, 2024, '2002-05-30'),
('Tony Stark', 'GHI University', '1234567835', 'Philadelphia', 'Engineering Management', 1700.00, 2025, '2003-06-15'),
('Uma Thurman', 'JKL Institute', '1234567836', 'San Antonio', 'Film Studies', 1550.00, 2024, '2002-09-10');
#Questions using the GROUP BY clause:
#1. Find the number of candidates per year
select count(*), year from candidates group by year;
#2. Show total fees per department.
select sum(fees), department from candidates group by department;
#3. Retrieve average fees paid by candidates from each city.
select avg(fees), city from candidates group by city;
#4. Find the number of candidates per college.
select count(*), college from candidates group by college;
#5. Show the minimum fees paid by candidates from each department.
select min(fees), department from candidates group by department; 

#Questions using the HAVING clause:
#1. List cities with fewer than 3 candidates.
select count(*), city from candidates group by city having count(*)<3;
#2. Show colleges with total fees over 5000.00.
select college, sum(fees) from candidates group by college having sum(fees)>5000.00;
#3. Retrieve departments with an average fee below 1600.00.
select college, sum(fees) from candidates group by college having sum(fees)<1600.00;
#4. Find years with more than 5 candidates.
select count(*), year from candidates group by year having count(*)>5;
#5. Show colleges where the maximum fee is less than 1650.00.
select college , max(fees) from candidates group by college having max(fees)>1650.00;

-- 1.Scenario: Online Shopping System 
-- Parent Table: Customers 
-- Child Table: Orders
-- Relationship: One Customer can place many Orders. 
-- Task 1:Create the Parent Table
 CREATE TABLE Customers
 ( 
 CustomerID INT PRIMARY KEY, 
 CustomerName VARCHAR(50), 
 City VARCHAR(30),
 Phone VARCHAR(15)
 ); 
 -- Task 2: Create the Child Table
 CREATE TABLE Orders 
 ( 
 OrderID INT PRIMARY KEY,
 CustomerID INT, 
 ProductName VARCHAR(50), 
 Quantity INT, Price DECIMAL(10,2),
 OrderDate DATE, 
 FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE ON UPDATE CASCADE
 );
 -- Task 3: Insert Records into Customers Table
 INSERT INTO Customers VALUES
 (101,'Rahul Sharma','Lucknow','9876543210'),
 (102,'Priya Singh','Delhi','9876543211'),
 (103,'Amit Verma','Kanpur','9876543212'),
 (104,'Neha Gupta','Noida','9876543213'),
 (105,'Rohan Mishra','Agra','9876543214'), 
 (106,'Anjali Kapoor','Jaipur','9876543215'); 
 -- Task 4: Insert Records into Orders Table 
 INSERT INTO Orders VALUES 
 (1001,101,'Laptop',1,55000,'2026-07-01'), 
 (1002,101,'Mouse',2,800,'2026-07-02'),
 (1003,102,'Keyboard',1,1500,'2026-07-03'),
 (1004,103,'Monitor',1,12000,'2026-07-05'), 
 (1005,103,'Printer',1,9000,'2026-07-06'), 
 (1006,105,'Headphones',2,2500,'2026-07-08');
 -- Practice Questions 
 -- A. Basic Retrieval 
 -- 1. Display all records from the Customers table.
select*from customers;
 -- 2. Display all records from the Orders table.
 select*from orders;
 -- 3. Display only Customer Name and City.
 select CustomerName, City from customers;
 -- 4. Display Product Name and Price.
 select Productname, Price from orders;
 -- 5. Display all orders placed after 2026-07-03. 
 select * from orders where OrderDate >'2026-07-03'; 
 
 -- B. INNER JOIN 
 -- 1. Display Customer Name and Product Name.
  select CustomerName, ProductName from customers inner join orders on customers.CustomerID= orders.CustomerID;
 -- 2. Display Customer Name, City and Order Date.
 select CustomerName, City , OrderDate from customers inner join orders on customers.CustomerID= orders.CustomerID;
 -- 3. Display Customer Name, Product Name and Price.
  select CustomerName, ProductName, Price from customers inner join orders on customers.CustomerID= orders.CustomerID;
 -- 4. Display Customer Phone Number with Product Name. 
  select CustomerName, ProductName, Phone from customers inner join orders on customers.CustomerID= orders.CustomerID;
 -- 5. Display all customers who have placed orders.
  select * from customers inner join orders on customers.CustomerID= orders.CustomerID;

-- C. LEFT JOIN
-- 1. Display all customers along with their orders.
  select * from customers left join orders on customers.CustomerID= orders.CustomerID;
-- 2. Find customers who have not placed any order.
select *from customers left join orders on customers.customerID = orders.customerID where orders.customerID is null;
-- 3. Display Customer Name and Product Name (if available).
select customername, productname from customers left join orders on customers.customerid = orders.customerid;
-- 4. Display all customers even if they have no orders. 
select * from customers left join orders on customers.customerid = orders.customerid; 
-- D. RIGHT JOIN 
-- 1. Display all orders with customer details.
select * from  customers right join orders  on customers.customerid = orders.customerid ; 
-- 2. Display every order even if customer information is unavailable. 
select * from  customers right join orders  on customers.customerid = orders.customerid ;

-- E. Filtering with JOIN
-- 1. Display orders placed by customers from Lucknow.
 select * from customers inner join orders on customers.CustomerID= orders.CustomerID where customers.City='Lucknow';
-- 2. Display customers who purchased a Laptop.
select * from customers inner join orders on customers.CustomerID= orders.CustomerID where orders.ProductName='Laptop';
-- 3. Display products costing more than ₹5000 with customer names.
select Customername, Price from customers inner join orders on customers.CustomerID= orders.CustomerID where orders.Price>5000;
-- 4. Display customers whose names start with R along with their orders.
select Customername from customers inner join orders on customers.CustomerID= orders.CustomerID where customers.CustomerName like 'R%';
-- 5. Display orders placed between 2026-07-02 and 2026-07-06. 
select * from customers inner join orders on customers.CustomerID= orders.CustomerID where orders.OrderDate between '2026-07-02' and '2026-07-06';

-- F. Aggregate Functions with JOIN
-- 1. Count the number of orders placed by each customer.
select count(*) , customername from customers inner join orders on customers.CustomerID= orders.CustomerID group by Customername ;
-- 2. Display the total amount spent by each customer.
select sum(Price), customername from customers inner join orders on customers.CustomerID= orders.CustomerID group by Customername;
-- 3. Display the average order amount for each customer.
select avg(Price),customername from customers inner join orders on customers.CustomerID= orders.CustomerID group by Customername;
-- 4. Find the highest-priced product purchased by each customer.
select max(Price),customername from customers inner join orders on customers.CustomerID= orders.CustomerID group by Customername;
-- 5. Find customers who placed more than one order. 
select customername ,count(orderid) from customers inner join orders on customers.customerid = orders.customerid group by customername having count(orderid) > 1;

-- G. Sorting
-- 1. Display all orders sorted by price in descending order.
select * from orders order by price  desc;
-- 2. Display customer names in alphabetical order with their products.
select CustomerName ,ProductName from  customers inner join orders on customers.customerid = orders.customerid order by customers.Customername asc;
-- 3. Display orders sorted by Order Date.
select * from orders order by OrderDate  asc;
 -- 4. Display customers sorted by city. 
 select * from customers order by city;
 
-- H. Advanced JOIN Practice
-- 1. Find customers who purchased more than one different product.
select customername from customers inner join orders on customers.customerid = orders.customerid group by customername having count(distinct productname) > 1;
-- 2. Display the total revenue generated from all orders.
select sum(price * quantity) as total_revenue from orders;
-- 3. Find the city with the highest sales amount.
select city, sum(price * quantity) as total_sales from customers inner join orders on customers.customerid = orders.customerid group by city order by total_sales desc limit 1;
-- 4. Display customers who spent more than ₹10,000.
select customername, sum(price * quantity) as total_spent from customers inner join orders on customers.customerid = orders.customerid group by customername having sum(price * quantity) > 10000;
-- 5. Display the customer who placed the most orders.
select customername, count(orderid) as total_orders from customers inner join orders on customers.customerid = orders.customerid group by customername order by total_orders desc limit 1;
-- 6. Find the customer who purchased the most expensive product. 
select customername, productname, price from customers inner join orders on customers.customerid = orders.customerid where price = (select max(price) from orders);

-- I. Foreign Key Practice (ON DELETE & ON UPDATE)
-- 1. Update CustomerID = 101 to 201. Verify that the CustomerID is automatically updated in the Orders table.
update customers set customerid = 201 where customerid = 101;
-- 2. Delete the customer with CustomerID = 103. Verify that all related orders are automatically deleted.
delete from customers where customerid = 103;
-- 3. Insert a new customer and place two orders for that customer.
insert into customers values (107, 'vikas kumar', 'varanasi', '9876543216');
-- 4. Display the updated records from both tables after performing task 1 to 4. 
insert into orders values
(1007, 107, 'tablet', 1, 20000, '2026-07-10'),
(1008, 107, 'speaker', 2, 3000, '2026-07-11');


#2.Scenario: Online Shopping System
# Parent Table: City 
#Child Table: Customer 
#Relationship: One City → Many Customers 
#Task 1: Create the Parent Table (City)
 CREATE TABLE City (
 CityID INT PRIMARY KEY,
 CityName VARCHAR(50),
 PinCode VARCHAR(10), 
 StateName VARCHAR(50),
 CountryName VARCHAR(50)
 );
 #Task 2: Create the Child Table (Customer)
 CREATE TABLE tb_Customer ( 
 CustomerID INT PRIMARY KEY, 
 CustomerName VARCHAR(50), 
 Gender VARCHAR(10), 
 Age INT,
 Phone VARCHAR(15),
 Email VARCHAR(100),
 CityID INT,
 FOREIGN KEY (CityID) REFERENCES City(CityID) ON DELETE CASCADE ON UPDATE CASCADE
 ); 
 #Task 3: Insert Records into City Table
 INSERT INTO City VALUES (1,'Lucknow','226001','Uttar Pradesh','India'), 
 (2,'Delhi','110001','Delhi','India'),
 (3,'Jaipur','302001','Rajasthan','India'), 
 (4,'Kanpur','208001','Uttar Pradesh','India'),
 (5,'Mumbai','400001','Maharashtra','India'),
 (6,'Bhopal','462001','Madhya Pradesh','India');
 #Task 4: Insert Records into Customer Table
 INSERT INTO tb_Customer VALUES (101,'Rahul Sharma','Male',25,'9876543210','rahul@gmail.com',1),
 (102,'Priya Singh','Female',23,'9876543211','priya@gmail.com',2),
 (103,'Amit Verma','Male',28,'9876543212','amit@gmail.com',1), 
 (104,'Neha Gupta','Female',24,'9876543213','neha@gmail.com',4), 
 (105,'Rohan Mishra','Male',27,'9876543214','rohan@gmail.com',5),
 (106,'Anjali Kapoor','Female',22,'9876543215','anjali@gmail.com',3), 
 (107,'Karan Mehta','Male',30,'9876543216','karan@gmail.com',1); 
#Practice Questions
# A. Basic Retrieval 
#1. Display all records from the City table.
select * from city;
# 2. Display all records from the Customer table. 
select * from tb_customer;
#3. Display only City Name and State Name. 
select cityname, statename from city;
#4. Display Customer Name and Phone Number.
select customername, phone from tb_customer;
# 5. Display customers whose age is greater than 25. 
select customername, phone from tb_customer;

#B. INNER JOIN
# 1. Display Customer Name and City Name. 
select customername, cityname from tb_customer inner join city on tb_customer.cityid = city.cityid;
#2. Display Customer Name, City Name and State Name. 
select customername, cityname, statename from tb_customer inner join city on tb_customer.cityid = city.cityid;
#3. Display Customer Name, Country Name and Phone Number.
select customername, countryname, phone from tb_customer inner join city on tb_customer.cityid = city.cityid;
# 4. Display Customer Name, Pin Code and Email.
select customername, pincode, email from tb_customer inner join city on tb_customer.cityid = city.cityid;
# 5. Display all customers along with their city details.
select * from tb_customer inner join city on tb_customer.cityid = city.cityid;

# C. LEFT JOIN
# 1. Display all cities along with their customers.
select cityname, customername from city left join tb_customer on city.cityid = tb_customer.cityid;
# 2. Find cities that have no customers.
select cityname from city left join tb_customer on city.cityid = tb_customer.cityid where customerid is null;
# 3. Display City Name and Customer Name (if available). 
select cityname, customername from city left join tb_customer on city.cityid = tb_customer.cityid;
#4. Display all cities even if no customer belongs to them.
select * from city left join tb_customer on city.cityid = tb_customer.cityid;


# D. RIGHT JOIN
# 1. Display all customers with city details. 
select * from city right join tb_customer on city.cityid = tb_customer.cityid;
#2. Display every customer even if city information is unavailable.
select customername, cityname, statename from city right join tb_customer on city.cityid = tb_customer.cityid;


# E. Filtering with JOIN
# 1. Display customers from Lucknow. 
select customername from tb_customer inner join city on tb_customer.cityid = city.cityid where cityname = 'Lucknow';
#2. Display customers belonging to Uttar Pradesh.
select customername from tb_customer inner join city on tb_customer.cityid = city.cityid where statename = 'Uttar Pradesh';
# 3. Display customers from India.
select customername from tb_customer inner join city on tb_customer.cityid = city.cityid where countryname = 'India';
# 4. Display customers whose names start with A along with their city.
select customername, cityname from tb_customer inner join city on tb_customer.cityid = city.cityid where customername like 'A%';
# 5. Display customers from cities having Pin Code 226001.
select customername from tb_customer inner join city on tb_customer.cityid = city.cityid where pincode = '226001';

# F. Aggregate Functions with JOIN
# 1. Count the number of customers in each city. 
select cityname, count(customerid) from city left join tb_customer on city.cityid = tb_customer.cityid group by cityname;
#2. Count the number of customers in each state.
select statename, count(customerid) from city left join tb_customer on city.cityid = tb_customer.cityid group by statename;
# 3. Display the average age of customers in each city.
select cityname, avg(age) from city inner join tb_customer on city.cityid = tb_customer.cityid group by cityname;
# 4. Display the maximum age of customers in each city.
select cityname, max(age) from city inner join tb_customer on city.cityid = tb_customer.cityid group by cityname;
# 5. Find cities having more than one customer.
select cityname, count(customerid) from city inner join tb_customer on city.cityid = tb_customer.cityid group by cityname having count(customerid) > 1;

# G. Sorting
# 1. Display customers sorted by name.
select * from tb_customer order by customername;
# 2. Display cities sorted by State Name.
select * from city order by statename;
# 3. Display customers sorted by age (highest first). 
select * from tb_customer order by age desc;
#4. Display cities sorted alphabetically.
select * from city order by cityname;

# H. Advanced JOIN Practice
# 1. Find the city having the highest number of customers. 
select cityname, count(customerid) from city inner join tb_customer on city.cityid = tb_customer.cityid group by cityname order by count(customerid) desc limit 1;
#2. Find the state having the maximum customers. 
select statename, count(customerid) from city inner join tb_customer on city.cityid = tb_customer.cityid group by statename order by count(customerid) desc limit 1;
#3. Display all customers living in the same city. 
select statename, count(customerid) from city inner join tb_customer on city.cityid = tb_customer.cityid group by statename order by count(customerid) desc limit 1;
#4. Find cities where more than two customers live. 
select cityname, count(customerid) from city inner join tb_customer on city.cityid = tb_customer.cityid group by cityname having count(customerid) > 2;
#5. Display the youngest customer from each city. 
select cityname, customername, age from city inner join tb_customer on city.cityid = tb_customer.cityid where (city.cityid, age) in (select cityid, min(age) from tb_customer group by cityid);
#6. Display the oldest customer from each city. 
select cityname, customername, age from city inner join tb_customer on city.cityid = tb_customer.cityid where (city.cityid, age) in (select cityid, max(age) from tb_customer  group by cityid);

#I. Foreign Key Practice (ON DELETE & ON UPDATE) 
#1. Update CityID = 1 to 10 in the City table and verify that the Customer table is automatically updated because of ON UPDATE CASCADE. 
update city set cityid = 10 where cityid = 1;
#2. Delete the city with CityID = 4 and verify that all customers belonging to that city are automatically deleted because of ON DELETE CASCADE. 
delete from city where cityid = 4;
#3. Insert a new city and add two customers belonging to that city. 4. Display the updated records from both tables after performing Tasks 1-4. 
insert into city values (7, 'Patna', '800001', 'Bihar', 'India');
insert into tb_customer
values(108, 'Riya Kumari', 'Female', 23, '9876543217', 'riya@gmail.com', 7),
(109, 'Sohan Kumar', 'Male', 26, '9876543218', 'sohan@gmail.com', 7);
select * from city;
select * from tb_customer;