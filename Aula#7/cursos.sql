-- Inserinfo valore sna tabela cursos
insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '38', '2014'),
('4', 'PGP', 'Curso de PHP para Iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '40', '15', '2016'),
('7', 'Word', 'Curso Completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'Youtuber', 'Gerar Polêmica e ganhar inscritos', '5', '2', '2018');

-- Corrigindo uma linha com um erro de digitação
update cursos
set nome = 'HTML5'
where idcurso = '1';

-- Corrigindo uma linha com dois erros de digitação
update cursos
set nome = 'PHP', ano = '2016'
where idcurso = 4;

-- Corrigindo uma linha com três erros de digitação
update cursos
set nome = 'Java', carga = '40', ano = '2016'
where idcurso = '5'
limit 1;

-- Aletrando mais de uma linha ao mesmo tempo
update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

-- Deletando da tabela linhas desnecessárias
delete from cursos
where ano = '2050'
limit 2;

-- Apagandpo todas as linhas (por consequência os dados) da tabela
truncate cursos;

select * from cursos;