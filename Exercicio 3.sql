/* Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes  com a nota maior do que 7.
Faça um select que retorne o/as estudantes  com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database	db_escola;

use db_escola;

create table tb_alunes(
	id int(5) auto_increment,
    nome varchar(30) not null,
    genero enum('ela', 'elu', 'ele', 'outro'),
    dataNascimento date,
    nota int(6),
    primary key (id));
    
insert into tb_alunes (nome, genero, datanascimento, nota) values ("Janaina", "ela", '1995-05-10', 6);
insert into tb_alunes (nome, genero, datanascimento, nota) values ("Vinicius", "elu", '1996-02-04', 7);
insert into tb_alunes (nome, genero, datanascimento, nota) values ("Teves", "ele", '1999-10-12', 8);
insert into tb_alunes (nome, genero, datanascimento, nota) values ("Laura", "ela", '1984-11-14', 5);
insert into tb_alunes (nome, genero, datanascimento, nota) values ("Raimundo", "ele", '1994-09-28', 10);
select * from tb_alunes;
    
select * from tb_alunes where nota > 7;
select * from tb_alunes where nota < 7;
update tb_alunes set nota = 8 where id = 5;