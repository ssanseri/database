4USE dbLibraryManagementSystem
GO

DELETE Book;
INSERT INTO Book VALUES (1, 'The Lost Tribe', 'Picador USA');
INSERT INTO Book VALUES (2, 'In Search of Lost Time', 'Grasset and Gallimard');
INSERT INTO Book VALUES (3, 'Ulysses', 'Dover Publications');
INSERT INTO Book VALUES (4, 'Don Quixote', 'Dover Publications');
INSERT INTO Book VALUES (5, 'Moby Dick', 'Bantam Classics');
INSERT INTO Book VALUES (6, 'The Amazing Adventures of Kavalier & Clay', 'Random House');
INSERT INTO Book VALUES (7, 'A Heartbreaking Work of Staggering Genius', 'Simon & Schuster');
INSERT INTO Book VALUES (8, 'The Road', 'Knopf');
INSERT INTO Book VALUES (9, 'Gilead', 'Farrar, Straus and Giroux');
INSERT INTO Book VALUES (10, 'Middlesex', 'Picador USA');
INSERT INTO Book VALUES (11, 'The Book Thief', 'Knopf');
INSERT INTO Book VALUES (12, 'Blankets', 'Top Shelf Productions');
INSERT INTO Book VALUES (13, 'The Year of Magical Thinking', 'Knopf');
INSERT INTO Book VALUES (14, 'Everything is Illuminated', 'Harper Perennial');
INSERT INTO Book VALUES (15, 'Consider the Lobster And Other Essays', 'Little, Brown and Company');
INSERT INTO Book VALUES (16, 'Me Talk Pretty One Day', 'Little, Brown and Company');
INSERT INTO Book VALUES (17, 'Slavery By Another Name: The Re-Enslavement of Black Americans from the Civil War to World War II', 'Doubleday');
INSERT INTO Book VALUES (18, 'Atonement', 'Nan A. Talese');
INSERT INTO Book VALUES (19, 'Harry Potter', 'Bloomsbury');
INSERT INTO Book VALUES (20, 'Fast Food Nation', 'Houghton Mifflin');
INSERT INTO Book VALUES (21, 'The Shining', 'New English Library');
INSERT INTO Book VALUES (22, 'The Stand', 'Anchor Books');
SELECT * FROM Book;

DELETE Book_Authors;
INSERT INTO Book_Authors VALUES (1, 'Mark Lee');
INSERT INTO Book_Authors VALUES (2, 'Marcel Proust');
INSERT INTO Book_Authors VALUES (3, 'James Joyce');
INSERT INTO Book_Authors VALUES (4, 'Miguel Cervantes');
INSERT INTO Book_Authors VALUES (5, 'Herman Melville');
INSERT INTO Book_Authors VALUES (6, 'Michael Chabon');
INSERT INTO Book_Authors VALUES (7, 'Dave Eggers');
INSERT INTO Book_Authors VALUES (8, 'Cormac McCarthy');
INSERT INTO Book_Authors VALUES (9, 'Marilynne Robinson');
INSERT INTO Book_Authors VALUES (10, 'Jeffrey Eugenides');
INSERT INTO Book_Authors VALUES (11, 'Markus Zusak');
INSERT INTO Book_Authors VALUES (12, 'Craig Thompson');
INSERT INTO Book_Authors VALUES (13, 'Joan Didion');
INSERT INTO Book_Authors VALUES (14, 'Jonathan Safran Foer');
INSERT INTO Book_Authors VALUES (15, 'David Foster Wallace');
INSERT INTO Book_Authors VALUES (16, 'David Sedaris');
INSERT INTO Book_Authors VALUES (17, 'Doug Blackmon');
INSERT INTO Book_Authors VALUES (18, 'Ian McEwan');
INSERT INTO Book_Authors VALUES (19, 'J.K. Rowling');
INSERT INTO Book_Authors VALUES (20, 'Eric Schlosser');
INSERT INTO Book_Authors VALUES (21, 'Stephen King');
INSERT INTO Book_Authors VALUES (22, 'Stephen King');
SELECT * FROM Book_Authors;

