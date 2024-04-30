CREATE table CadastroUsuarios(
ra int primary key auto_increment,
cpf varchar(14) not null,
rg varchar(12) not null,
nomeCompleto varchar(50)not null,
dataNascimento date not null,
email varchar(40) not null,
telefone varchar(14) not null,
endereco varchar(30) not null,
bairro varchar(20) not null,
numero int not null,
cidade varchar(20) not null,
estado varchar(2) not null,
pais varchar(20) not null,
senha varchar(15) not null
)
select * from CadastroUsuarios;

Create table CadastroCurso(
horasCurso int not null,
horarioAula int not null,
dataInicio date not null,
dataAula date not null,
materialCurso varchar(40) not null,
professor varchar(40) not null
)
select * from CadastroCurso;


Create table CadastroMaterial
(
numeroDeSerie int primary key auto_increment,
genero varchar(15) not null,
quantidadeMaterial int not null,
posseLivro varchar(30),
entragaPosse date not null
)

