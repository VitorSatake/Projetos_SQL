USE imobiliaria;

# 1
SELECT cd_Comprador, nm_Comprador, ds_Email FROM comprador;

# 2 
SELECT cd_Vendedor, nm_Vendedor, ds_Email FROM vendedor ORDER BY nm_Vendedor DESC;

# 3
SELECT cd_Imovel, cd_Vendedor, vl_Preco FROM imovel WHERE cd_Vendedor = 2;

# 4
SELECT cd_Imovel, cd_Vendedor, vl_Preco, sg_Estado FROM imovel WHERE vl_Preco < 150000 AND sg_Estado = 'RJ';

# 5
SELECT cd_Imovel, cd_Vendedor, vl_Preco, sg_Estado FROM imovel WHERE vl_Preco < 150000 AND cd_Vendedor != 2;

# 6
SELECT cd_Comprador, nm_Comprador, ds_Endereco, sg_Estado FROM comprador WHERE sg_Estado IS NULL;

# 7
SELECT * FROM oferta WHERE vl_Oferta >= 100000 AND vl_Oferta <= 150000;

# 8
SELECT * FROM oferta WHERE dt_Oferta BETWEEN '10-01-09' AND '20-03-09';

# 9
SELECT nm_Comprador FROM comprador WHERE nm_Comprador LIKE 'M%';

# 10
SELECT nm_Comprador FROM comprador WHERE nm_Comprador LIKE '_a%';

# 11
SELECT nm_Comprador FROM comprador WHERE nm_Comprador LIKE '%u%';

# 12
SELECT * FROM imovel WHERE cd_Imovel = 2 OR cd_Imovel = 3 ORDER BY ds_Endereco ASC;

# 13
SELECT * FROM oferta WHERE cd_Imovel = 2 OR cd_Imovel = 3 AND vl_Oferta > 140000 ORDER BY dt_Oferta DESC;

# 14
SELECT * FROM imovel WHERE vl_Preco BETWEEN 110000 AND 200000 OR cd_Vendedor = 4 ORDER BY qt_AreaUtil ASC;

# 15
SELECT max(vl_Oferta) AS Maior FROM oferta;
SELECT min(vl_Oferta) AS Menor FROM oferta;
SELECT avg(vl_Oferta) AS Media FROM oferta;

# 16
SELECT max(vl_Preco) AS Maior FROM imovel;
SELECT min(vl_Preco) AS Menor FROM imovel;
SELECT sum(vl_Preco) AS Total FROM imovel;
SELECT avg(vl_Preco) AS Media FROM imovel;

# 17
SELECT COUNT(cd_Comprador) AS Total FROM oferta WHERE dt_Oferta LIKE '2008%' OR '2009%' OR '2010%';

SELECT * FROM oferta;