--
DELETE Publisher;
INSERT INTO Publisher VALUES ('Picador USA', '175 Fifth Avenue, New York, NY 10010', '800-221-7945 x 5441');
INSERT INTO Publisher VALUES ('Grasset and Gallimard', 'France', NULL);
INSERT INTO Publisher VALUES ('Dover Publications', '31 E 2nd St, Mineola, NY 11501', '516-294-7000');
INSERT INTO Publisher VALUES ('Penguin Classics', '375 Hudson St New York, NY 10014', '866-761-6685');
INSERT INTO Publisher VALUES ('Bantam Classics', '1745 Broadway 10th Floor, New York, NY 10019', '1-800-733-3000');
INSERT INTO Publisher VALUES ('Random House', '1745 Broadway 10th Floor, New York, NY 10019', '1-800-733-3000');
INSERT INTO Publisher VALUES ('Simon & Schuster', '1230 Avenue of the Americas, New York, NY 10020', '1-800-897-7650');
INSERT INTO Publisher VALUES ('Knopf', '1745 Broadway New York, NY 10019', '1-800-733-3000');
INSERT INTO Publisher VALUES ('Farrar, Straus and Giroux', '18 West 18th St, New York NY 10011 USA', '212-741-6900');
INSERT INTO Publisher VALUES ('Top Shelf Productions', 'PO Box 1282, Marietta, GA 30061-1282', '770-425-0551');
INSERT INTO Publisher VALUES ('Harper Perennial', '10 East 53rd Street, New York NY 10022', '800-242-7737');
INSERT INTO Publisher VALUES ('Little, Brown and Company', '1290 Avenue of the Americas, New York, NY 10104', '800-759-0190');
INSERT INTO Publisher VALUES ('Doubleday', '1745 Broadway New York, NY 10019', '212-572-2662');
INSERT INTO Publisher VALUES ('Nan A. Talese', '1745 Broadway New York, NY 10019', '212-782-8918');
INSERT INTO Publisher VALUES ('Bloomsbury', '1385 Broadway, 5th Floor, New York, NY 10018', '800-932-4724');
INSERT INTO Publisher VALUES ('Houghton Mifflin', '9205 SouthPark Center Loop, Orlando, FL 32819', '800-225-5425');
INSERT INTO Publisher VALUES ('New English Library', '338 Euston Road London London NW1 3BH United Kingdom', '+44 2078736000');
INSERT INTO Publisher VALUES ('Anchor Books', '1745 Broadway New York, NY 10019', '1-800-733-3000');
SELECT * FROM Publisher;


DELETE Library_Branch;
INSERT INTO Library_Branch VALUES (1, 'Central', '801 SW 10th Ave, Portland, OR, 97205');
INSERT INTO Library_Branch VALUES (2, 'Sharpstown', '7660 Clarewood Dr, Houston, TX 77036');
INSERT INTO Library_Branch VALUES (3, 'Ledding', '10660 SE 21st Ave, Milwaukie, OR 97222');
INSERT INTO Library_Branch VALUES (4, 'Woodstock', '6008 SE 49th Avenue, Portland, OR 97206');
SELECT * FROM Library_Branch;

-- BookID, BranchId, No_Of_Copies
DELETE Book_Copies;
INSERT INTO  Book_Copies VALUES (1, 2, 2);
INSERT INTO  Book_Copies VALUES (2, 1, 3);
INSERT INTO  Book_Copies VALUES (3, 1, 4);
INSERT INTO  Book_Copies VALUES (4, 1, 5);
INSERT INTO  Book_Copies VALUES (5, 1, 6);
INSERT INTO  Book_Copies VALUES (6, 1, 7);
INSERT INTO  Book_Copies VALUES (7, 1, 8);
INSERT INTO  Book_Copies VALUES (8, 1, 9);
INSERT INTO  Book_Copies VALUES (9, 1, 10);
INSERT INTO  Book_Copies VALUES (10, 1, 11);
INSERT INTO  Book_Copies VALUES (21, 1, 11);
INSERT INTO  Book_Copies VALUES (22, 1, 11);

