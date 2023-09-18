# Criando Banco de Dados
CREATE DATABASE Imobiliaria;

# Acessando o Banco de Dados
USE Imobiliaria;

# Criando as Tabelas
DROP TABLE IF EXISTS Imovel;

CREATE TABLE Imovel (
	cd_Imovel INT NOT NULL,
    cd_Vendedor INT DEFAULT NULL,
    cd_Bairro INT DEFAULT NULL,
    cd_Cidade INT DEFAULT NULL,
    sg_Estado CHAR(2) DEFAULT NULL,
    ds_Endereco VARCHAR(40) DEFAULT NULL,
    qt_AreaUtil DECIMAL(10,2) DEFAULT NULL,
    qt_AreaTotal DECIMAL(10,2) DEFAULT NULL,
    ds_Imovel VARCHAR(300) DEFAULT NULL,
    vl_Preco DECIMAL(20,2) DEFAULT NULL, # nao foi possivel usar o tipo money no mysql
    qt_Ofertas INT DEFAULT NULL,
    ic_Vendido CHAR(1) DEFAULT NULL,
    dt_Lancto DATE DEFAULT NULL,
    qt_ImovelIndicado INT DEFAULT NULL
);

DROP TABLE IF EXISTS Vendedor;

CREATE TABLE Vendedor (
	cd_Vendedor INT NOT NULL,
    nm_Vendedor VARCHAR(40) DEFAULT NULL,
    ds_Endereco VARCHAR(40) DEFAULT NULL,
    cd_CPF DECIMAL(11) DEFAULT NULL,
    nm_Cidade VARCHAR(20) DEFAULT NULL,
    nm_Bairro VARCHAR(20) DEFAULT NULL,
    sg_Estado CHAR(2) DEFAULT NULL,    
    cd_Telefone VARCHAR(20) DEFAULT NULL,
    ds_Email VARCHAR(80) DEFAULT NULL
);

DROP TABLE IF EXISTS Comprador;

CREATE TABLE Comprador (
	cd_Comprador INT NOT NULL,
    nm_Comprador VARCHAR(40) DEFAULT NULL,
    ds_Endereco VARCHAR(40) DEFAULT NULL,
    cd_CPF DECIMAL(11) DEFAULT NULL,
    nm_Cidade VARCHAR(20) DEFAULT NULL,
    nm_Bairro VARCHAR(20) DEFAULT NULL,
    sg_Estado CHAR(2) DEFAULT NULL,    
    cd_Telefone VARCHAR(20) DEFAULT NULL,
    ds_Email VARCHAR(80) DEFAULT NULL
);

DROP TABLE IF EXISTS Estado;

CREATE TABLE Estado (
    sg_Estado CHAR(2) NOT NULL,
    nm_Estado VARCHAR(20) DEFAULT NULL
);

DROP TABLE IF EXISTS Cidade;

CREATE TABLE Cidade (
    cd_Cidade INT NOT NULL,
    sg_Estado CHAR(2) NOT NULL,
    nm_Cidade VARCHAR(20) DEFAULT NULL
);

DROP TABLE IF EXISTS Bairro;

CREATE TABLE Bairro (
    cd_Bairro INT NOT NULL,
    cd_Cidade INT NOT NULL,
    sg_Estado CHAR(2) NOT NULL,
    nm_Bairro VARCHAR(20) DEFAULT NULL
);

DROP TABLE IF EXISTS Faixa_Imovel;

CREATE TABLE Faixa_Imovel (
    cd_Faixa INT NOT NULL,
    nm_Faixa VARCHAR(30) DEFAULT NULL,
    vl_Maximo DECIMAL(20,2) DEFAULT NULL,
    vl_Minimo DECIMAL(10,2) DEFAULT NULL
);

DROP TABLE IF EXISTS Oferta;

CREATE TABLE Oferta (
    cd_Comprador INT NOT NULL,
    cd_Imovel INT NOT NULL,
    vl_Oferta DECIMAL(20,2) DEFAULT NULL,
    dt_Oferta DATE DEFAULT NULL
);

SHOW TABLES;
SELECT * FROM Imovel;
SELECT * FROM Vendedor;

# Criando as Chaves Primárias
ALTER TABLE Imovel ADD PRIMARY KEY AUTO_INCREMENT (cd_Imovel);
ALTER TABLE Vendedor ADD PRIMARY KEY AUTO_INCREMENT (cd_Vendedor);
ALTER TABLE Estado ADD PRIMARY KEY (sg_Estado);
ALTER TABLE Cidade ADD PRIMARY KEY (cd_Cidade,sg_Estado);
ALTER TABLE Bairro ADD PRIMARY KEY (cd_Bairro, cd_Cidade,sg_Estado);
ALTER TABLE Comprador ADD PRIMARY KEY (cd_Comprador);
ALTER TABLE Oferta ADD PRIMARY KEY (cd_Comprador,cd_Imovel);
ALTER TABLE Faixa_Imovel ADD PRIMARY KEY (cd_Faixa);

# Criando as Chaves Estrangeiras
ALTER TABLE Cidade ADD FOREIGN KEY (sg_Estado) REFERENCES Estado (sg_Estado);
ALTER TABLE Bairro ADD FOREIGN KEY (cd_Cidade, sg_Estado) REFERENCES Cidade (cd_Cidade,sg_Estado);
ALTER TABLE Imovel ADD FOREIGN KEY (cd_Vendedor)
	REFERENCES Vendedor (cd_Vendedor),
    ADD FOREIGN KEY (cd_Bairro, cd_Cidade, sg_Estado)
    REFERENCES Bairro (cd_Bairro, cd_Cidade, sg_Estado);
ALTER TABLE Oferta ADD FOREIGN KEY (cd_Comprador) 
	REFERENCES Comprador (cd_Comprador),
    ADD FOREIGN KEY (cd_Imovel)
    REFERENCES Imovel (cd_Imovel);









