use clubedapizza;

INSERT INTO atendentes (idatendentes, nomeatendente, codigo) 
VALUES (9, 'Pedrin', 'KQ8');

INSERT INTO pizzas (idpizzas, sabor, preco, quantidade, quantidade_critica) 
VALUES (15, 'Calabresa', 28.00, 30, 8);

UPDATE pizzas SET quantidade_critica = 5, preco = 50.00 WHERE idpizzas = 15;

SELECT * FROM pizzas ORDER BY preco;

SELECT * FROM pedidos ORDER BY valor_total DESC;

DELETE FROM pizzas WHERE idpizzas = 15;

SELECT AVG(preco) AS preco_medio FROM pizzas;

SELECT MIN(valor_total) AS menor_valor FROM pedidos;

SELECT COUNT(*) AS total_pedidos FROM pedidos;

SELECT DISTINCT datapedido FROM pedidos;

SELECT COUNT(*) AS quantidade_pizzas FROM pizzas WHERE preco > 50;

SELECT * FROM pizzas WHERE ABS(quantidade - quantidade_critica) = 5;

INSERT INTO pedidos (idpedidos, idatendentes, idsocios, datapedido, valor_total) 
VALUES (84, 9, 6, '2024-09-10', 40.00);

INSERT INTO itens (idpedidos, idpizzas, quantidade) 
VALUES (84, 2, 1), (84, 15, 1);

UPDATE pizzas SET preco = 30.00 WHERE sabor = 'Calabresa';

UPDATE atendentes SET nomeatendente = 'Andre Luiz', codigo = 'ES9' WHERE idatendentes = 9;