INSERT INTO  Book_Copies VALUES (11, 2, 2);
INSERT INTO  Book_Copies VALUES (12, 2, 3);
INSERT INTO  Book_Copies VALUES (13, 2, 4);
INSERT INTO  Book_Copies VALUES (14, 2, 5);
INSERT INTO  Book_Copies VALUES (15, 2, 6);
INSERT INTO  Book_Copies VALUES (16, 2, 7);
INSERT INTO  Book_Copies VALUES (17, 2, 8);
INSERT INTO  Book_Copies VALUES (18, 2, 9);
INSERT INTO  Book_Copies VALUES (19, 2, 10);
INSERT INTO  Book_Copies VALUES (20, 2, 11);
INSERT INTO  Book_Copies VALUES (1, 3, 2);
INSERT INTO  Book_Copies VALUES (2, 3, 3);
INSERT INTO  Book_Copies VALUES (3, 3, 4);
INSERT INTO  Book_Copies VALUES (4, 3, 5);
INSERT INTO  Book_Copies VALUES (5, 3, 6);
INSERT INTO  Book_Copies VALUES (6, 3, 7);
INSERT INTO  Book_Copies VALUES (7, 3, 8);
INSERT INTO  Book_Copies VALUES (8, 3, 9);
INSERT INTO  Book_Copies VALUES (9, 3, 10);
INSERT INTO  Book_Copies VALUES (10, 3, 11);
INSERT INTO  Book_Copies VALUES (11, 4, 2);
INSERT INTO  Book_Copies VALUES (12, 4, 3);
INSERT INTO  Book_Copies VALUES (13, 4, 4);
INSERT INTO  Book_Copies VALUES (14, 4, 5);
INSERT INTO  Book_Copies VALUES (15, 4, 6);
INSERT INTO  Book_Copies VALUES (16, 4, 7);
INSERT INTO  Book_Copies VALUES (17, 4, 8);
INSERT INTO  Book_Copies VALUES (18, 4, 9);
INSERT INTO  Book_Copies VALUES (19, 4, 10);
INSERT INTO  Book_Copies VALUES (20, 4, 11);
SELECT * FROM Book_Copies;

DELETE Borrower;
INSERT INTO Borrower VALUES (1, 'I''m Borrower #1', '111 W Main St, Portland, OR 97000', '211-111-1111');
INSERT INTO Borrower VALUES (2, 'I''m Borrower #2', '222 W Main St, Portland, OR 97000', '222-222-2222');
INSERT INTO Borrower VALUES (3, 'I''m Borrower #3', '333 W Main St, Portland, OR 97000', '333-333-3333');
INSERT INTO Borrower VALUES (4, 'I''m Borrower #4', '444 W Main St, Portland, OR 97000', '444-444-4444');
INSERT INTO Borrower VALUES (5, 'I''m Borrower #5', '555 W Main St, Portland, OR 97000', '555-555-5555');
INSERT INTO Borrower VALUES (6, 'I''m Borrower #6', '666 W Main St, Portland, OR 97000', '666-666-6666');
INSERT INTO Borrower VALUES (7, 'I''m Borrower #7', '777 W Main St, Portland, OR 97000', '777-777-7777');
INSERT INTO Borrower VALUES (8, 'I''m Borrower #8', '888 W Main St, Portland, OR 97000', '888-888-8888');
INSERT INTO Borrower VALUES (9, 'I''m Illiterate #9', '888 W Main St, Portland, OR 97000', '888-888-8888');
INSERT INTO Borrower VALUES (10, 'I''m Watch TV #10', '888 W Main St, Portland, OR 97000', '888-888-8888');
INSERT INTO Borrower VALUES (11, 'I''m An Original Thinker #11', '888 W Main St, Portland, OR 97000', '888-888-8888');
SELECT * FROM Borrower;

