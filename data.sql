-- Authors
INSERT INTO Authors (Name, Country) VALUES
('J.K. Rowling', 'UK'),
('George R.R. Martin', 'USA'),
('Haruki Murakami', 'Japan');

-- Categories
INSERT INTO Categories (CategoryName) VALUES
('Fantasy'),
('Science Fiction'),
('Literary Fiction');

-- Books
INSERT INTO Books (Title, AuthorID, CategoryID, PublishedYear, AvailableCopies) VALUES
('Harry Potter and the Sorcerer\'s Stone', 1, 1, 1997, 5),
('A Game of Thrones', 2, 1, 1996, 3),
('Kafka on the Shore', 3, 3, 2002, 4);

-- Members
INSERT INTO Members (Name, Email, JoinDate) VALUES
('Alice Smith', 'alice@example.com', '2023-01-10'),
('Bob Johnson', 'bob@example.com', '2023-02-20');

-- Loans
INSERT INTO Loans (BookID, MemberID, LoanDate, ReturnDate) VALUES
(1, 1, '2023-10-01', NULL),
(2, 2, '2023-09-20', '2023-09-30');
