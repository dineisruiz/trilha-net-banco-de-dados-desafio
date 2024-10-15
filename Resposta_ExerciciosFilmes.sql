--Exercício resolvido 1 
SELECT Nome,Ano  FROM Filmes

--Exercicio Resolvido 2
SELECT Nome,Ano from Filmes
ORDER BY Ano ASC

--Exercicio Resolvido 3
SELECT NOME, ANO, Duracao
FROM FILMES
WHERE NOME  Like 'De volta para o futuro'


--Exercicio Resolvido 4
SELECT NOME,ANO, Duracao
FROM FILMES
WHERE Ano = 1997

--Exercicio Resolvido 5

SELECT NOME,ANO, Duracao
FROM FILMES
WHERE Ano >= 2000

--Exercicio Resolvido 6


SELECT NOME,ANO, Duracao
FROM FILMES
WHERE Duracao > 100 And Duracao < 150
ORDER BY Duracao ASC

--Exercicio Resolvido 7

SELECT Ano, COUNT(*) AS Quantidade
FROM filmes
GROUP BY Ano
ORDER BY Quantidade DESC




--Exercicio Resolvido 8
SELECT PrimeiroNOME, UltimoNome,Genero
FROM Atores
WHERE Genero =  'M'

--Exercicio Resolvido 9
SELECT PrimeiroNOME, UltimoNome,Genero
FROM Atores
WHERE Genero =  'F'
Order BY PrimeiroNome

--Exercicio Resolvido 10

SELECT Filmes.nome AS Nome, Generos.Genero AS Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.idFilme
INNER JOIN Generos ON FilmesGenero.idGenero = Generos.id;



--Exercicio Resolvido 11

SELECT Filmes.nome AS Nome, Generos.Genero AS Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.idFilme
INNER JOIN Generos ON FilmesGenero.idGenero = Generos.id
WHERE Generos.Genero = 'Mistério'



--Exercicio Resolvido 12


SELECT Filmes.nome AS Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.id = ElencoFilme.idFilme
INNER JOIN Atores ON ElencoFilme.idAtor = Atores.id;
