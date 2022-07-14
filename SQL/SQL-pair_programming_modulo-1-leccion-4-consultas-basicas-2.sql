-- Ejercicio 1 --
USE Northwind; 

SELECT product_name, unit_price
FROM products
LIMIT 10;

-- Ejercicio 2 --
SELECT product_name, unit_price
FROM products
ORDER BY product_id DESC
LIMIT 10;

-- Ejercicio 3 --
SELECT DISTINCT order_id
FROM order_details
ORDER BY order_id;

-- Ejercicio 4 -- Queremos que nos saque los dos primeros pedidos (OJO!! Los dos pedidos que sean distintos!!)
SELECT DISTINCT order_id
FROM order_details
ORDER BY order_id
LIMIT 2;

-- Ejercicio 5 -- Podemos hacer operaciones en el select!!!! *El AS no sobreescribe la tabla!!!
SELECT unit_price, quantity, (unit_price * quantity) AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 3;

-- Ejercicio 6--
SELECT order_id, (unit_price * quantity) AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal
LIMIT 5
OFFSET 5;

-- Ejercicio 7--
SELECT DISTINCT category_name AS NombreDeCategoria
FROM categories;

-- Ejercicio 8 -- operamos con DATE_ADD y guardamos los datos en una columna llamafa FechaRetrasada
SELECT shipped_date, DATE_ADD(shipped_date, INTERVAL -5 day) AS FechaRetrasada
FROM orders;

-- Ejercicio 9 --
SELECT *
FROM products
WHERE unit_price BETWEEN 15 AND 50;

-- Ejericio 10 --
SELECT *
FROM products
WHERE unit_price IN ('18', '19', '20');


