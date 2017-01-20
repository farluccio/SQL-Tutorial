-- Initial Set-up of LibraryMgmnt Db

USE MASTER
GO


IF EXISTS (SELECT * FROM sys.sysdatabases WHERE name = 'LibraryMgmnt')
DROP DATABASE LibraryMgmnt
GO

CREATE DATABASE LibraryMgmnt
GO

USE LibraryMgmnt
GO


-- Book Table Create and Fill Values --
---------------------------------------

CREATE TABLE Book
(BookId INT PRIMARY KEY,
Title VARCHAR(100) NOT NULL,
PublisherName VARCHAR(100) NOT NULL
)

INSERT INTO Book
VALUES (1, 'To Kill A Mockingbird', 'Pearson'),
(2, 'Pride And Prejudice', 'ThomsonReuters'),
(3, 'The Diary Of Anne Frank', 'RELX Group'),
(4, '1984', 'Wolters Kluwer'),
(5, 'Harry Potter And The Philosopher''s Stone', 'Penguin Random House'),
(6, 'The Lord Of The Rings', 'Phoenix Publishing and Media Company'),
(7, 'The Great Gatsby', 'China South Publishing & Media Group Co., Ltd'),
(8, 'Charlotte''s Web', 'Hachette Livre'),
(9, 'The Hobbit, J.R.R Tolkien', 'McGraw-Hill Education'),
(10, 'Little Women', 'Holtzbrinck'),
(11, 'Fahrenheit 451', 'Grupo Planeta'),
(12, 'Jane Eyre', 'Scholastic'),
(13, 'Animal Farm', 'Wiley'),
(14, 'Gone With The Wind', 'Cengage Learning Holdings II LP'),
(15, 'The Catcher In The Rye', 'China Publishing Group Corporation'),
(16, 'The Book Thief', 'Harper Collins'),
(17, 'The Adventures of Huckleberry Finn', 'Houghton Mifflin Harcourt'),
(18, 'The Hunger Games', 'De Agostini Editore'),
(19, 'The Help', 'Oxford University Press'),
(20, 'The Lion, The Witch And The Wardrobe', 'Springer Science and Business Media'),
(21, 'The Grapes Of Wrath', 'China Education Publishing & Media Holdings Co. Ltd.'),
(22, 'The Lord Of The Flies', 'Informa'),
(23, 'The Kite Runner', 'Shueisha'),
(24, 'Night', 'Kodansha Ltd.'),
(25, 'Hamlet', 'Egmont Group'),
(26, 'A Wrinkle In Time', 'Shogakukan'),
(27, 'Of Mice And Men', 'Bonnier'),
(28, 'A Tales Of Two Cities', 'Grupo Santillana'),
(29, 'Romeo And Juliet', 'Kadokawa Publishing'),
(30, 'The Hitchhikers Guide To The Galaxy, By Douglas Adams', 'Simon & Schuster'),
(31, 'The Secret Garden', 'Woongjin ThinkBig'),
(32, 'A Christmas Carol', 'Klett'),
(33, 'The Little Prince', 'Groupe Madrigall'),
(34, 'Brave New World', 'Les Editions Lefebvre-Sarrut'),
(35, 'Harry Potter And The Deathly Hallows', 'Messagerie / GeMS'),
(36, 'The Giver', 'Media Participations'),
(37, 'The Handmaid''s Tale', 'Mondadori'),
(38, 'Where The Sidewalk Ends', 'Cambridge University Press'),
(39, 'Wuthering Heights', 'The Perseus Book Group'),
(40, 'The Fault In Our Stars', 'France Loisirs'),
(41, 'Anne Of The Green Gables', 'Westermann Verlagsgruppe'),
(42, 'The Adventures Of Tom Sawyer', 'Sanoma'),
(43, 'Macbeth', 'Cornelsen'),
(44, 'The Girl With A Dragon Tattoo', 'Kyowon Co. Ltd.'),
(45, 'Frankenstein', 'La Martini�re'),
(46, 'The Holy Bible: King James Version', 'Haufe Gruppe'),
(47, 'The Colour Purple', 'WEKA'),
(48, 'The Count Of Monte Cristo', 'RCS Libri'),
(49, 'A Tree Grows In Brooklyn', 'Gakken Co. Ltd.'),
(50, 'East Of Eden', 'Bungeishunju Ltd.'),
(51, 'Alice In Wonderland', 'OLMA Media Group'),
(52, 'In Cold Blood', 'EKSMO'),
(53, 'Catch-22', 'Groupe Albin Michel'),
(54, 'The Stand', 'Saraiva'),
(55, 'Outlander', 'Editora FTD'),
(56, 'The Lost Tribe', 'Abril Educa��o'),
(57, 'Enders Game', 'Shinchosha Publishing Co, Ltd.')


