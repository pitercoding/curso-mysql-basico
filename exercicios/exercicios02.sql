-- Exercícios
select * from gafanhotos;

-- 1
select profissao, count(*) from gafanhotos
group by profissao;

-- 2
select sexo, count(sexo) from gafanhotos
where nascimento > '2005-01-01'
group by sexo
order by sexo;

-- 3
select nacionalidade, count(nacionalidade) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) >= '4'
order by count(nacionalidade) desc;

-- 4
select altura, peso, count(altura) from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos)
order by altura;
