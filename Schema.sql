-- schema.sql

CREATE TABLE Books (
  BookID INT PRIMARY KEY,
  Title VARCHAR(100),
  Author VARCHAR(100),
  Year INT,
  AvailableCopies INT
);

CREATE TABLE Members (
  MemberID INT PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100) UNIQUE
);

CREATE TABLE Borrow_Records (
  RecordID INT PRIMARY KEY,
  BookID INT,
  MemberID INT,
  BorrowDate DATE,
  FOREIGN KEY (BookID) REFERENCES Books(BookID),
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
