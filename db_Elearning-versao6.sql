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

create table CadastroMaterial(
codigo int primary key auto_increment,
nome varchar(80) not null,
genero varchar(40) not null,
autor varchar (60) not null
);

select * from CadastroMaterial;

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

INSERT INTO Aula (nomeProf, Materia, conteudo, link) VALUES 
("HISTORIAR-TE","História", "Segunda Guerra", "https://www.youtube.com/watch?v=Vq9oIj2ecU8" ),
("Prof Noslen","Português","Figuras de Linguagem","https://www.youtube.com/watch?v=UY-9_Wt6C-U"),
("Sandro Curió","Matemática", "Probabilidade", "https://www.youtube.com/watch?v=iNCkGogNtKI" ),
("Gabriel Cabral","Química","Estequiometria Básica","https://www.youtube.com/watch?v=lHaNpSqdabs"),
("Jeangrafia","Geografia","Cartografia","https://www.youtube.com/watch?v=x0B7Wv6bCfU"),
("Português com Letícia","Português", "Acentuação", "https://www.youtube.com/watch?v=vmKggNWVvtU" ),
("Prof Noslen","Português","Regência Nominal","https://www.youtube.com/watch?v=kpzcFU_zNqE"),
("Gis com Giz Matemática","Matemática", "Função Quadrática", "https://www.youtube.com/watch?v=IfTsMZpH_tA" ),
("HISTORIAR-TE","História", "BRASIL COLÔNIA - Ciclo do açúcar", "https://www.youtube.com/watch?v=7XxM00hEWoU" ),
("Professo Boaro","Física","Velocidade Média","https://www.youtube.com/watch?v=wlTa_yTElGM"),
("Sandro Curió","Matemática", "Equação de 2º grau", "https://www.youtube.com/watch?v=Xv2QrQK9I7E" ),
("Prof Noslen","Português","Transitividade Verbal","https://www.youtube.com/watch?v=y2haxLgR4BM"),
("HISTORIAR-TE","História", "Grécia Antiga", "https://www.youtube.com/watch?v=ijU4-hf7lGE" ),
("Paulo Jubilut","Biologia", "Divisão Celular", "https://www.youtube.com/watch?v=EkRs9kL5Kw4" ),
("Professor Boaro","Física","Óptica Geométrica","https://www.youtube.com/watch?v=QKPj0f3mN5c"),
("Paulo Jubilut","Biologia", "Sistema Nervoso", "https://www.youtube.com/watch?v=_prsDDg_cJM" ),
("Gabriel Cabral","Química","Ligação Iônica","https://www.youtube.com/watch?v=c_jzS4NDeSI"),
("Português com Letícia","Português", "Crase", "https://www.youtube.com/watch?v=bOwq8PFHuKU" ),
("Português com Letícia","Português","Concordância Verbal","https://www.youtube.com/watch?v=s2T9Ap2J7u0"),
("Gabriel Cabral","Química", "Distribuição Eletrônica", "https://www.youtube.com/watch?v=81tl1rYCJTc" ),
("Professo Boaro","Física","Movimento Uniforme","https://www.youtube.com/watch?v=JZ3jJBA1KL8"),
("Profa Anelize","História", "Civilizações Pré-Colombianas", "https://www.youtube.com/watch?v=4IKJM17ExiI" ),
("Professora Pamba","Português","Objeto Direto e Indireto","https://www.youtube.com/watch?v=MDQgpMFajpM"),
("Samuel Cunha","Biologia", "Fotossíntese", "https://www.youtube.com/watch?v=SDNc_5qXa0Q" ),
("Jeangrafia","Geografia", "Globalização", "https://www.youtube.com/watch?v=zoiqjFFS3qU" ),
("Sandro Curió","Matemática","Logaritmo","https://www.youtube.com/watch?v=MVZKF_W2Hd0"),
("Professor Boaro","Física", "Tensão e Potência Elétrica", "https://www.youtube.com/watch?v=lHxwOQykNR0" ),
("Profa Anelize","História","Iluminismo","https://www.youtube.com/watch?v=ZEJ-n1FAMFk"),
("Gis com Giz Matemática","Matemática", "Juros Simples", "https://www.youtube.com/watch?v=aZcETuhXxPw" ),
("Prof Noslen","Português","Funções de Linguagem","https://www.youtube.com/watch?v=d6kS7zj8p2Q"),
("Samuel Cunha","Biologia","1ª e 2ª Leis de Mendel","https://www.youtube.com/watch?v=EN8srOjtQpw"),
("Paulo Valim","Química", "Bases", "https://www.youtube.com/watch?v=FzClnCk3QQ8" ),
("Davi Oliveira","Física","Corrente Elétrica","https://www.youtube.com/watch?v=jAl-EaUwKnc"),
("Kennedy Ramos","Biologia", "Introdução à Genética", "https://www.youtube.com/watch?v=5WYppSqaCrE" ),
("Jeangrafia","Geografia","Geografia Física","https://www.youtube.com/watch?v=yFFSphpiBuE"),
("HISTORIAR-TE","História", "Era Vargas", "https://www.youtube.com/watch?v=DL9llZP4a6k" ),
("Samuel Cunha","Biologia", "Proteínas", "https://www.youtube.com/watch?v=ryW0698xdyY" ),
("Ricardo Marcílio","Geografia","Coordenadas Geográficas","https://www.youtube.com/watch?v=F9DXZoV97w8"),
("Paulo Jubilut","Biologia", "Ácidos Nucleicos", "https://www.youtube.com/watch?v=ii7b3cF7j4o" ),
("Ricardo Marcílio","Geografia","Urbanização","https://www.youtube.com/watch?v=jPZyKuMrAj4"),
("Português com Letícia","Português", "Conjunções", "https://www.youtube.com/watch?v=2Pk3W74Mh2o" ),
("Gabriel Cabral","Química", "Molaridade", "https://www.youtube.com/watch?v=vVdImora76A" ),
("Davi Oliveira","Física","Trabalho de uma Força","https://www.youtube.com/watch?v=3SOzLz9g0uw"),
("Profa Anelize","História", "Feudalismo", "https://www.youtube.com/watch?v=ViSTSw_YY3A" ),
("Paulo Valim","Química","Densidade e a Água","https://www.youtube.com/watch?v=YUjobY2mSzg"),
("Português com Letícia","Português","Orações Subordinadas Substantivas","https://www.youtube.com/watch?v=3ut2uySWn9Y"),
("Professor Boaro","Física","Ação e Reação","https://www.youtube.com/watch?v=0DPG181WAUw"),
("Ricardo Marcílio","Geografia", "Translação e Rotação", "https://www.youtube.com/watch?v=bTutNM9mJRM" ),
("Gabriel Cabral","Química","Isomeria Geométrica","https://www.youtube.com/watch?v=ckP-dm7d-6s");