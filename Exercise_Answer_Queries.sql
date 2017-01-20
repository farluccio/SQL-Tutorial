--1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name
--is"Sharpstown"? 

SELECT BC.BookId, Title, No_Of_Copies, BranchName, [Address]
FROM Book_Copies BC INNER JOIN Library_Branch LB
ON BC.BranchId = LB.BranchID
	RIGHT JOIN Book
	ON BC.BookId = Book.BookId
WHERE Book.Title = 'The Lost Tribe' 
AND LB.BranchName = 'Sharpstown'

--2. How many copies of the book titled The Lost Tribe are owned by each library branch?

SELECT BC.BookId, Title, No_Of_Copies, BranchName
FROM Book_Copies BC INNER JOIN Library_Branch LB
ON BC.BranchId = LB.BranchID
	RIGHT JOIN Book
	ON BC.BookId = Book.BookId
WHERE Book.Title = 'The Lost Tribe' 

--3. Retrieve the names of all borrowers who do not have any books checked out.

SELECT NAME
FROM Borrower B LEFT JOIN Book_Loans BL
ON B.CardNo = BL.CardNo
WHERE DueDate IS NULL

--4.   For   each   book   that   is   loaned   out   from   the   "Sharpstown"   branch   and   whose   DueDate   is   today,
--retrieve the book title, the borrower's name, and the borrower's address.

SELECT Title, Name, Borrower.Address
FROM Library_Branch LB INNER JOIN Book_Loans BL
ON LB.BranchID = BL.BranchId
	LEFT JOIN Book
	ON BL.BookId = Book.BookId
	INNER JOIN Borrower
	ON Borrower.CardNo = BL.CardNo 
WHERE DueDate = GETDATE()
AND LB.BranchName = 'Sharpstown'

--5. For each library branch, retrieve the branch name and the total number of books loaned out from
that branch.

SELECT BranchName, COUNT(*) AS Books_Out
FROM Library_Branch LB LEFT JOIN Book_Loans BL
ON LB.BranchID = BL.BranchId
GROUP BY BranchName

--6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more
--than five books checked out.

SELECT Name, [Address], COUNT(BL.CardNo) AS BooksOut
FROM Book_Loans BL INNER JOIN Borrower
ON BL.CardNo = Borrower.CardNo
GROUP BY Name, [Address]
HAVING COUNT(BL.CardNo) > 5

--7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
--copies owned by the library branch whose name is "Central"

SELECT *
FROM Book_Authors BA INNER JOIN Book
ON BA.BookId = Book.BookId
	INNER JOIN Book_Copies BC
	ON Book.BookId = BC.BookId
		LEFT JOIN Library_Branch LB
		ON BC.BranchId = LB.BranchID
WHERE AuthorName LIKE '%Stephen King%' AND BranchName = 'Central'

--Now, create a stored procedure that will execute one or more of those queries, based on user
--choice. Stored procedure for #7.

USE LibraryMgmnt
GO

CREATE PROC GetAuthorAtBranch @Author VARCHAR(50) = 'Stephen King', @Branch VARCHAR(50) = 'Central'
AS
	SELECT *
	FROM Book_Authors BA INNER JOIN Book
	ON BA.BookId = Book.BookId
		INNER JOIN Book_Copies BC
		ON Book.BookId = BC.BookId
			LEFT JOIN Library_Branch LB
			ON BC.BranchId = LB.BranchID
	WHERE AuthorName LIKE ('%' + @Author + '%') AND BranchName = @Branch
GO

EXEC GetAuthorAtBranch 'George', 'Sharpstown'