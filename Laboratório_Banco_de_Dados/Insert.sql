USE imobiliaria;

# Inserindo dados na tabela Estado
INSERT INTO estado (sg_estado, nm_estado) VALUES ('SP', 'São Paulo');
INSERT INTO estado (sg_estado, nm_estado) VALUES ('RJ', 'Rio de Janeiro');

# Inserindo dados na tabela Cidade
INSERT INTO cidade (cd_Cidade, nm_Cidade, sg_Estado) VALUES (1, 'São Paulo', 'SP');
INSERT INTO cidade (cd_Cidade, nm_Cidade, sg_Estado) VALUES (2, 'Santo André', 'SP');
INSERT INTO cidade (cd_Cidade, nm_Cidade, sg_Estado) VALUES (3, 'Campinas', 'SP');
INSERT INTO cidade (cd_Cidade, nm_Cidade, sg_Estado) VALUES (1, 'Rio de Janeiro', 'RJ');
INSERT INTO cidade (cd_Cidade, nm_Cidade, sg_Estado) VALUES (2, 'Niteroi', 'RJ');

# Inserindo dados na tabela Bairro
INSERT INTO bairro (cd_Bairro, nm_Bairro, cd_Cidade, sg_Estado) 
	VALUES (1, 'Jardins', 1, 'SP');
INSERT INTO bairro (cd_Bairro, nm_Bairro, cd_Cidade, sg_Estado) 
	VALUES (2, 'Morumbi', 1, 'SP');
INSERT INTO bairro (cd_Bairro, nm_Bairro, cd_Cidade, sg_Estado) 
	VALUES (3, 'Aeroporto', 1, 'SP');
INSERT INTO bairro (cd_Bairro, nm_Bairro, cd_Cidade, sg_Estado) 
	VALUES (1, 'Aeroporto', 1, 'RJ');
INSERT INTO bairro (cd_Bairro, nm_Bairro, cd_Cidade, sg_Estado) 
	VALUES (2, 'Niteroi', 2, 'RJ');

# Inserindo dados na tabela Vendedor
INSERT INTO vendedor (cd_Vendedor, nm_Vendedor, ds_Endereco, ds_Email) 
	VALUES (1, 'Maria da Silva', 'Rua do Grito, 45', 'msilva@nova.com');
INSERT INTO vendedor (cd_Vendedor, nm_Vendedor, ds_Endereco, ds_Email) 
	VALUES (2, 'Marco Andrade', 'Av. da Saudade, 325', 'mandrade@nova.com');
INSERT INTO vendedor (cd_Vendedor, nm_Vendedor, ds_Endereco, ds_Email) 
	VALUES (3, 'André Cardoso', 'Av. Brasil, 401', 'acardoso@nova.com');
INSERT INTO vendedor (cd_Vendedor, nm_Vendedor, ds_Endereco, ds_Email) 
	VALUES (4, 'Tatiana Souza', 'Rua do Imperador, 778', 'tsouza@nova.com');

# Inserindo dados na tabela Imovel
INSERT INTO imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, 
	ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_Preco) 
	VALUES (1, 1, 1, 1, 'SP', 'Al. Tiete,3304/101', 250, 400, 180000);
INSERT INTO imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, 
	ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_Preco) 
	VALUES (2, 1, 2, 1, 'SP', 'Av. Morumbi,2230', 150, 250, 135000);
INSERT INTO imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, 
	ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_Preco) 
	VALUES (3, 2, 1, 1, 'RJ', 'R. Gal. Osorio,445/34', 250, 400, 185000);
INSERT INTO imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, 
	ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_Preco) 
	VALUES (4, 2, 2, 2, 'RJ', 'R. D. Pedro I,882', 120, 200, 110000);
INSERT INTO imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, 
	ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_Preco) 
	VALUES (5, 3, 3, 1, 'SP', 'Av. Ruben Berta,2355', 110, 200, 95000);
INSERT INTO imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, 
	ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_Preco) 
	VALUES (6, 4, 1, 1, 'RJ', 'R. Getulio Vargas,552', 200, 300, 99000);

# Inserindo dados na tabela Comprador
INSERT INTO comprador (cd_Comprador, nm_Comprador, ds_Endereco, ds_Email)
	VALUES (1, 'Emmanuel Antunes', 'R. Saraiva,452', 'eantunes@nova.com');
