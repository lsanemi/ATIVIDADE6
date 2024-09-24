use bancotimes;

INSERT INTO times (nome, valor, anodefundacao)
VALUES ('Real Madrid', 8000000, 1914);

INSERT INTO jogadores (nome, salario, datanascimento, idtime)
VALUES ('Neymar Junior', 10000000, '1992-02-05', 
(SELECT idtimes FROM times WHERE nome = 'Flamengo'));

INSERT INTO jogadores (nome, salario, datanascimento, idtime)
VALUES ('CR7', 500000, '2024-09-20', 
(SELECT idtimes FROM times WHERE nome = 'Vasco'));

UPDATE times
SET valor = 100000
WHERE nome = 'Vasco';

UPDATE times
SET nome = 'EC Bahia'
WHERE nome = 'Novo Bahia';

DELETE FROM times
WHERE nome = 'Real Madrid';

DELETE FROM jogadores
WHERE nome = 'CR7';

DELETE FROM jogadores
WHERE nome = 'Kaka';