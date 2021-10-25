create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

-- Criando tb_categoria
create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
    ativo boolean not null,
    primary key(id)
);

-- Criando tb_curso
create table tb_curso(
	id bigint auto_increment ,
	curso varchar (255) not null,
    vagas bigint not null,
	professor varchar(255),
    preco decimal(5,2),
	categoria_id bigint,
    
	primary key (id),
	foreign key (categoria_id) references tb_categoria(id)
);

-- Populando a tb_categoria
insert into tb_categoria(tipo, ativo) values ("Finanças", true);
insert into tb_categoria(tipo, ativo) values ("Tecnologia", true);
insert into tb_categoria(tipo, ativo) values ("Exatas", true);
insert into tb_categoria(tipo, ativo) values ("Humanas", true);
insert into tb_categoria(tipo, ativo) values ("Desenvolvimento Pessoal", true);

-- Populando tb_curso
insert into tb_curso(curso, vagas, professor, preco, categoria_id) values ("Investindo na Bolsa", 45, "Harry Potter", 29.99, 1);
insert into tb_curso(curso, vagas, professor, preco, categoria_id) values ("Lógica de Programação", 60, "Gina Weasley", 29.99, 2);
insert into tb_curso(curso, vagas, professor, preco, categoria_id) values ("História do Brasil", 47, "Hermione Granger", 54.99, 4);
insert into tb_curso(curso, vagas, professor, preco, categoria_id) values ("Programando em Phyton", 45, "Dumbleodore", 70.00, 2);
insert into tb_curso(curso, vagas, professor, preco, categoria_id) values ("Descomplicando suas economias", 3, "Voldemort", 19.99, 1);
insert into tb_curso(curso, vagas, professor, preco, categoria_id) values ("Fala bem", 67, "Severo Snape", 29.99, 5);
insert into tb_curso(curso, vagas, professor, preco, categoria_id) values ("Currículo Perfeito", 2, "Bellatriz Lestranger", 109.99, 5);
insert into tb_curso(curso, vagas, professor, preco, categoria_id) values ("Investindo na Bolsa", 40, "Sirius Black", 29.99, 1);

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where produto like "%j%";

select * from tb_curso inner join tb_categoria 
on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso where categoria_id = 2;