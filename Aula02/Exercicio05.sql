create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

-- Criando tb_categoria
create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
    ativo boolean not null,
    primary key(id)
);

-- Criando tb_produto
create table tb_produto(
	id bigint auto_increment ,
	nome varchar (255) not null,
    quantidade varchar(255),
	preco decimal(5,2),
	entrega date,
	categoria_id bigint,
	primary key (id),
	foreign key (categoria_id) references tb_categoria(id)
);

-- Populando a tb_categoria
insert into tb_categoria(tipo, ativo) values ("Materiais de Construção", true);
insert into tb_categoria(tipo, ativo) values ("Elétrico", true);
insert into tb_categoria(tipo, ativo) values ("Tubulação", true);
insert into tb_categoria(tipo, ativo) values ("Não-Especificado", true);

-- Populando a tb_produto
insert into tb_produto(nome, quantidade, preco, entrega, categoria_id) values ("Cano", 40, 10.99, "24-09-21",3);
insert into tb_produto(nome, quantidade, preco, entrega, categoria_id) values ("Fio de Cobre", 3, 55.50, "25-10-21",2);
insert into tb_produto(nome, quantidade, preco, entrega, categoria_id) values ("Areia", 70, 5.00, "19-11-21",1);
insert into tb_produto(nome, quantidade, preco, entrega, categoria_id) values ("Cimento", 8, 7.99,"18-10-21", 1);
insert into tb_produto(nome, quantidade, preco, entrega, categoria_id) values ("Braçadeira", 46, 6.90,"22-10-21", 1);
insert into tb_produto(nome, quantidade, preco, entrega, categoria_id) values ("Tomada", 47, 8.00,"25-10-21", 4);
insert into tb_produto(nome, quantidade, preco, entrega, categoria_id) values ("Prego", 100, 1.50,"18-10-21", 4);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where produto like "%c%";

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where categoria_id = 1;