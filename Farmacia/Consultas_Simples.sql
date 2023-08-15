# CONSULTAS SIMPLES

# TIPOS PRODUTOS
SELECT * FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos;
SELECT tipo, id FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos ORDER BY id DESC; # ordena de forma decrescente pelo id
SELECT id, tipo FROM tipos_produtos ORDER BY tipo DESC; # ordena de forma decrescente pelo tipo (pela letra inicial)

# FABRICANTES
SELECT * FROM fabricantes;

# Medicos
SELECT * FROM medicos;

# CLIENTES
SELECT * FROM clientes;

# COMPRAS
SELECT * FROM compras;
SELECT compras.id, compras.data_compra, clientes.nome FROM clientes, compras WHERE clientes.id = compras.id_cliente; # coloca o nome do cliente invés do id
#(passar para consultas complexas a consulta acima)

# PRODUTOS COMPRA
SELECT * FROM produtos_compra;

# RECEITAS MEDICA
SELECT * FROM receita_medica;

