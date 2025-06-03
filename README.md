# Library-management-system---A-Mini-project-on-SQL-
This project is a Library Management System built using SQL that simulates the operations of a real-world library. It includes schema design, table creation, relationships using foreign keys, and SQL queries for managing book borrowals, members, and inventory. 

Language: SQL  
Database: MySQL / PostgreSQL / SQLite (Choose your preferred RDBMS)  
Tools: MySQL Workbench / pgAdmin / DB Browser for SQLite  

# Database Schema:

**1. Books
Stores book details and inventory count.**

CREATE TABLE Books (
  BookID INT PRIMARY KEY,
  Title VARCHAR(100),
  Author VARCHAR(100),
  Year INT,
  AvailableCopies INT
);


**2. Members
Stores library member details.**

CREATE TABLE Members (
  MemberID INT PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100) UNIQUE
);


**3. Borrow_Records
Tracks borrowal of books by members with dates and relationships.**

CREATE TABLE Borrow_Records (
  RecordID INT PRIMARY KEY,
  BookID INT,
  MemberID INT,
  BorrowDate DATE,
  FOREIGN KEY (BookID) REFERENCES Books(BookID),
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);


# Sample SQL Queries
Here are a few examples of how to interact with the database.

**Insert a Book**
INSERT INTO Books VALUES (1, 'Atomic Habits', 'James Clear', 2018, 3);

**Add a Member**
INSERT INTO Members VALUES (101, 'Sindhugr', 'Sindhugr@example.com');

**Record a Borrow Event**
INSERT INTO Borrow_Records VALUES (1, 1, 101, '2025-06-01');

**View Borrowed Books**
SELECT Members.Name, Books.Title, Borrow_Records.BorrowDate
FROM Borrow_Records
JOIN Members ON Borrow_Records.MemberID = Members.MemberID
JOIN Books ON Borrow_Records.BookID = Books.BookID;

# Features

Normalized relational database (3NF)
Data integrity using primary and foreign keys
Simple and efficient table structure
Real-world simulation of borrow/return system
Easily extendable for additional features like fines, due dates, returns, etc.

# How to Use

Clone or download this repository.
Open the SQL files using your preferred database tool.
Run schema.sql to create the database tables.
Insert sample data and run sample_queries.sql to test.
Extend or build on the system for learning or real use cases.

# Future Enhancements

Add ReturnDate and overdue fine calculation
Create views for daily/weekly borrow statistics
Add stored procedures for issuing/returning books
Web UI using Python + Flask + SQLite
Trigger to auto-update AvailableCopies on borrow/return

# Learnings

Designing relational databases from scratch
Understanding normalization and table relationships
Writing robust SQL queries
Implementing primary/foreign key constraints
Real-life modeling using data

