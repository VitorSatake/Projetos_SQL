USE imobiliaria;

# 1
SELECT i.cd_Imovel, v.cd_Vendedor, v.nm_Vendedor, e.sg_Estado
FROM imovel AS i
JOIN vendedor AS v ON i.cd_Vendedor = v.cd_Vendedor
JOIN estado AS e ON i.sg_Estado = e.sg_Estado;

# 2
SELECT c.cd_Comprador, c.nm_Comprador, o.cd_Imovel, o.vl_Oferta
FROM comprador AS c
JOIN oferta AS o ON c.cd_Comprador = o.cd_Comprador;

# 3
SELECT i.cd_Imovel, i.vl_Preco, b.nm_Bairro
FROM imovel AS i
JOIN bairro AS b ON b.cd_Bairro = i.cd_Bairro 
AND i.cd_Vendedor = 3;

# 4
SELECT * 
FROM imovel AS i
JOIN oferta AS o ON i.cd_Imovel = o.cd_Imovel;

# 5
SELECT * 
FROM imovel AS i
LEFT JOIN oferta AS o ON i.cd_Imovel = o.cd_Imovel;

# 6
SELECT *
FROM comprador AS c
JOIN oferta AS o ON c.cd_Comprador = o.cd_Comprador;

# 7
SELECT *
FROM comprador AS c
LEFT JOIN oferta AS o ON c.cd_Comprador = o.cd_Comprador;

# 8
SELECT i.ds_Endereco, b.nm_Bairro, f.nm_Faixa
FROM imovel AS i
JOIN bairro AS b ON i.cd_Bairro = b.nm_Bairro
JOIN faixa_imovel AS f ON i.vl_Preco = f.nm_Faixa;

# 9
SELECT v.nm_Vendedor, COUNT(i.cd_Vendedor) AS total_por_vendedor
FROM imovel AS i 
INNER JOIN vendedor AS v 
ON i.cd_Vendedor = v.cd_Vendedor 
GROUP BY v.nm_Vendedor ORDER BY total_por_vendedor;

# 10
SELECT MAX(vl_Preco) AS maior, 
MIN(vl_Preco) as menor, 
(MAX(vl_Preco) - MIN(vl_Preco)) AS diferenca 
FROM imovel;

# 11
SELECT i.cd_Vendedor, MIN(i.vl_Preco) as menor
FROM  imovel as i 
WHERE vl_Preco > 10000 
GROUP BY cd_Vendedor;

# 12
SELECT c.cd_Comprador, nm_Comprador, AVG(vl_Oferta) as media,COUNT(o.cd_Comprador) as quantidade 
FROM comprador AS c
INNER JOIN oferta AS o
ON c.cd_Comprador = o.cd_Comprador
GROUP BY c.cd_Comprador, c.nm_Comprador;





SELECT * FROM oferta;
SELECT * FROM bairro;
SELECT * FROM faixa_imovel;
SELECT * FROM imovel;
SELECT * FROM vendedor;











