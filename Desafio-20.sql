CREATE DATABASE YOUTUBE;

USE YOUTUBE;

CREATE TABLE Canal(
CanalID int Primary Key,
Nome varchar(150) not null,
ContagemInscritos int default 0,
DataCriacao datetime not null
);

select * from canal;

CREATE TABLE VIDEO(
VideoID INT PRIMARY KEY,
NOME VARCHAR(150) NOT NULL,
Visualizacoes INT DEFAULT 0,
LIKES INT DEFAULT 0,
DISLIKES INT DEFAULT 0,
DURACAO INT NOT NULL,
CanalID INT FOREIGN KEY REFERENCES CANAL(CanalID)
);

select * from video