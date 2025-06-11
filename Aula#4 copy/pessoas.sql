-- Criando o Banco de dados "CADASTRO":
create database cadastro
default character set utf8
default collate utf8_general_ci;

-- Criando tabela "PESSOAS" e suas regras:
create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M' , 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8;

-- inserindo dados:
/*
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Adalgiza', '1930-11-2', 'F', '63.2', '1.75', 'Irlanda');
*/

-- Simplificando a inserção de dados:
insert into pessoas values
(default, 'Adalgiza', '1930-11-2', 'F', '63.2', '1.75', 'Irlanda');

-- Inserindo vários dados ao mesmo tempo:
insert into pessoas values
(default, 'Ana', '1975-12-22', 'F', '52.3', '1.45','EUA'),
(default, 'Pedro', '2000-07-15', 'M', '87', '2', default),
(default, 'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

-- Checando os dados na tabela:
select * from pessoas;