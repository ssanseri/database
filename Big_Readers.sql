--Retrieve the names, addresses, and number of books checked out for all borrowers who have more than 5 books checked out.
USE dbLibraryManagementSystem
GO


SELECT Bor.Name, Bor.Address, COUNT(*) AS book_count
FROM Borrower AS Bor
INNER JOIN Book_Loans AS BL 
ON BL.CardNo = Bor.CardNo
GROUP BY Bor.Name, Bor.Address
HAVING COUNT(BL.BookID) > 5;




