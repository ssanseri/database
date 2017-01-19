-- How many copies of the book titled 'The Lost Tribe' are owned by the library branch whose name is "Sharpstown"?
USE dbLibraryManagementSystem
GO

SELECT LB.BranchName, BC.No_Of_Copies
FROM Library_Branch AS LB
INNER JOIN Book_Copies AS BC ON LB.BranchID = BC.BranchID
INNER JOIN Book AS B ON B.BookID = BC.BookID
WHERE B.Title = 'The Lost Tribe'