-- Book_Authors Table Create and Fill Values --
-----------------------------------------------

CREATE TABLE Book_Authors
(BookId INT PRIMARY KEY,
AuthorName VARCHAR(100) NOT NULL
)

INSERT INTO Book_Authors
VALUES (1, 'Harper Lee'),
(2, 'Jane Austen'),
(3, 'Anne Frank'),
(4, 'George Orwell'),
(5, 'J.K Rowling'),
(6, 'J.R.R Tolkien'),
(7, 'F. Scott Fitzgerald'),
(8, 'E.B White'),
(9, 'J.R.R Tolkien'),
(10, 'Louisa May Alcott'),
(11, 'Ray Bradbury'),
(12, 'Charlotte Bronte'),
(13, 'George Orwell'),
(14, 'Margaret Mitchell'),
(15, 'J.D Salinger'),
(16, 'Markus Zusak'),
(17, 'Mark Twain'),
(18, 'Suzanne Collins'),
(19, 'Kathryn Stockett'),
(20, 'C.S Lewis'),
(21, 'John Steinbeck'),
(22, 'William Golding'),
(23, 'Khaled Hosseini'),
(24, 'Elie Wiesel'),
(25, 'William Shakespeare'),
(26, 'Madeleine L''Engle'),
(27, 'John Steinbeck'),
(28, 'Charles Dickens'),
(29, 'William Shakespeare'),
(30, 'Douglas Adams'),
(31, 'Frances Hodgson Burnett'),
(32, 'Charles Dickens'),
(33, 'Antoine de Saint-Exup�ry'),
(34, 'Aldous Huxley'),
(35, 'J.K Rowling'),
(36, 'Lois Lowry'),
(37, 'Margaret Atwood'),
(38, 'Shel Silverstein'),
(39, 'Emily Bronte'),
(40, 'John Green'),
(41, 'John Green'),
(42, 'Mark Twain'),
(43, 'William Shakespeare'),
(44, 'Stieg Larrson'),
(45, 'Mary Shelley'),
(46, 'Multiple Authors'),
(47, 'Alice Walker'),
(48, 'Alexandre Dumas'),
(49, 'Betty Smith'),
(50, 'John Steinbeck'),
(51, 'Lewis Carroll'),
(52, 'Truman Capote'),
(53, 'Joseph Heller'),
(54, 'Stephen King'),
(55, 'Diana Gabaldon'),
(56, 'RuneScape'),
(57, 'Orson Scott Card')


-- Publisher Table Create and Fill Values --
--------------------------------------------


CREATE TABLE Publisher
(PublisherName VARCHAR(100) PRIMARY KEY,
[Address] VARCHAR(100),
Phone VARCHAR(12) 
)

