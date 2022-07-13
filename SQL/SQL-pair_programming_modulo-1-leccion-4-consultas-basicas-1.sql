USE northwind;

-- consulta 1: emplead@s --
SELECT employee_id, last_name, first_name
FROM employees;

-- consulta 2: productos, precio unidad 0-5$ --
SELECT product_id, product_name, unit_price
FROM products
WHERE unit_price <= 5;

-- consulta 3: productos con precio 18, 19, 20 $ --
SELECT * 
FROM products
WHERE unit_price = 18
OR unit_price = 19
OR unit_price = 20;

-- consulta 4: productos con mayor rentabilidad --
SELECT *
FROM products 
WHERE unit_price >= 15
AND unit_price <= 50;

-- consulta 5: productos sin precio --
SELECT *
FROM products
WHERE unit_price IS NULL;

-- consulta 6: comparando productos --
SELECT *
FROM products
WHERE unit_price < 15
AND product_id < 10;

-- consulta 7: cambiando operadores: use NOT --
SELECT * 
FROM products
WHERE NOT unit_price > 15
AND NOT product_id > 10;

-- consulta 8: Conocer paises que vendemos --
	-- buscaremos aquellos paises que realizan pedidos y los que no estén en la lista, se tendrán que optimizar a través de campañas de mkg--
SELECT ship_country
FROM orders;

