# CONSULTAS COMPLEXAS
USE farmacia;
-- compras

# CONSULTAR COMPRAS
SELECT * FROM produtos_compra;

# COLOCAR O NOME DOS CLIENTES NAS COMPRAS
SELECT com.id AS 'ID Compra', cli.nome AS 'Cliente', com.data_compra AS 'Data Compra' 
	FROM compras AS com, clientes AS cli WHERE com.id_cliente = cli.id;
    
# PRODUTOS COMPRA
SELECT * FROM produtos_compra;

SELECT  com.id AS 'Compra', 
    cli.nome AS 'Cliente',
    SUM(prod.preco_venda * proc.quantidade) AS 'Total',
    com.data_compra AS 'Data da Compra'
    FROM produtos_compra AS proc, produtos AS prod, compras AS com, clientes AS cli
    WHERE com.id = proc.id_compra AND prod.id = proc.id_produto AND cli.id = com.id_cliente
    GROUP BY com.id;