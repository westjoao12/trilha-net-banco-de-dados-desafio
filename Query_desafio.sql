--Desafios:


-- 1� - Buscar o nome e ano dos filmes
select 
Nome, 
Ano 
from Filmes;

-- 2� - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select 
Nome, 
Ano 
from Filmes
order by Ano asc;

-- 3� - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
select 
Nome,
Ano,
Duracao 
from Filmes
where Nome='De Volta para o Futuro';


-- 4� - Buscar os filmes lan�ados em 1997
select 
Nome,
Ano,
Duracao 
from Filmes
where Ano='1997';

-- 5� - Buscar os filmes lan�ados AP�S o ano 2000
select 
Nome,
Ano,
Duracao 
from Filmes
where Ano>'2000';


-- 6� - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select 
Nome,
Ano,
Duracao 
from Filmes
where Duracao>'100' and Duracao<150
order by Duracao asc;

-- 7� - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select 
Ano,
count(Ano) as Quantidade
from Filmes
group by Ano
order by Quantidade desc;

-- 8� - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
select 
Id,
PrimeiroNome,
UltimoNome,
Genero
from Atores
where Genero='M'

-- 9� - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select 
Id,
PrimeiroNome,
UltimoNome,
Genero
from Atores
where Genero='F'
order by PrimeiroNome;

-- 10� - Buscar o nome do filme e o g�nero
select 
F.Nome,
G.Genero
from FilmesGenero as FG
inner join Filmes as F
on FG.IdFilme=F.Id
inner join Generos as G
on FG.IdGenero=G.Id;

-- 11� - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select 
F.Nome,
G.Genero
from FilmesGenero as FG
inner join Filmes as F
on FG.IdFilme=F.Id
inner join Generos as G
on FG.IdGenero=G.Id
where G.Genero='Mist�rio';

-- 12� - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select 
F.Nome,
A.PrimeiroNome,
A.UltimoNome,
EF.Papel
from ElencoFilme as EF
inner join Atores as A
on EF.IdAtor=A.Id
inner join Filmes as F
on EF.IdFilme=F.Id;