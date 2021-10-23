/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as 
informações dos funcionaries desta empresa. Crie uma tabela de funcionaries e utilizando a habilidade de
abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados; 
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
*/

CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE funcionario (

	idFunc bigint auto_increment,
    nomeFunc varchar(250) not null,
    cargoFunc varchar(250) not null,
	idade int not null,
    salario decimal(8,2) not null,

	primary key (idFunc)
);

INSERT INTO funcionario(nomeFunc,cargoFunc,idade,salario) VALUES ("Juliana Macedo", "DEV Júnior", 25, 3100);
INSERT INTO funcionario(nomeFunc,cargoFunc,idade,salario) VALUES ("Sofia Souza", "Estagiária", 34, 1500);
INSERT INTO funcionario(nomeFunc,cargoFunc,idade,salario) VALUES ("Joel Silva", "Faxineiro", 46, 1350);
INSERT INTO funcionario(nomeFunc,cargoFunc,idade,salario) VALUES ("Suzana", "CEO", 50, 18000);
INSERT INTO funcionario(nomeFunc,cargoFunc,idade,salario) VALUES ("Ana Macedo", "Gerente de Projetos", 39, 6000);


SELECT * FROM funcionario;

-- Salários MAIORES que R$2000
SELECT nomeFunc "Funcionário", cargoFunc "Cargo", salario FROM funcionario
WHERE salario > 2000;
;

-- Salários MENORES que R$2000
SELECT nomeFunc "Funcionário", cargoFunc "Cargo", salario FROM funcionario
WHERE salario < 2000;
;

-- Atualizando dado da tabela
UPDATE funcionario SET cargoFunc = "Ajudante Geral", salario = 1600
WHERE nomeFunc LIKE 'Ana';

SELECT * FROM funcionario;