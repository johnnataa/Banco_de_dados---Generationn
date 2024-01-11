ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classe
FOREIGN KEY (id_classe) REFERENCES tb_classes(id);