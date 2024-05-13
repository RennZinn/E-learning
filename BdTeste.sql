create database BdProjetoA3;
use BdProjetoA3;

create table TbUsuario
(nome varchar(30) not null,
email varchar(30) not null,
endereco varchar(50) not null,
cpf varchar(14) not null,
telefone varchar(14) not null,
login varchar(20) not null,
senha varchar(15) not null)

select * from TbUsuario;