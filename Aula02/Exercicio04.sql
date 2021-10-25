create database db_cidade_das_frutas;

use db_cidade_das_frutas;

-- Criando tb_categoria
create table tb_categoria(
	id bigint auto_increment,
    descricao varchar(255) not null,
    ativo boolean not null,
    origem varchar(255) not null,
    primary key(id)
);

-- Criando tb_produto
create table tb_produto(
	id bigint auto_increment ,
	nome varchar (255) not null,
	preco decimal(5,2),
	quantidade varchar(7),
	validade date,
	categoria_id bigint,
	primary key (id),
	foreign key (categoria_id) references tb_categoria(id)
);

-- Populando a tb_categoria
insert into tb_categoria(descricao, origem, ativo) values ("Orgânico", "Mercado Municipal de Pinheiros", true);
insert into tb_categoria(descricao, origem, ativo) values ("Orgânico", "Mercado Municipal", true);
insert into tb_categoria(descricao, origem, ativo) values ("Não-Orgânico", "CEAGESP", true);
insert into tb_categoria(descricao, origem, ativo) values ("Orgânico", "Mercadão", true);
insert into tb_categoria(descricao, origem, ativo) values ("Não-Orgânico", "CEAGESP", true);

-- Populando a tb_produto
insert into tb_produto(nome, preco, validade, quantidade, categoria_id) values ("Melância", 6.00,"24-09-21", "1Kg",1);
insert into tb_produto(nome, preco, validade, quantidade, categoria_id) values ("Melão", 12.50,"25-10-21", "500",2);
insert into tb_produto(nome, preco, validade, quantidade, categoria_id) values ("Maçã", 5.00,"19-11-21", "60g",3);
insert into tb_produto(nome, preco, validade, quantidade, categoria_id) values ("Banana", 7.99,"18-10-21", "dúzia",1);
insert into tb_produto(nome, preco, validade, quantidade, categoria_id) values ("Goiaba", 10.90,"22-10-21", "1Kg",2);
insert into tb_produto(nome, preco, validade, quantidade, categoria_id) values ("Pera", 8.00,"25-10-21", "10un",4);
insert into tb_produto(nome, preco, validade, quantidade, categoria_id) values ("Chuchu", 3.50,"18-10-21", "100g",5);
insert into tb_produto(nome, preco, validade, quantidade, categoria_id) values ("Couve", 55,"30-10-21", "10Kg",3);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where produto like "%c%";

select tb_produto.nome, tb_produto.preco, tb_produto.validade, tb_produto.quantidade, tb_categoria.descricao, tb_categoria.origem, tb_categoria.ativo, tb_produto.categoria_id
from tb_produto inner join tb_categoria 
on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id = 3;