INSERT INTO comprador (cd_Comprador, nm_Comprador, ds_Endereco, ds_Email)
	VALUES (2, 'Joana Pereira', 'Av. Portugal,52', 'jpereira@nova.com');
INSERT INTO comprador (cd_Comprador, nm_Comprador, ds_Endereco, ds_Email)
	VALUES (3, 'Ronaldo Campelo', 'R. Estados Unidos,13', 'rcampelo@nova.com');
INSERT INTO comprador (cd_Comprador, nm_Comprador, ds_Endereco, ds_Email)
	VALUES (4, 'Manfred Augusto', 'Av. Brasil,351', 'maugusto@nova.com');
    
# Inserindo dados na tabela Oferta
INSERT INTO oferta (cd_Comprador, cd_Imovel, vl_Oferta, dt_Oferta)
	VALUES (1, 1, 170000, '10-01-09');
INSERT INTO oferta (cd_Comprador, cd_Imovel, vl_Oferta, dt_Oferta)
	VALUES (1, 3, 180000, '10-01-09');
INSERT INTO oferta (cd_Comprador, cd_Imovel, vl_Oferta, dt_Oferta)
	VALUES (2, 2, 135000, '15-01-09');
INSERT INTO oferta (cd_Comprador, cd_Imovel, vl_Oferta, dt_Oferta)
	VALUES (2, 4, 100000, '15-02-09');
INSERT INTO oferta (cd_Comprador, cd_Imovel, vl_Oferta, dt_Oferta)
	VALUES (3, 1, 160000, '05-02-09');
INSERT INTO oferta (cd_Comprador, cd_Imovel, vl_Oferta, dt_Oferta)
	VALUES (3, 2, 140000, '20-02-09');



# 8 - Aumentando em 10% o valor dos imoveis
# SET SQL_SAFE_UPDATES = 0; comando usado para modificar a proteção de alterações extensas, para fazer em uma coluna inteira
UPDATE imovel
SET vl_Preco = vl_Preco + (vl_Preco * 0.10);

# 9 - Abaixando em 5% o preço de venda do vendadedos 1
UPDATE imovel
SET vl_Preco = vl_Preco - (vl_Preco * 0.05)
WHERE cd_vendedor = 1;
 
# 10 - Aumentando em 5% o valor das ofertas do comprador 2
UPDATE oferta
SET vl_Oferta = vl_Oferta + (vl_Oferta * 0.05)
WHERE cd_Comprador = 2;

# 11 - Alterando o endereço do comprador 3
UPDATE comprador
SET ds_Endereco = ('R. Ananás, 45'), sg_Estado = ('RJ')
WHERE cd_Comprador = 3;

# 12 - Alterando a oferta do comprador 2 no imovel 4
UPDATE oferta
SET vl_Oferta = (101000)
WHERE cd_Comprador = 2 AND cd_imovel = 4;

# 13 - Excluindo a oferta do comprador 3 no imovel 1
DELETE FROM oferta
WHERE cd_Comprador = 3 AND cd_Imovel = 1;

# 14 - Excluindo a cidade 3 do estado SP
DELETE FROM cidade
WHERE cd_Cidade = 3 AND sg_Estado = 'SP';

# 15 - Inserindo linhas na tabela FAIXA_IMOVEL
INSERT INTO faixa_imovel (cd_Faixa, nm_Faixa, vl_Minimo, vl_Maximo)
	VALUES (1, 'Baixo', 0, 105000);
INSERT INTO faixa_imovel (cd_Faixa, nm_Faixa, vl_Minimo, vl_Maximo)
	VALUES (2, 'Médio', 105001, 180000);
INSERT INTO faixa_imovel (cd_Faixa, nm_Faixa, vl_Minimo, vl_Maximo)
	VALUES (3, 'Alto', 180001, 999999);

SELECT * FROM faixa_imovel;
SELECT * FROM bairro;
SELECT * FROM cidade;
SELECT * FROM comprador;
SELECT * FROM estado;
SELECT * FROM imovel;
SELECT * FROM oferta;
SELECT * FROM vendedor;















