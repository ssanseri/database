SELECT B.Title, BC.No_Of_Copies
FROM Book AS B
INNER JOIN Book_Copies AS BC ON B.BookID = BC.BookID
INNER JOIN Library_Branch AS LB ON LB.BranchID =  BC.BranchID 
INNER JOIN Book_Authors AS BA ON BA.BookID = B.BookID
WHERE BA.AuthorName = 'Stephen King' AND LB.BranchName = 'Central'