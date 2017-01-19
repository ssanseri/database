-- For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
USE dbLibraryManagementSystem
GO

SELECT LB.BranchID, COUNT(BL.BookID) AS BookCount
FROM Library_Branch AS LB
INNER JOIN Book_Loans AS BL
ON LB.BranchID = BL.BranchID
GROUP BY LB.BranchID

