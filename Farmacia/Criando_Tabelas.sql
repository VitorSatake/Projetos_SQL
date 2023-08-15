# CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE farmacia;

# ACESSANDO O BANCO DE DADOS PARA SER USADO
USE farmacia;

# CRIANDO AS TABELAS
CREATE TABLE clientes(
	id  INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
	endereco VARCHAR(200) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
	cep VARCHAR(15) NOT NULL,
    localidade VARCHAR(45) NOT NULL,
    cpf VARCHAR(15) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tipos_produtos(
	id  INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(45) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE fabricantes(
	id  INT NOT NULL AUTO_INCREMENT,
    fabricante VARCHAR(45) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE produtos(
	id  INT NOT NULL AUTO_INCREMENT,
    produto VARCHAR(45) NOT NULL,
	descricao VARCHAR(200) NOT NULL,
    composicao VARCHAR(200) NOT NULL,
	preco_venda VARCHAR(15) NOT NULL,
    id_tipo_produto INT NOT NULL,
    id_fabricante INT NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (id_fabricante) REFERENCES fabricantes(id),
    FOREIGN KEY (id_tipo_produto) REFERENCES tipos_produtos(id)
);

CREATE TABLE compras(
	id  INT NOT NULL AUTO_INCREMENT,
    data_compra DATE NOT NULL,
    id_cliente INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

CREATE TABLE produtos_compra(
	id  INT NOT NULL AUTO_INCREMENT,
    id_compra INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_compra) REFERENCES compras(id),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

CREATE TABLE medicos(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    crm VARCHAR(45) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE receita_medica(
	id  INT NOT NULL AUTO_INCREMENT,
    id_produto_compra INT NOT NULL,
    id_medico INT NOT NULL,
    receita VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_produto_compra) REFERENCES produtos_compra(id),
    FOREIGN KEY (id_medico) REFERENCES medicos(id)
);
