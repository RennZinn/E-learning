use db_pessoas2;
create table  tb_pessoa(
codigo int primary key auto_increment,
nome varchar(50),
fone varchar(15) not null,
email varchar(50) not null
);

insert into tb_pessoa
(nome, fone, email)
values ("ede", "00213", "lasdhoo"),
("1", "0", "@yahoo");

Create Table adm(
codigoadm int primary key auto_increment,
senhaadm int not null
)
insert into adm
(codigoadm,senhaadm)
values(0000,1234)
select * from adm