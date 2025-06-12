use cadastro;
select * from gafanhotos;
select * from cursos;

-- Se inicia com 'A'
select * from cursos
where nome like 'a%';

-- Encerrado com 'A'
select * from cursos
where nome like '%a';

-- Todos os registros com 'a' em qualquer local. inclusive com acentos
select * from cursos
where nome like '%a%';

-- Sem 'a' em nenhum local
select * from cursos
where nome not like '%a%';

-- Ter 'PH' no inicio, Ter 'P' em qualquer local
select * from cursos
where nome like 'PH%P%';

-- Ter 'PH' no inicio, Ter 'P' no fim com mais algum caracrter
select * from cursos
where nome like 'PH%P_';

-- Começa com 'p', tem uma letra depois (_), outro 'p'
select * from cursos
where nome like 'p_p%';

-- Buscando por "silva" em qualquer posição
select * from gafanhotos
where nome like '%silva%';

-- Buscando por "silva" com um espaço antes para sair só o sobrenome
select * from gafanhotos
where nome like '%_silva%';

-- Termina com "silva"
select * from gafanhotos
where nome like '%silva';

-- Lista única de um tipo
select distinct nacionalidade from gafanhotos
order by nacionalidade;

-- Conta todos os cursos
select count(*) from cursos;

-- Mostra todos os cursos com carga superior a 40
select * from cursos where carga > 40;

-- Mostra o número de cursos com carga superior a 40
select count(*) from cursos where carga > 40;

-- Ordenando pela carga. Mostrando a carga máxima
select * from cursos order by carga;
select max(carga) from cursos;

-- Mostrando total de aulas máxima
select max(totaulas) from cursos where ano = '2016';

-- Mostrando total de aulas mínimo
select nome, min(totaulas) from cursos where ano = '2016';

-- Soma
select sum(totaulas) from cursos where ano = '2016';

-- Média
select avg(totaulas) from cursos where ano = '2016';