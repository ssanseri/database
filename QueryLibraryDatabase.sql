USE [dbLibraryManagementSystem]
GO

/****** Object:  StoredProcedure [dbo].[get_employee_pay_rates]    Script Date: 8/23/2016 5:01:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- There are 7 queries
-- CREATE PROC [dbo].[get_library_info] @Query1 bit = 0, @Query2 bit = 0, @Query3 bit = 0, @Query4 bit = 0, @Query5 bit = 0, @Query6 bit = 0, @Query7 bit = 0
DROP PROC get_library_info;
GO
ALTER PROC get_library_info @Query1 bit = 0, @Query2 bit = 0, @Query3 bit = 0, @Query4 bit = 0, @Query5 bit = 0, @Query6 bit = 0, @Query7 bit = 0
AS
    IF @Query1 = 1
        SELECT BC.No_Of_Copies
        FROM Library_Branch AS LB
        INNER JOIN Book_Copies AS BC ON LB.BranchID = BC.BranchID
        INNER JOIN Book AS B ON B.BookID = BC.BookID
        WHERE LB.BranchName = 'Sharpstown' AND B.Title = 'The Lost Tribe' 
    IF @Query2 = 1
	    SELECT LB.BranchName, BC.No_Of_Copies
        FROM Library_Branch AS LB
        INNER JOIN Book_Copies AS BC ON LB.BranchID = BC.BranchID
        INNER JOIN Book AS B ON B.BookID = BC.BookID
        WHERE B.Title = 'The Lost Tribe'
	IF @Query3 = 1
	    SELECT Bor.Name
        FROM Borrower AS Bor
        LEFT OUTER JOIN Book_Loans AS BL
        ON Bor.CardNo = BL.CardNo
        WHERE BL.BookID IS NULL;
    IF @Query4 = 1
	    SELECT B.Title, Bor.Name, Bor.Address
        FROM Book_Loans AS BL
        INNER JOIN Borrower AS Bor ON BL.CardNo = Bor.CardNo
        INNER JOIN Library_Branch AS LB ON LB.BranchId = BL.BranchID
        INNER JOIN Book AS B ON B.BookID = BL.BookID
        WHERE LB.BranchName = 'Sharpstown' AND BL.DueDate = CONVERT (date, GETDATE())
    IF @Query5 = 1
	    SELECT LB.BranchName, COUNT(BL.BookID) AS BookCount
        FROM Library_Branch AS LB
        INNER JOIN Book_Loans AS BL
        ON LB.BranchID = BL.BranchID
        GROUP BY LB.BranchName
    IF @Query6 = 1
	    SELECT Bor.Name, Bor.Address, COUNT(*) AS book_count
        FROM Borrower AS Bor
        INNER JOIN Book_Loans AS BL 
        ON BL.CardNo = Bor.CardNo
        GROUP BY Bor.Name, Bor.Address
        HAVING COUNT(BL.BookID) > 5;
	IF @Query7 = 1
	    SELECT B.Title, BC.No_Of_Copies
        FROM Book AS B
        INNER JOIN Book_Copies AS BC ON B.BookID = BC.BookID
        INNER JOIN Library_Branch AS LB ON LB.BranchID =  BC.BranchID 
        INNER JOIN Book_Authors AS BA ON BA.BookID = B.BookID
        WHERE BA.AuthorName = 'Stephen King' AND LB.BranchName = 'Central'
GO


DECLARE @Query1 bit = 1;
DECLARE @Query2 bit = 1;
DECLARE @Query3 bit = 1;
DECLARE @Query4 bit = 1;
DECLARE @Query5 bit = 1;
DECLARE @Query6 bit = 1;
DECLARE @Query7 bit = 1;
EXEC get_library_info @Query1, @Query2, @Query3, @Query4, @Query5, @Query6, @Query7;
