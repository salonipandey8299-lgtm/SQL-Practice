create database ecommerce;
create table customer #parent table
(
name varchar(200) not null,
email varchar(200) primary key,
mobile bigint,
gender enum('Male','Female')
);
#now store multi-valued attribute of customer
create table tbl_address  #child table
(
id int auto_increment primary key,
address text not null,
pincode int not null,
city varchar(100),
landmark varchar(200),
customer_email varchar(200),
foreign key (customer_email) references customer(email)
on delete cascade on update cascade
);

insert into customer values('Ram','ram@gmail.com', 987654321,'Male'),
('Gaurav','gaurav@gmail.com',8734569, 'Male'),
('Riya','riya@gamil.com',345678912,'Female'),
('Chhavi','chhavi@gmail.com',456789123,'Female');
insert into tbl_address(address,pincode,city,landmark,customer_email) values
('Vikas nagar Lucknow',12345,'Luckonow',null,'ram@gmail.com'),
('Prabhat nagar Ayodhya',12345,'Ayodhya',null,'gaurav@gmail.com'),
('Indra nagar Lucknow',12345,'Luckonow',null,'riya@gamil.com'),
('prabhat nagar Ayodhya',12345,'Ayodhya',null,'chhavi@gmail.com');

select*from customer;
select*from tbl_address;
select * from tbl_address inner join customer on customer.email = tbl_address.customer_email;

/*
#2. Create the following tables with Primary Key (PK) and Foreign Key (FK):
 Categories(CategoryID PK, CategoryName)
 Products(ProductID PK, CategoryID FK, ProductName, Price, Stock)
 Customers(CustomerID PK, Name, Email, Phone)
 Orders(OrderID PK, CustomerID FK, OrderDate, TotalAmount, Status)
 OrderItems(OrderItemID PK, OrderID FK, ProductID FK, Quantity, Price)
 ProductImages(ImageID PK, ProductID FK, ImageURL)
 Reviews(ReviewID PK, ProductID FK, CustomerID FK, Rating, Comment)
Instructions
1. Create all tables using appropriate constraints.
2. Insert at least 5 records into each table.
3. Maintain parent-child relationships using foreign keys.*/
create table  Categories
(
categoryID int primary key,
categoryName varchar(100) not null
);
create table products
(
productID int primary key,
category_ID int,
foreign key (category_ID) references Categories(categoryID),
productName varchar(100),
price int,
stock bigint
);
create table Customers
(
customerID int  primary key,
name varchar(100),
phone bigint,
email varchar(100) not null
);
create table orders
(
orderID int auto_increment primary key,
customer_ID int ,
foreign key (customer_ID) references Customers(customerID),
orderDate date,
totalAmount int,
status varchar(100)
);
create table OrderItems
(
orderitemID int primary key,
order_ID int,
foreign key (order_ID) references orders(orderID),
product_ID int,
foreign key (product_ID) references products(productID),
quality varchar(100),
price int
);
create table productImage
(
imageID int primary key,
productid int,
foreign key (productid) references products(productID),
imageURL varchar(200)
);
create table Reveiws
(
reviewID int primary key,
proID int,
foreign key (proID) references products(productID),
customerid int,
foreign key (customerid) references Customers(customerID),
rating varchar(100),
comment varchar(200)
);
INSERT INTO Categories (categoryID, categoryName) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home Appliances'),
(5, 'Sports');
INSERT INTO Products (productID, category_ID, productName, price, stock) VALUES
(101, 1, 'Laptop', 55000, 20),
(102, 2, 'T-Shirt', 799, 100),
(103, 3, 'Java Book', 650, 50),
(104, 4, 'Microwave', 8500, 15),
(105, 5, 'Football', 1200, 40);
INSERT INTO Customers (customerID, name, phone, email) VALUES
(1, 'Rahul Sharma', 9876543210, 'rahul@gmail.com'),
(2, 'Priya Singh', 9876543211, 'priya@gmail.com'),
(3, 'Amit Verma', 9876543212, 'amit@gmail.com'),
(4, 'Neha Gupta', 9876543213, 'neha@gmail.com'),
(5, 'Rohan Mishra', 9876543214, 'rohan@gmail.com');
INSERT INTO Orders (customer_ID, orderDate, totalAmount, status) VALUES
(1, '2026-07-01', 55000, 'Delivered'),
(2, '2026-07-02', 799, 'Pending'),
(3, '2026-07-03', 650, 'Delivered'),
(4, '2026-07-04', 8500, 'Shipped'),
(5, '2026-07-05', 1200, 'Cancelled');
INSERT INTO OrderItems (orderitemID, order_ID, product_ID, quality, price) VALUES
(1, 1, 101, 'High', 55000),
(2, 2, 102, 'Medium', 799),
(3, 3, 103, 'High', 650),
(4, 4, 104, 'High', 8500),
(5, 5, 105, 'Medium', 1200);
INSERT INTO ProductImage (imageID, productID, imageURL) VALUES
(1, 101, 'laptop.jpg'),
(2, 102, 'tshirt.jpg'),
(3, 103, 'javabook.jpg'),
(4, 104, 'microwave.jpg'),
(5, 105, 'football.jpg');
INSERT INTO Reveiws (reviewID, proID, customerID, rating, comment) VALUES
(1, 101, 1, '5', 'Excellent Laptop'),
(2, 102, 2, '4', 'Good Quality'),
(3, 103, 3, '5', 'Very Helpful Book'),
(4, 104, 4, '3', 'Average Product'),
(5, 105, 5, '4', 'Worth Buying');


