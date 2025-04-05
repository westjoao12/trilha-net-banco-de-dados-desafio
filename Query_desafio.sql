--Desafios:


-- 1º - Buscar o nome e ano dos filmes
select 
Nome, 
Ano 
from Filmes;

-- 2º - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select 
Nome, 
Ano 
from Filmes
order by Ano asc;

-- 3º - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select 
Nome,
Ano,
Duracao 
from Filmes
where Nome='De Volta para o Futuro';


-- 4º - Buscar os filmes lançados em 1997
select 
Nome,
Ano,
Duracao 
from Filmes
where Ano='1997';

-- 5º - Buscar os filmes lançados APÓS o ano 2000
select 
Nome,
Ano,
Duracao 
from Filmes
where Ano>'2000';


-- 6º - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select 
Nome,
Ano,
Duracao 
from Filmes
where Duracao>'100' and Duracao<150
order by Duracao asc;

-- 7º - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select 
Ano,
count(Ano) as Quantidade
from Filmes
group by Ano
order by Quantidade desc;

-- 8º - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select 
Id,
PrimeiroNome,
UltimoNome,
Genero
from Atores
where Genero='M'

-- 9º - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select 
Id,
PrimeiroNome,
UltimoNome,
Genero
from Atores
where Genero='F'
order by PrimeiroNome;

-- 10º - Buscar o nome do filme e o gênero
select 
F.Nome,
G.Genero
from FilmesGenero as FG
inner join Filmes as F
on FG.IdFilme=F.Id
inner join Generos as G
on FG.IdGenero=G.Id;

-- 11º - Buscar o nome do filme e o gênero do tipo "Mistério"
select 
F.Nome,
G.Genero
from FilmesGenero as FG
inner join Filmes as F
on FG.IdFilme=F.Id
inner join Generos as G
on FG.IdGenero=G.Id
where G.Genero='Mistério';

-- 12º - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
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