USE dbLibraryManagementSystem
GO

SELECT B.Title, Bor.Name, Bor.Address
FROM Book_Loans AS BL
INNER JOIN Borrower AS Bor ON BL.CardNo = Bor.CardNo
INNER JOIN Library_Branch AS LB ON LB.BranchId = BL.BranchID
INNER JOIN Book AS B ON B.BookID = BL.BookID
WHERE LB.BranchName = 'Sharpstown' AND BL.DueDate = CONVERT (date, GETDATE())