INSERT INTO Publisher
Values ('Pearson', 'UK', NULL),
('ThomsonReuters', 'Canada', NULL),
('RELX Group', 'UK/NL/US', NULL),
('Wolters Kluwer', 'NL', NULL),
('Penguin Random House', 'Germany', NULL),
('Phoenix Publishing and Media Company', 'China', NULL),
('China South Publishing & Media Group Co., Ltd', 'China', NULL),
('Hachette Livre', 'France', NULL),
('McGraw-Hill Education', 'US', NULL),
('Holtzbrinck', 'Germany', NULL),
('Grupo Planeta', 'Spain', NULL),
('Scholastic', 'US', NULL),
('Wiley', 'US', NULL),
('Cengage Learning Holdings II LP', 'US/Canada', NULL),
('China Publishing Group Corporation', 'China', NULL),
('Harper Collins', 'US', NULL),
('Houghton Mifflin Harcourt', 'US/Cayman Islands', NULL),
('De Agostini Editore', 'Italy', NULL),
('Oxford University Press', 'UK', NULL),
('Springer Science and Business Media', 'Sweden, Singapore', NULL),
('China Education Publishing & Media Holdings Co. Ltd.', 'China', NULL),
('Informa', 'UK', NULL),
('Shueisha', 'Japan', NULL),
('Kodansha Ltd.', 'Japan', NULL),
('Egmont Group', 'Denmark', NULL),
('Shogakukan', 'Japan', NULL),
('Bonnier', 'Sweden', NULL),
('Grupo Santillana', 'Spain', NULL),
('Kadokawa Publishing', 'Japan', NULL),
('Simon & Schuster', 'US', NULL),
('Woongjin ThinkBig', 'Korea', NULL),
('Klett', 'Germany', NULL),
('Groupe Madrigall', 'France', NULL),
('Les Editions Lefebvre-Sarrut', 'France', NULL),
('Messagerie / GeMS', 'Italy', NULL),
('Media Participations', 'Belgium', NULL),
('Mondadori', 'Italy', NULL),
('Cambridge University Press', 'UK', NULL),
('The Perseus Book Group', 'USA', NULL),
('France Loisirs', 'France', NULL),
('Westermann Verlagsgruppe', 'Germany', NULL),
('Sanoma', 'Finland', NULL),
('Cornelsen', 'Germany', NULL),
('Kyowon Co. Ltd.', 'Korea', NULL),
('La Martini�re', 'France', NULL),
('Haufe Gruppe', 'Germany', NULL),
('WEKA', 'Germany', NULL),
('RCS Libri', 'Italy', NULL),
('Gakken Co. Ltd.', 'Japan', NULL),
('Bungeishunju Ltd.', 'Japan', NULL),
('OLMA Media Group', 'Cyprus', NULL),
('EKSMO', 'Russia', NULL),
('Groupe Albin Michel', 'France', NULL),
('Saraiva', 'Brazil', NULL),
('Editora FTD', 'Brazil', NULL),
('Abril Educa��o', 'Brazil', NULL),
('Shinchosha Publishing Co, Ltd.', 'Japan', NULL)

-- Library_Branch Table Create and Fill Values --
-------------------------------------------------


CREATE TABLE Library_Branch
(BranchID INT PRIMARY KEY,
BranchName VARCHAR(100) NOT NULL,
[Address] VARCHAR(80)
)


INSERT INTO Library_Branch
VALUES (10, 'Sharpstown', 'Upstate Idaho'),
(20, 'Central', 'Western Florida'),
(30, 'Hole ''n the Rock', 'Arkansas'),
(40, 'Hideout', 'Southern Maine'),
(50, 'Rollingston', 'Central Kansas')


-- Book_Copies Table Create and Fill Values --
----------------------------------------------


CREATE TABLE Book_Copies
(IndexId INT PRIMARY KEY,
BookId INT,
BranchId INT NOT NULL,
No_Of_Copies INT NOT NULL
)


