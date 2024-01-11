CREATE DATABASE db_westeros_pizzaria;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT, 
tipo_cat VARCHAR(255) NOT NULL,
descricao TEXT,
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas (
    id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    descricao_pizza VARCHAR(255),
    preco DECIMAL(6, 2) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    id BIGINT,
    FOREIGN KEY (id) REFERENCES tb_categorias(id)
   );
   
SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;
   
INSERT INTO tb_categorias (tipo_cat, descricao)
VALUES
    ('Clássicas', 'Pizzas tradicionais com sabores conhecidos'),
    ('Especiais', 'Pizzas com ingredientes diferenciados'),
    ('Vegetarianas', 'Pizzas sem carne, focadas em vegetais'),
    ('Doces', 'Pizzas com sabores doces e coberturas variadas'),
    ('Premium', 'Pizzas premium com ingredientes exclusivos');
   
INSERT INTO tb_pizzas (nome_pizza, descricao_pizza, preco, tamanho, id)
VALUES
    ('Margherita', 'Molho de tomate, muçarela, manjericão', 35.00, 'M', 1),
    ('Pepperoni', 'Molho de tomate, pepperoni, muçarela', 38.00, 'P', 1),
    ('Quatro Queijos', 'Molho de tomate, muçarela, parmesão, gorgonzola, catupiry', 80.00, 'G', 2),
    ('Vegetariana', 'Molho de tomate, abobrinha, berinjela, pimentão, cebola, muçarela', 37.00, 'P', 3),
    ('Chocolate com Morango', 'Chocolate, morangos frescos', 52.00, 'M', 4),
    ('Frango com Catupiry', 'Molho de tomate, frango desfiado, catupiry', 29.00, 'P', 2),
    ('Calabresa Especial', 'Molho de tomate, calabresa artesanal, cebola, muçarela', 76.00, 'G', 1),
    ('Prosciutto Funghi', 'Molho de tomate, presunto de parma, cogumelos, muçarela', 32.00,'P', 5);
    
DROP TABLE tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45 ORDER BY preco ASC;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

SELECT tb_pizzas.*, tb_categorias.tipo_cat
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.id;

SELECT tb_pizzas.*, tb_categorias.tipo_cat
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.id
WHERE tb_categorias.tipo_cat = "vegetarianas"
ORDER BY nome_pizza ASC;

