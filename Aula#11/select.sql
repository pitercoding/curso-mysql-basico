use cadastro;
select * from gafanhotos;
select * from cursos;

-- FILTRANDO COLUNAS:
-- Ordenando pela coluna nome
select * from cursos
order by nome;

-- Ordenando pela coluna nome de forma decrescente
select * from cursos
order by nome desc;

-- Mostrando somente algumas colunas
select nome, carga, ano from cursos
order by nome;

-- Mostrando somente algumas colunas e ordenando por ano e nome
select ano, nome, carga from cursos
order by ano, nome;

-- FILTRANDO LINHAS
-- Selecionando uma linha específica "2016" e ordenando por coluna "nome"
select * from cursos
where ano = '2016'
order by nome;

-- Mostrando somente algumas colunas. Selecionando uma linha específica "2016" e ordenando por coluna "nome" 
select nome, carga from cursos
where ano = '2016'
order by nome;

-- Mostrando somente algumas colunas. Linha contendo '2016' e ordenando por ano e nome 
select nome, descricao, ano from cursos
where ano <= '2016'
order by ano, nome;

-- Between / and - Faixa de valores
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;

-- IN - Valores específicos
select nome, descricao, ano from cursos
where ano in (2014, 2016, 2020)
order by ano;

-- Usando Operadores Lógicos
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30
order by nome;