-- BookID, BranchID, CardNo, DateOut, DueDate
DELETE Book_Loans;
INSERT INTO Book_Loans VALUES (1, 1, 1, '8/1/2016', '8/15/2016');
INSERT INTO Book_Loans VALUES (1, 2, 1, '8/2/2016', '8/16/2016');
INSERT INTO Book_Loans VALUES (2, 3, 1, '8/3/2016', '8/17/2016');
INSERT INTO Book_Loans VALUES (2, 4, 1, '8/4/2016', '8/18/2016');
INSERT INTO Book_Loans VALUES (3, 1, 1, '8/5/2016', '8/19/2016');
INSERT INTO Book_Loans VALUES (3, 2, 1, '8/6/2016', '8/20/2016');
INSERT INTO Book_Loans VALUES (4, 3, 2, '8/7/2016', '8/21/2016');
INSERT INTO Book_Loans VALUES (4, 2, 2, '8/8/2016', '8/22/2016');
INSERT INTO Book_Loans VALUES (5, 1, 2, '8/9/2016', '8/23/2016');
INSERT INTO Book_Loans VALUES (5, 2, 2, '8/10/2016', '8/24/2016');
INSERT INTO Book_Loans VALUES (6, 3, 2, '8/11/2016', '8/25/2016');
INSERT INTO Book_Loans VALUES (6, 4, 2, '8/12/2016', '8/26/2016');
INSERT INTO Book_Loans VALUES (7, 1, 2, '8/13/2016', '8/27/2016');
INSERT INTO Book_Loans VALUES (7, 2, 2, '8/14/2016', '8/28/2016');
INSERT INTO Book_Loans VALUES (8, 3, 2, '8/15/2016', '8/29/2016');
INSERT INTO Book_Loans VALUES (8, 4, 3, '8/16/2016', '8/30/2016');
INSERT INTO Book_Loans VALUES (9, 1, 3, '8/17/2016', '8/31/2016');
INSERT INTO Book_Loans VALUES (9, 2, 3, '8/18/2016', '9/1/2016');
INSERT INTO Book_Loans VALUES (10, 3, 3, '8/19/2016', '9/2/2016');
INSERT INTO Book_Loans VALUES (10, 4, 3, '8/20/2016', '9/3/2016');
INSERT INTO Book_Loans VALUES (11, 1, 3, '8/21/2016', '9/4/2016');
INSERT INTO Book_Loans VALUES (11, 2, 3, '8/22/2016', '9/5/2016');
INSERT INTO Book_Loans VALUES (12, 3, 3, '8/23/2016', '9/6/2016');
INSERT INTO Book_Loans VALUES (12, 4, 4, '8/24/2016', '9/7/2016');
INSERT INTO Book_Loans VALUES (13, 1, 4, '8/25/2016', '9/8/2016');
INSERT INTO Book_Loans VALUES (13, 2, 4, '8/26/2016', '9/9/2016');
INSERT INTO Book_Loans VALUES (14, 3, 5, '8/27/2016', '9/10/2016');
INSERT INTO Book_Loans VALUES (14, 4, 6, '8/28/2016', '9/11/2016');
INSERT INTO Book_Loans VALUES (15, 1, 6, '8/29/2016', '9/12/2016');
INSERT INTO Book_Loans VALUES (15, 2, 6, '8/30/2016', '9/13/2016');
INSERT INTO Book_Loans VALUES (16, 3, 7, '8/31/2016', '9/14/2016');
INSERT INTO Book_Loans VALUES (16, 4, 7, '9/1/2016', '9/15/2016');
INSERT INTO Book_Loans VALUES (17, 1, 8, '9/2/2016', '9/16/2016');
INSERT INTO Book_Loans VALUES (17, 2, 8, '9/3/2016', '9/17/2016');
INSERT INTO Book_Loans VALUES (18, 3, 8, '9/4/2016', '9/18/2016');
INSERT INTO Book_Loans VALUES (18, 4, 8, '9/5/2016', '9/19/2016');
INSERT INTO Book_Loans VALUES (19, 1, 8, '9/6/2016', '9/20/2016');
INSERT INTO Book_Loans VALUES (19, 2, 8, '9/7/2016', '9/21/2016');
INSERT INTO Book_Loans VALUES (20, 3, 8, '9/8/2016', '9/22/2016');
INSERT INTO Book_Loans VALUES (20, 4, 8, '9/9/2016', '9/23/2016');
INSERT INTO Book_Loans VALUES (21, 1, 8, '9/10/2016', '9/24/2016');
INSERT INTO Book_Loans VALUES (21, 2, 8, '9/11/2016', '9/25/2016');
INSERT INTO Book_Loans VALUES (1, 3, 8, '9/12/2016', '9/26/2016');
INSERT INTO Book_Loans VALUES (2, 4, 8, '9/13/2016', '9/27/2016');
INSERT INTO Book_Loans VALUES (3, 1, 8, '9/14/2016', '9/28/2016');
INSERT INTO Book_Loans VALUES (4, 2, 8, '9/15/2016', '9/29/2016');
INSERT INTO Book_Loans VALUES (5, 3, 8, '9/16/2016', '9/30/2016');
INSERT INTO Book_Loans VALUES (6, 4, 8, '9/17/2016', '10/1/2016');
INSERT INTO Book_Loans VALUES (7, 1, 8, '9/18/2016', '10/2/2016');
INSERT INTO Book_Loans VALUES (8, 2, 8, '9/19/2016', '10/3/2016');
INSERT INTO Book_Loans VALUES (8, 2, 8, '9/19/2016', '10/3/2016');
-- BookID, BranchID, CardNo, DateOut, DueDate
INSERT INTO Book_Loans VALUES (21, 1, 1, '8/1/2016', '8/15/2016');
INSERT INTO Book_Loans VALUES (22, 1, 1, '8/1/2016', '8/15/2016');

SELECT * FROM Book_Loans;