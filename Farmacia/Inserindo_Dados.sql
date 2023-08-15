## INSERINDO DADOS NAS TABELAS

#TIPOS_PRODUTOS
INSERT INTO tipos_produtos (tipo) VALUES ('Remedios');
INSERT INTO tipos_produtos (tipo) VALUES ('Cosmeticos');
INSERT INTO tipos_produtos (tipo) VALUES ('Diversos');

#FABRICANTES
INSERT INTO fabricantes (fabricante) VALUES ('Roche');
INSERT INTO fabricantes (fabricante) VALUES ('Vitalis');
INSERT INTO fabricantes (fabricante) VALUES ('Palmolive');

#MEDICOS
INSERT INTO medicos (nome, crm) VALUES ('Alfredo Muniz', '34566SP');
INSERT INTO medicos (nome, crm) VALUES ('Pedro Augusto', '937646SP');
INSERT INTO medicos (nome, crm) VALUES ('Thiago Queiroz', '284669SP');

#CLIENTES
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Ricardo Silva', 'Rua da Paz, 45', '7835-6723', '23123-890', 'Sao Paulo', '947.444.389-2');
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Marcos Antonio', 'Rua 15, 145', '3775-6453', '16773-230', 'Rio de Janeiro', '234.654.567-5');
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Roberta Silva', 'Avenida roberto Marinho, 1023', '3995-6456', '98745-800', 'Santa Catarina', '038.444.875-1');
    
#PRODUTOS
INSERT INTO produtos (produto, descricao, composicao, preco_venda, id_tipo_produto, id_fabricante) 
	VALUES ('actemra', 'Imunizante', 'tocilizumabe, polissorbato 80, sacarose (50 mg/mL), fosfato de sódio dibásico dodecaidratado',
    100.90, 1, 1);
INSERT INTO produtos (produto, descricao, composicao, preco_venda, id_tipo_produto, id_fabricante) 
	VALUES ('Alta Beleza', 'Creme para pele', 'ácido hialurônico, colágeno, glicerina, vaselina, parafina, silicone, uréia e ceramidas',
    45.50, 2, 2);
INSERT INTO produtos (produto, descricao, composicao, preco_venda, id_tipo_produto, id_fabricante) 
	VALUES ('Sabonete', 'Sabonete para o corpo', 'Gorduras, óleos e essências', 5.50, 3, 3);

#COMPRAS
INSERT INTO compras (id_cliente, data_compra) VALUES (1, '2019-05-19');
INSERT INTO compras (id_cliente, data_compra) VALUES (2, '2017-07-05');
INSERT INTO compras (id_cliente, data_compra) VALUES (1, '2022-02-08');

#PRODUTOS_COMPRA
INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES (1, 1, 2);
INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES (1, 2, 3);
INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES (2, 3, 4);

#RECEITAS_MEDICA
INSERT INTO receita_medica (id_produto_compra, id_medico, receita) VALUES (1, 1, 'receita.pdf');
INSERT INTO receita_medica (id_produto_compra, id_medico, receita) VALUES (1, 2, 'receita.pdf');
INSERT INTO receita_medica (id_produto_compra, id_medico, receita) VALUES (1, 2, 'receita.pdf');