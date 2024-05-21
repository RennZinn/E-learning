create database DB_Elearning;
use DB_Elearning;

create table CadastroUsuarios(
codigo int primary key auto_increment,
cpf varchar(14) not null,
nome varchar(50)not null,
email varchar(40) not null,
telefone varchar(14) not null,
endereco varchar(30) not null,
login varchar(20) not null,
senha varchar(15) not null
);

select * from CadastroUsuarios;

ALTER TABLE CadastroMaterial

create table CadastroMaterial(
codigo int primary key auto_increment,
nome varchar(80) not null,
genero varchar(40) not null,
autor varchar (60) not null
);
DELETE FROM CadastroMaterial;

select * from CadastroMaterial;
delete a from Cadastromaterial;
INSERT INTO CadastroMaterial (nome, genero, autor) VALUES
('Introdução à Economia', 'Economia', 'N. Gregory Mankiw'),
('Biologia: Uma Abordagem Molecular e Celular', 'Biologia', 'Bruce Alberts'),
('Cálculo: Volume 1', 'Matemática', 'James Stewart'),
('Princípios de Química: Questionando a Vida Moderna e o Meio Ambiente', 'Química', 'Peter Atkins'),
('Psicologia Geral', 'Psicologia', 'David G. Myers'),
('Fundamentos da Física', 'Física', 'David Halliday e Robert Resnick'),
('História do Brasil', 'História', 'Boris Fausto'),
('Sociologia Geral e do Direito', 'Sociologia', 'Rosângela Lunardelli Cavallazzi'),
('Introdução à Administração', 'Administração', 'Antonio Cesar Amaru Maximiano'),
('Estatística Básica', 'Estatística', 'Wilton de Oliveira Bussab e Pedro Alberto Morettin'),
('Filosofia: Questões e Diálogos', 'Filosofia', 'Paulo Ghiraldelli Jr.'),
('Linguagem C: Completa e Descomplicada', 'Programação', 'André Backes'),
('Contabilidade Básica', 'Contabilidade', 'José Carlos Marion'),
('Direito Constitucional', 'Direito', 'Pedro Lenza'),
('Introdução à Lógica Matemática', 'Matemática', 'A. C. Costa'),
('Geografia Geral e do Brasil', 'Geografia', 'Eustáquio de Sene'),
('Fisiologia Médica', 'Medicina', 'Arthur C. Guyton e John E. Hall'),
('Administração de Marketing', 'Marketing', 'Philip Kotler'),
('Didática: Teoria e Prática', 'Educação', 'José Carlos Libâneo'),
('Microeconomia', 'Economia', 'Hal R. Varian'),
('Eletromagnetismo', 'Física', 'David J. Griffiths');



select * from AULA;
create Table Aula(
codigo int primary key auto_increment,
nomeProf varchar(30),
Materia varchar(20),
Conteudo varchar(40),
Link varchar(100)

);
show tables; 
INSERT INTO Aula (nomeProf, Materia, conteudo, link) 
VALUES (
"HISTORIAR-TE","História", "Segunda guerra", "https://www.youtube.com/watch?v=Vq9oIj2ecU8" )