#Join Practice Tasks
#1. Display ProductName with CategoryName.
select productName, categoryName from products inner join categories on products.category_ID = categories.categoryID;
#2. Display Customer Name with Order Date.
select name, orderDate from customers inner join orders on customers.customerID = orders.customer_ID;
#3. Display Order ID, Product Name and Quantity.
select order_ID, productName, quality from orderitems inner join products on orderitems.product_ID = products.productID;
#4. Display Product Name with Image URL.
select productname, imageurl from products inner join productimage on products.productid = productimage.productid;
#5. Display Product Name, Customer Name and Rating.
select productname, name, rating from reveiws inner join products on reveiws.proid = products.productid inner join customers on reveiws.customerid = customers.customerid;
#6. Show all customers with their orders (LEFT JOIN).
select customerid, name, orderid, orderdate, status from customers left join orders on customers.customerid = orders.customer_id;
#7. Show all products even if no reviews exist (LEFT JOIN).
select productname, rating, comment from products left join reveiws on products.productid = reveiws.proid;
#8. Show all orders with customer details.
select orderid, orderdate, totalamount, status, customerid, name, phone, email from orders inner join customers on orders.customer_id = customers.customerid;
#9. Show order total with customer email.
select orderid, totalamount, email from orders inner join customers on orders.customer_id = customers.customerid;
#10. Display reviews with product and customer names.
select * from reveiws inner join products on reveiws.proid = products.productid 
inner join customers 
on reveiws.customerid = customers.customerid;


#day 8
create table  tbl_categories
(
categoryID int auto_increment primary key,
categoryName varchar(100) not null
);
create table tbl_products
(
productID int primary key auto_increment,
category_ID int ,
foreign key (category_ID) references tbl_categories(categoryID) on delete set null on update cascade,
productName varchar(100),
price int,
stock bit
);
insert into tbl_categories (categoryName) values('Cloths'),('Grocery'),('Furniture');
insert into tbl_products (category_ID, productName,price,stock)
 value(1,'Tshirt',2500,1),(1,'shirt',2000,1),(1,'suit',5000,1),(2,'salt',50,1),(2,'sugar',40,1);
update tbl_categories set categoryID=5 where categoryID=2;
delete from tbl_products where productName='suit';
delete from tbl_categories where categoryID=1;
#inner join
select*from tbl_categories inner join tbl_products on tbl_categories.categoryID= tbl_products.category_ID;
#left join
select*from tbl_products left join tbl_categories on tbl_categories.categoryID= tbl_products.category_ID;