CREATE TABLE tb_personagens (
    id_personagem INT PRIMARY KEY,
    nome_personagem VARCHAR(50) NOT NULL,
    nivel_personagem INT NOT NULL,
    defesa INT,
    ataque INT
);

ALTER TABLE tb_personagens
ADD COLUMN id_classe BIGINT;

ALTER TABLE tb_personagens MODIFY id_classe INT;