INSERT INTO Book_Copies
VALUES (1, 1, 10, 2), 
(2, 2, 10, 2), 
(3, 3, 10, 2), 
(4, 4, 10, 2), 
(5, 5, 10, 2), 
(6, 6, 10, 2), 
(7, 7, 10, 2), 
(8, 8, 10, 2), 
(9, 9, 10, 2), 
(10, 10, 10, 2), 
(11, 11, 10, 2), 
(12, 12, 10, 2), 
(13, 13, 10, 2), 
(14, 14, 10, 2), 
(15, 15, 10, 2), 
(16, 16, 10, 2), 
(17, 17, 10, 2), 
(18, 18, 10, 2), 
(19, 19, 10, 2), 
(20, 20, 10, 2), 
(21, 21, 10, 2), 
(22, 22, 10, 2), 
(23, 23, 10, 2), 
(24, 24, 10, 2), 
(25, 25, 10, 2), 
(26, 26, 10, 2), 
(27, 27, 10, 2), 
(28, 28, 10, 2), 
(29, 29, 10, 2), 
(30, 30, 10, 2), 
(31, 31, 10, 2), 
(32, 32, 10, 2), 
(33, 33, 10, 2), 
(34, 34, 10, 2), 
(35, 35, 10, 2), 
(36, 36, 10, 2), 
(37, 37, 10, 2), 
(38, 38, 10, 2), 
(39, 39, 10, 2), 
(40, 40, 10, 2), 
(41, 41, 10, 2), 
(42, 42, 10, 2), 
(43, 43, 10, 2), 
(44, 44, 10, 2), 
(45, 45, 10, 2), 
(46, 46, 10, 2), 
(47, 47, 10, 2), 
(48, 48, 10, 2), 
(49, 49, 10, 2), 
(50, 50, 10, 2), 
(51, 51, 10, 2), 
(52, 52, 10, 2), 
(53, 53, 10, 2), 
(54, 54, 10, 2), 
(55, 55, 10, 2), 
(56, 56, 10, 2), 
(57, 57, 10, 2), 
(58, 1, 20, 2), 
(59, 2, 20, 2), 
(60, 3, 20, 2), 
(61, 4, 20, 2), 
(62, 5, 20, 2), 
(63, 6, 20, 2), 
(64, 7, 20, 2), 
(65, 8, 20, 2), 
(66, 9, 20, 2), 
(67, 10, 20, 2), 
(68, 11, 20, 2), 
(69, 12, 20, 2), 
(70, 13, 20, 2), 
(71, 14, 20, 2), 
(72, 15, 20, 2), 
(73, 16, 20, 2), 
(74, 17, 20, 2), 
(75, 18, 20, 2), 
(76, 19, 20, 2), 
(77, 20, 20, 2), 
(78, 21, 20, 2), 
(79, 22, 20, 2), 
(80, 23, 20, 2), 
(81, 24, 20, 2), 
(82, 25, 20, 2), 
(83, 26, 20, 2), 
(84, 27, 20, 2), 
(85, 28, 20, 2), 
(86, 29, 20, 2), 
(87, 30, 20, 2), 
(88, 31, 20, 2), 
(89, 32, 20, 2), 
(90, 33, 20, 2), 
(91, 34, 20, 2), 
(92, 35, 20, 2), 
(93, 36, 20, 2), 
(94, 37, 20, 2), 
(95, 38, 20, 2), 
(96, 39, 20, 2), 
(97, 40, 20, 2), 
(98, 41, 20, 2), 
(99, 42, 20, 2), 
(100, 43, 20, 2), 
(101, 44, 20, 2), 
(102, 45, 20, 2), 
(103, 46, 20, 2), 
(104, 47, 20, 2), 
(105, 48, 20, 2), 
(106, 49, 20, 2), 
(107, 50, 20, 2), 
(108, 51, 20, 2), 
(109, 52, 20, 2), 
(110, 53, 20, 2), 
(111, 54, 20, 2), 
(112, 55, 20, 2), 
(113, 56, 20, 2), 
(114, 57, 20, 2), 
(115, 1, 30, 2), 
(116, 2, 30, 2), 
(117, 3, 30, 2), 
(118, 4, 30, 2), 
(119, 5, 30, 2), 
(120, 6, 30, 2), 
(121, 7, 30, 2), 
(122, 8, 30, 2), 
(123, 9, 30, 2), 
(124, 10, 30, 2), 
(125, 11, 30, 2), 
(126, 12, 30, 2), 
(127, 13, 30, 2), 
(128, 14, 30, 2), 
(129, 15, 30, 2), 
(130, 16, 30, 2), 
(131, 17, 30, 2), 
(132, 18, 30, 2), 
(133, 19, 30, 2), 
(134, 20, 30, 2), 
(135, 21, 30, 2), 
(136, 22, 30, 2), 
(137, 23, 30, 2), 
(138, 24, 30, 2), 
(139, 25, 30, 2), 
(140, 26, 30, 2), 
(141, 27, 30, 2), 
(142, 28, 30, 2), 
(143, 29, 30, 2), 
(144, 30, 30, 2), 
(145, 31, 30, 2), 
(146, 32, 30, 2), 
(147, 33, 30, 2), 
(148, 34, 30, 2), 
(149, 35, 30, 2), 
(150, 36, 30, 2), 
(151, 37, 30, 2), 
(152, 38, 30, 2), 
(153, 39, 30, 2), 
(154, 40, 30, 2), 
(155, 41, 30, 2), 
(156, 42, 30, 2), 
(157, 43, 30, 2), 
(158, 44, 30, 2), 
(159, 45, 30, 2), 
(160, 46, 30, 2), 
(161, 47, 30, 2), 
(162, 48, 30, 2), 
(163, 49, 30, 2), 
(164, 50, 30, 2), 
(165, 51, 30, 2), 
(166, 52, 30, 2), 
(167, 53, 30, 2), 
(168, 54, 30, 2), 
(169, 55, 30, 2), 
(170, 56, 30, 2), 
(171, 57, 30, 2), 
(172, 1, 40, 2), 
(173, 2, 40, 2), 
(174, 3, 40, 2), 
(175, 4, 40, 2), 
(176, 5, 40, 2), 
(177, 6, 40, 2), 
(178, 7, 40, 2), 
(179, 8, 40, 2), 
(180, 9, 40, 2), 
(181, 10, 40, 2), 
(182, 11, 40, 2), 
(183, 12, 40, 2), 
(184, 13, 40, 2), 
(185, 14, 40, 2), 
(186, 15, 40, 2), 
(187, 16, 40, 2), 
(188, 17, 40, 2), 
(189, 18, 40, 2), 
(190, 19, 40, 2), 
(191, 20, 40, 2), 
(192, 21, 40, 2), 
(193, 22, 40, 2), 
(194, 23, 40, 2), 
(195, 24, 40, 2), 
(196, 25, 40, 2), 
(197, 26, 40, 2), 
(198, 27, 40, 2), 
(199, 28, 40, 2), 
(200, 29, 40, 2), 
(201, 30, 40, 2), 
(202, 31, 40, 2), 
(203, 32, 40, 2), 
(204, 33, 40, 2), 
(205, 34, 40, 2), 
(206, 35, 40, 2), 
(207, 36, 40, 2), 
(208, 37, 40, 2), 
(209, 38, 40, 2), 
(210, 39, 40, 2), 
(211, 40, 40, 2), 
(212, 41, 40, 2), 
(213, 42, 40, 2), 
(214, 43, 40, 2), 
(215, 44, 40, 2), 
(216, 45, 40, 2), 
(217, 46, 40, 2), 
(218, 47, 40, 2), 
(219, 48, 40, 2), 
(220, 49, 40, 2), 
(221, 50, 40, 2), 
(222, 51, 40, 2), 
(223, 52, 40, 2), 
(224, 53, 40, 2), 
(225, 54, 40, 2), 
(226, 55, 40, 2), 
(227, 56, 40, 2), 
(228, 57, 40, 2), 
(229, 1, 50, 2), 
(230, 2, 50, 2), 
(231, 3, 50, 2), 
(232, 4, 50, 2), 
(233, 5, 50, 2), 
(234, 6, 50, 2), 
(235, 7, 50, 2), 
(236, 8, 50, 2), 
(237, 9, 50, 2), 
(238, 10, 50, 2), 
(239, 11, 50, 2), 
(240, 12, 50, 2), 
(241, 13, 50, 2), 
(242, 14, 50, 2), 
(243, 15, 50, 2), 
(244, 16, 50, 2), 
(245, 17, 50, 2), 
(246, 18, 50, 2), 
(247, 19, 50, 2), 
(248, 20, 50, 2), 
(249, 21, 50, 2), 
(250, 22, 50, 2), 
(251, 23, 50, 2), 
(252, 24, 50, 2), 
(253, 25, 50, 2), 
(254, 26, 50, 2), 
(255, 27, 50, 2), 
(256, 28, 50, 2), 
(257, 29, 50, 2), 
(258, 30, 50, 2), 
(259, 31, 50, 2), 
(260, 32, 50, 2), 
(261, 33, 50, 2), 
(262, 34, 50, 2), 
(263, 35, 50, 2), 
(264, 36, 50, 2), 
(265, 37, 50, 2), 
(266, 38, 50, 2), 
(267, 39, 50, 2), 
(268, 40, 50, 2), 
(269, 41, 50, 2), 
(270, 42, 50, 2), 
(271, 43, 50, 2), 
(272, 44, 50, 2), 
(273, 45, 50, 2), 
(274, 46, 50, 2), 
(275, 47, 50, 2), 
(276, 48, 50, 2), 
(277, 49, 50, 2), 
(278, 50, 50, 2), 
(279, 51, 50, 2), 
(280, 52, 50, 2), 
(281, 53, 50, 2), 
(282, 54, 50, 2), 
(283, 55, 50, 2), 
(284, 56, 50, 2), 
(285, 57, 50, 2)


