CREATE TABLE [dbo].[Subjects]
(
 [SubShort] NVARCHAR(50) NOT NULL PRIMARY KEY,
 [SubName] NVARCHAR(50) unique NOT NULL
)
CREATE TABLE [dbo].[Students]
( 
 [ID] INT NOT NULL PRIMARY KEY,
 [FirstName] NVARCHAR(50) NOT NULL,
 [SurName] NVARCHAR(50) NOT NULL,
 [BirthDate] date NOT NULL 
)
CREATE TABLE [dbo].[RegSubjects]
( 
 [ID] INT NOT NULL,
 [SubShort] NVARCHAR(50) NOT NULL,
 FOREIGN KEY(ID)REFERENCES Students(ID),
 FOREIGN KEY(SubShort)REFERENCES Subjects(SubShort)
)
CREATE TABLE [dbo].[Evaluations]
( 
 [ID] INT NOT NULL,
 [SubShort] NVARCHAR(50) NOT NULL,
 [Points] INT NOT NULL, 
 [EvalDate] date NOT NULL, 
 PRIMARY KEY(ID,SubShort), 
 FOREIGN KEY(ID)REFERENCES Students(ID),
 FOREIGN KEY(SubShort)REFERENCES Subjects(SubShort)
)

INSERT INTO [dbo].[Subjects]
VALUES (N'BPC-OOP', N'Objektovo orientovane programovanie')
	   ,(N'BPC-PC2T', N'Pocitace a programovanie 2')
       ,(N'BPC-ELF', N'Elektronicke filtry')
	   ,(N'BPC-DAK', N'Datova komunikacia')
INSERT INTO [dbo].[Students]
VALUES (1,N'Jakub', N'Kajub', '2000-06-11')
	   ,(2,N'Matus', N'Kajub', '1998-05-20')
       ,(3,N'Juraj', N'Rujaj', '1999-09-03')
	   ,(4,N'Peter', N'Teper', '2000-02-02')
INSERT INTO [dbo].[RegSubjects]
VALUES (1, N'BPC-OOP')
	   ,(1, N'BPC-ELF')
       ,(2, N'BPC-PC2T')
	   ,(2, N'BPC-DAK')
	   ,(3, N'BPC-OOP')
	   ,(3, N'BPC-DAK')
	   ,(4, N'BPC-PC2T')
	   ,(4, N'BPC-ELF')
INSERT INTO [dbo].[Evaluations]
VALUES (1, N'BPC-OOP', 75, '2021-05-05')
	   ,(1, N'BPC-ELF', 60, '2021-05-07')
       ,(2, N'BPC-PC2T', 56, '2021-05-03')
	   ,(2, N'BPC-DAK', 64, '2021-05-09')
	   ,(3, N'BPC-OOP', 89, '2021-05-05')
	   ,(3, N'BPC-DAK', 49, '2021-05-09')
	   ,(4, N'BPC-PC2T', 98, '2021-05-03')
	   ,(4, N'BPC-ELF', 76, '2021-05-07')