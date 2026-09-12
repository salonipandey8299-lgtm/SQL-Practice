create database Day1DB;
 create table Hospitals
 (
 Hospital_ID int primary key ,
 Hospital_Name varchar(70),
 City varchar(50),
 Total_Beds int unique
 );
 insert into Hospitals value (1, 'Apex hospital', 'lucknow', 15);
 create table Doctors
 (
 Doctor_id int primary key,
 doctor_name varchar(50),
 speciallization varchar(50),
 experience int,
 Salary int
 );
 insert into Doctors value(1001, 'Dr SS patel', 'Mentalhealth', 3,40000 );
 create table Patients 
 (
 patients_id int primary key,
 patients_name varchar(50),
 age int,
 gender enum('male','female'),
 phone_no bigint,
 address varchar(70)
 );
 insert into Patients value(101, 'sal', 20, 'male',1234567819, 'bkt');
 create table Movies
 (
 movie_id varchar(20),
 title varchar(50),
 director varchar (50),
 release_date date,
 rating int
 );
 insert into Movies value (123, 'sss' ,'xyz', '2026-11-20', 12);
 create table Libraries(
 LibraryID varchar(50),
 Library_name varchar(50),
 City varchar(20),
 TotalBooks Int,
 ContactNo Int
 );
 create table Vehicles(
 VehicleID varchar(50),
 VehicleName varchar(50),
 Brand varchar(50),
 ModelYear int,
 Price int,
 colour varchar(20)
 );
 create table Airlines(
 AirlineID varchar(50),
 AirlineName varchar(50),
 Country varchar(20),
 TotalFlights int
 );
 create table Flights(
 FlightID varchar(50),
 FlightName varchar(50),
 FSource varchar(50),
 Destination varchar(50),
 DepartureTime datetime
 );
 create table Schools
 (
 school_id int primary key,
 school_name varchar(70),
 principal_name varchar(30),
 city varchar(50),
 total_student int
 );
 create table Exams 
 (
 exam_id int primary key,
 exam_name varchar(50),
 subject_name varchar(30),
 total_marks int,
 exam_date datetime
 );
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    ManagerName VARCHAR(100),
    Budget DECIMAL(12,2)
);
CREATE TABLE Sellers (
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    Email VARCHAR(100),
    Phone BIGINT,
    City VARCHAR(100)
);
CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Amount DECIMAL(10,2),
    InvoiceDate DATE,
    PaymentStatus ENUM('Paid', 'Pending', 'Cancelled')
);
CREATE TABLE Trainers (
    TrainerID INT PRIMARY KEY,
    TrainerName VARCHAR(100),
    Subject VARCHAR(100),
    Experience INT,
    Email VARCHAR(100),
    Phone BIGINT
);
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    ClientName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(12,2)
);
CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY,
    RestaurantName VARCHAR(100),
    Location VARCHAR(100),
    Cuisine VARCHAR(100),
    Rating DECIMAL(2,1)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Quantity INT,
    TotalPrice DECIMAL(10,2),
    OrderDate DATE,
    CustomerName VARCHAR(100)
);
CREATE TABLE BankAccounts (
    AccountID INT PRIMARY KEY,
    AccountHolder VARCHAR(100),
    AccountType ENUM('Savings', 'Current'),
    Balance DECIMAL(12,2),
    OpenDate DATE
);
CREATE TABLE MobilePhones (
    PhoneID INT PRIMARY KEY,
    Brand VARCHAR(100),
    Model VARCHAR(100),
    RAM VARCHAR(20),
    Storage VARCHAR(20),
    Price DECIMAL(10,2)
);
CREATE TABLE Events (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(100),
    Venue VARCHAR(100),
    EventDate DATE,
    OrganizerName VARCHAR(100),
    TicketPrice DECIMAL(10,2)
);