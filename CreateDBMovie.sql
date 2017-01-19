------------Save Script as
------------C:\Joestopros\CreateDBMovie.sql

USE master

IF EXISTS (SELECT * FROM sys.sysdatabases 
        WHERE [name] = 'dbMovie')
DROP DATABASE dbMovie
GO

CREATE DATABASE dbMovie
GO

USE dbMovie
GO

create table tblMovie
(m_id int primary key,
m_Title varchar(30) not null,
m_Runtime int,
m_Rating varchar(10))

INSERT INTO tblMovie
VALUES (1,'A-List Explorers', 96, 'PG-13'),
  (2,'Bonker Bonzo',75,'G'), 
  (3,'Chumps to Champs',75,'PG-13')

INSERT INTO tblMovie
VALUES (4,'Dare the world to Try',110,'R'),
      (5,'EeeeGhads',88,'G')
