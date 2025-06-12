-- Exercícios
select * from gafanhotos;

-- 1
select nome, sexo from gafanhotos
where sexo = 'F'
order by nome;

-- 2
select nome, nascimento from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

-- 3
select nome, sexo, profissao from gafanhotos
where sexo = 'M' and profissao = 'programador'
order by nome;

-- 4
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%'
order by nome;

-- 5
select nome, nacionalidade from gafanhotos
where sexo = 'M' and nacionalidade != 'Brasil' and nome like '%silva%' and peso < '100'
order by nome;

-- 6
select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

-- 7
select avg(peso) from gafanhotos;

-- 8
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- 9
select nome, altura from gafanhotos
where sexo = 'F' and altura > '1.90';