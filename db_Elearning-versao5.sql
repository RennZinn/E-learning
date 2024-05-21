create database DB_Elearning;
use DB_Elearning;

CREATE table CadastroUsuarios(
cpf varchar(14) not null,
nome varchar(50)not null,
email varchar(40) not null,
telefone varchar(14) not null,
endereco varchar(30) not null,
login varchar(20) not null,
senha varchar(15) not null
);

select * from CadastroUsuarios;

alter table CadastroMaterial
(
nome varchar(30) not null,
genero varchar(30) not null,
autor varchar (30) not null
);
DELETE FROM CadastroMaterial;

select * from CadastroMaterial;
delete a from Cadastromaterial;
INSERT INTO CadastroMaterial (nome, genero, autor) 
VALUES 
('Dom Quixote', 'Romance', 'Miguel de Cervantes'),
('Orgulho e Preconceito', 'Romance', 'Jane Austen'),
('1984', 'Ficção Científica', 'George Orwell'),
('Cem Anos de Solidão', 'Realismo Mágico', 'Gabriel García Márquez'),
('O Apanhador no Campo de Centeio', 'Romance', 'J.D. Salinger'),
('A Revolução dos Bichos', 'Ficção Política', 'George Orwell'),
('O Senhor dos Anéis', 'Fantasia', 'J.R.R. Tolkien'),
('O Pequeno Príncipe', 'Fábula', 'Antoine de Saint-Exupéry'),
('Crime e Castigo', 'Romance Psicológico', 'Fiódor Dostoiévski'),
('A Sangue Frio', 'Não-ficção', 'Truman Capote');

select * from AULA;
Create Table Aula(
nomeProf varchar(30),
Materia varchar(20),
Conteudo varchar(40),
Link varchar(100)

);
show tables; 
INSERT INTO Aula (nomeProf, Materia, conteudo, link) 
VALUES (
"HISTORIAR-TE","História", "Segunda guerra", "https://www.youtube.com/watch?v=Vq9oIj2ecU8" )