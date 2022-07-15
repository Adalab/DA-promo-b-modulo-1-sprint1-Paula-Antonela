USE Northwind;

-- Ejercicio 1 --
SELECT MIN(unit_price) AS lowest_price, MAX(unit_price) AS highest_price
FROM products;

-- Ejercicio 2 --
SELECT COUNT(product_id), AVG (unit_price)
FROM products;

-- Ejercicio 3 --
SELECT MAX(freight), MIN(freight) 
FROM orders
WHERE ship_country = 'UK';

-- Ejercicio 4 --
# 1º queremos conocer el precio medio de los productos
SELECT AVG(unit_price)
FROM products;

# Ahora buscamos los productos con un precio superior al average
SELECT product_name, unit_price
FROM products
WHERE unit_price > 28.866363636363637
ORDER BY unit_price DESC;

-- Ejercicio 5 --
SELECT COUNT(product_id)
FROM products
WHERE discontinued = 1;

-- Ejercicio 6 --
SELECT product_id, product_name
FROM products
ORDER BY product_id DESC
LIMIT 10;

