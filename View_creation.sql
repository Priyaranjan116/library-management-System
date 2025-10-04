CREATE VIEW CurrentLoans AS
SELECT 
    L.LoanID, B.Title, M.Name AS Borrower, L.LoanDate
FROM Loans L
JOIN Books B ON L.BookID = B.BookID
JOIN Members M ON L.MemberID = M.MemberID
WHERE L.ReturnDate IS NULL;
