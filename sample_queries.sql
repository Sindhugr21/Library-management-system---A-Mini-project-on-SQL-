-- sample_queries.sql

-- Insert sample books
INSERT INTO Books VALUES (1, 'Atomic Habits', 'James Clear', 2018, 3);
INSERT INTO Books VALUES (2, 'Sapiens', 'Yuval Noah Harari', 2011, 5);
INSERT INTO Books VALUES (3, 'The Alchemist', 'Paulo Coelho', 1988, 2);

-- Insert sample members
INSERT INTO Members VALUES (101, 'Alice Johnson', 'alice@example.com');
INSERT INTO Members VALUES (102, 'Bob Smith', 'bob@example.com');

-- Insert borrow records
INSERT INTO Borrow_Records VALUES (1, 1, 101, '2025-06-01');
INSERT INTO Borrow_Records VALUES (2, 2, 102, '2025-06-02');

-- View borrowed books with member names and book titles
SELECT Members.Name, Books.Title, Borrow_Records.BorrowDate
FROM Borrow_Records
JOIN Members ON Borrow_Records.MemberID = Members.MemberID
JOIN Books ON Borrow_Records.BookID = Books.BookID;
