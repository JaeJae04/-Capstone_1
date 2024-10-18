Create database business_operations;
USE business_operations;

# creating a table for customers Pii

CREATE TABLE customer_info (
	customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone_number VARCHAR(25)
    );
    
    #creating a tabe for keeping track of dermatologist information
    
    Create Table Consultants ( 
    ConsultantID Int primary key,
    Firstname varchar(50) not null,
    email varchar (100) Unique not null,
    phonenumber varchar (20),
    YearsOfExperience Int
    );
    
    # Creating products table
    
    Create Table products (
    ProductId int primary key,
    productname varchar(100) not null,
    Brand varchar(50),
    SkinType varchar(50),
    Description text,
    price decimal (10, 2) not null,
    StockingQuantity int not null
    );
    
    # creating table for appointments 
    
    create table Appointments (
    AppointmentID int primary key,
    ConsultationID int not null,
    AppointmentDate Date not null,
    AppointmentTime time not null
    );
    
    # creating a table for recommendations 
    
    Create table Recommendations (
    Notes text,
    skinCondationID int not null,
    ProductId int,
    ConsultationId int not null
    );
    
    # creating a table for Transactions 
    
    create table PaymentTransactions (
    paymentId int primary key,
    CustomerID int not null,
    TransactionDate Date not null,
    Amount Decimal(10, 2) not null
    );
    
  # creating a table for customer feedback
  
  Create table CustomerFeedback (
  FeedbackID int primary key,
  rating int check (Rating Between 1 and 5),
  Comments text,
  FeedbackDate Date not null,
  ConsultationID int not null
  );
  
  # insertation for customers 
  
  