-- Book_Loans Table Create and Fill Values --
---------------------------------------------


CREATE TABLE Book_Loans
(IndexID INT PRIMARY KEY,
BookId INT,
BranchId INT NOT NULL,
CardNo INT NOT NULL,
DateOut DATE,
DueDate DATE,
)


INSERT INTO Book_Loans
VALUES (1, 1, 10, 548977, '8012-11-02', '8012-11-29'), 
(2, 2, 10, 548977, '8012-11-02', '8012-11-29'), 
(3, 3, 10, 548977, '8012-11-02', '8012-11-29'), 
(4, 4, 10, 548977, '8012-11-02', '8012-11-29'), 
(5, 5, 10, 548977, '8012-11-02', '8012-11-29'), 
(6, 6, 10, 548977, '8012-11-02', '8012-11-29'), 
(7, 7, 10, 548977, '8012-11-02', '8012-11-29'), 
(8, 8, 10, 548977, '8012-11-02', '8012-11-29'), 
(9, 9, 10, 548977, '8012-11-02', '8012-11-29'), 
(10, 10, 10, 548977, '8012-11-02', '8012-11-29'), 
(11, 14, 20, 548978, '8012-11-14', '8012-12-04'), 
(12, 15, 20, 548978, '8012-11-14', '8012-12-04'), 
(13, 16, 20, 548978, '8012-11-14', '8012-12-04'), 
(14, 17, 20, 548978, '8012-11-14', '8012-12-04'), 
(15, 18, 20, 548978, '8012-11-14', '8012-12-04'), 
(16, 19, 20, 548978, '8012-11-14', '8012-12-04'), 
(17, 20, 20, 548978, '8012-11-14', '8012-12-04'), 
(18, 32, 30, 548979, '8012-11-20', '8012-12-19'), 
(19, 33, 30, 548979, '8012-11-20', '8012-12-19'), 
(20, 34, 30, 548979, '8012-11-20', '8012-12-19'), 
(21, 35, 30, 548979, '8012-11-20', '8012-12-19'), 
(22, 36, 30, 548979, '8012-11-20', '8012-12-19'), 
(23, 37, 30, 548979, '8012-11-20', '8012-12-19'), 
(24, 38, 30, 548979, '8012-11-20', '8012-12-19'), 
(25, 39, 30, 548979, '8012-11-20', '8012-12-19'), 
(26, 40, 30, 548979, '8012-11-20', '8012-12-19'), 
(27, 41, 30, 548979, '8012-11-20', '8012-12-19'), 
(28, 48, 40, 548980, '8013-01-03', '8013-01-23'), 
(29, 49, 40, 548980, '8013-01-03', '8013-01-23'), 
(30, 50, 40, 548980, '8013-01-03', '8013-01-23'), 
(31, 51, 40, 548980, '8013-01-03', '8013-01-23'), 
(32, 52, 40, 548980, '8013-01-03', '8013-01-23'), 
(33, 53, 40, 548980, '8013-01-03', '8013-01-23'), 
(34, 54, 40, 548981, '8013-01-08', '8013-01-25'), 
(35, 55, 40, 548981, '8013-01-08', '8013-01-25'), 
(36, 56, 40, 548981, '8013-01-08', '8013-01-25'), 
(37, 57, 40, 548981, '8013-01-08', '8013-01-25'), 
(38, 28, 50, 548982, '8013-01-16', '8013-02-16'), 
(39, 29, 50, 548982, '8013-01-16', '8013-02-16'), 
(40, 30, 50, 548982, '8013-01-16', '8013-02-16'), 
(41, 31, 50, 548982, '8013-01-16', '8013-02-16'), 
(42, 32, 50, 548982, '8013-01-16', '8013-02-16'), 
(43, 33, 50, 548982, '8013-01-16', '8013-02-16'), 
(44, 34, 50, 548982, '8013-01-16', '8013-02-16'), 
(45, 35, 50, 548982, '8013-01-16', '8013-02-16'), 
(46, 36, 50, 548982, '8013-01-16', '8013-02-16'), 
(47, 37, 50, 548982, '8013-01-16', '8013-02-16'), 
(48, 38, 50, 548982, '8013-01-16', '8013-02-16'), 
(49, 39, 50, 548982, '8013-01-16', '8013-02-16'), 
(50, 40, 50, 548982, '8013-01-16', '8013-02-16'), 
(51, 41, 20, 548983, '8013-01-16', '8013-02-16'), 
(52, 42, 20, 548983, '8013-01-16', '8013-02-16'), 
(53, 43, 20, 548983, '8013-01-16', '8013-02-16'), 
(54, 44, 20, 548983, '8013-01-16', '8013-02-16')

-- Borrower Table Create and Fill Values --
-------------------------------------------


CREATE TABLE Borrower
(CardNo INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
[Address] VARCHAR(100) NOT NULL,
Phone VARCHAR(12)
)

INSERT INTO Borrower
VALUES (548977, 'Bilbo Baggins', 'The Shire', '342-689-7543'),
(548978, 'Thorin Oakenshield', 'Lone Mountain', '623-869-2121'),
(548979, 'Sauron', 'Mordor', '343-545-1112'),
(548980, 'Elrond', 'Rivendell', '212-879-3576'),
(548981, 'Bard the Bowman', 'Lake-town', '754-787-8907'),
(548982, 'Bill Huggins', 'Southern Cave', '329-342-5487'),
(548983, 'The Great Goblin', 'Kingdom under the Misty Mountain', '339-494-3289'),
(548984, 'Tom Bombadil', 'Old Forest', '646-847-9090')