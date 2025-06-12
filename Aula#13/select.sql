-- Agrupando
select * from cursos;

select totaulas from cursos
order by totaulas;

select totaulas, count(*) from cursos
group by totaulas;

select * from cursos where totaulas = 12;
select * from cursos where totaulas = 30 group by carga;

select carga, count(nome) from cursos
group by carga
having count(nome) > 3;

select ano, count(*) from cursos
group by ano
having ano > 2013
order by count(*) desc;

-- Selecinado, filtradado, agrupado, mostrando só quem está acima da média
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);
