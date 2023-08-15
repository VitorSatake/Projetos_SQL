# ATUALIZANDO DADOS

SELECT * FROM tipos_produtos;

# INSERINDO UM DADO PARA SER ALTERANDO ABAIXO NO ID 4 NA TABELA TIPOS_PRODUTOS
INSERT INTO tipos_produtos (tipo) VALUES ('Outros');

UPDATE tipos_produtos SET tipo = 'Bijutrias' WHERE id = 4;

UPDATE produtos SET preco_venda = '4.20', id_tipo_produto = 1, id_fabricante = 1 WHERE id = 2;

SELECT * FROM produtos;



