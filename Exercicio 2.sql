/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste 
ecommerce. Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes
dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
*/

CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE produtos (
	
	id bigint auto_increment,
    nomeProd varchar(50) NOT NULL,
    descricao varchar(250) NOT NULL,
    categoria varchar(50) NOT NULL,
    valor decimal(8,2) NOT NULL,
	ranking int,

	primary key (id)
);

INSERT INTO produtos (nomeProd, descricao, categoria, valor, ranking)
VALUES ("Pano de prato","pano com desenho de patos","Produto para Casa",10.99,4);
INSERT INTO produtos (nomeProd, descricao, categoria, valor, ranking)
VALUES ("Aparador de porta","Hold he Door","Item colecionador",199.99,2);
INSERT INTO produtos (nomeProd, descricao, categoria, valor, ranking)
VALUES ("Caneta de glitter","rosa","Item Papelaria",2.99,5);
INSERT INTO produtos (nomeProd, descricao, categoria, valor, ranking)
VALUES ("Tela de computador","Tela 50'","Eletrônico",199.99,4);
INSERT INTO produtos (nomeProd, descricao, categoria, valor, ranking)
VALUES ("Panela de pressão","Tramontina","Produto para Casa",599.99,25




SELECT id, nomeProd "Nome do Produto", descricao, categoria, valor, estrela FROM produtos;

-- Produtos com preços MAIORES que R$500
SELECT id, nomeProd "Nome do Produto", descricao, categoria, valor, estrela FROM produtos
WHERE valor > 500;

-- Produtos com preços MENORES QUE R$500
SELECT id, nomeProd "Nome do Produto", descricao, categoria, valor, estrela FROM produtos
WHERE valor < 500;

-- Atualizando dado da tabela
UPDATE produtos SET valor = 1099
WHERE id = 2;

SELECT id, nomeProd "Nome do Produto", descricao, categoria, valor, estrela FROM produtos;