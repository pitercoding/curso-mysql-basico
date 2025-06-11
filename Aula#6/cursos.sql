-- Descrição completa da tabela com todos os tipos primitivos
describe pessoas;

-- Adicionando coluna "profissao":
alter table pessoas
add column profissao varchar(10) after nome;

-- Modificando definições
alter table pessoas
modify column profissao varchar(20) not null default '';

-- Trocando o nome de uma coluna
alter table pessoas
change column profissao prof varchar(20) not null default '';

alter table pessoas
rename to alienigenas;

-- Adicionando a coluna "codigo" como primeira. 
alter table pessoas
add codigo int first;

-- Removendo coluna "profissao":
alter table pessoas
drop column profissao;

-- Checando dados da table "Pessoas"
select * from pessoas;

-- Criando nova tabela "Cursos"
create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int,
ano year default '2025'
) default charset = utf8;

-- Adicionando coluna "Idcurso"
alter table cursos
add column idcurso int first; 

-- Adicionando PK
alter table cursos
add primary key (idcurso);

describe cursos;
select * from cursos;