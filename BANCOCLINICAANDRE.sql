use `clinica2021`;

INSERT INTO pacientes (nome, sexo, idade, doenca_inicial) 
VALUES ('Andre Luiz', 'm', 20, 'apendicite');

INSERT INTO doencas (descricao) VALUES ('xaminamina hehe waka waka hehe');

INSERT INTO ambulatorios (numero, andar, capacidade) VALUES ('14', 1, 30);

UPDATE pacientes SET nome = 'Andre Luiz Borges Aguiar', idade = 30 WHERE nome = 'Andre Luiz';

DELETE FROM doencas WHERE descricao = 'xaminamina hehe waka waka hehe';

INSERT INTO funcionarios (idambulatorios, nome, idade, sexo, salario, cidade) VALUES (20, 'cleide', 30, 'f', 20, 'piracicuiba');

INSERT INTO especialidades (descricao) VALUES ('seilalogista');

INSERT INTO medicos (idambulatorios, nome, crm, salario, idade, idespecialidades) VALUES (1, 'Pedro Nunes', '2310', 7000, 28, 5);

UPDATE medicos SET salario = 10000 WHERE nome = 'Pedro Nunes' AND crm = '2310';

UPDATE ambulatorios SET capacidade = 50 WHERE idambulatorios = 2;

INSERT INTO pacientes (nome, sexo, idade, doenca_inicial) VALUES ('Gilberto Vasconcelos', 'm', 26, 'Enxaqueca');

DELETE FROM pacientes WHERE nome = 'Gilberto Vasconcelos';

INSERT INTO consultas (idmedicos, idpacientes, idambulatorios, dia, hora, iddoencas) 
VALUES (1, 1, 1, '2034-09-10', '10:01:11', 1);

UPDATE consultas SET dia = '2024-09-11', hora = '11:00:11' WHERE idmedicos = 1 AND idpacientes = 1 AND idambulatorios = 1;

UPDATE funcionarios 
SET nome = 'Joaozin', idade = 999, salario = 1357, cidade = 'BSBCITY' 
WHERE idfuncionarios = 1;