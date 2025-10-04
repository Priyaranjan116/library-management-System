DELIMITER //

CREATE PROCEDURE IssueLoan (
    IN p_BookID INT,
    IN p_MemberID INT
)
BEGIN
    DECLARE copies INT;

    -- Check availability
    SELECT AvailableCopies INTO copies
    FROM Books
    WHERE BookID = p_BookID;

    IF copies > 0 THEN
        -- Insert Loan
        INSERT INTO Loans (BookID, MemberID, LoanDate, ReturnDate)
        VALUES (p_BookID, p_MemberID, CURDATE(), NULL);

        -- Update Book Copies
        UPDATE Books
        SET AvailableCopies = AvailableCopies - 1
        WHERE BookID = p_BookID;

    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No copies available for this book.';
    END IF;
END //

DELIMITER ;
