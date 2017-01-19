-- Retrieve the names of all borrowers who do not have any books checked out.
USE dbLibraryManagementSystem
GO

SELECT *
FROM Borrower AS Bor
LEFT OUTER JOIN Book_Loans AS BL
ON Bor.CardNo = BL.CardNo
WHERE BL.BookID IS NULL;
