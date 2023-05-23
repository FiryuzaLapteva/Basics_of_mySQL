use dz1;
/* Используя операторы языка SQL, создайте табличку “sales”. 
Заполните ее данными
*/
CREATE TABLE Sales
(
    Id INT PRIMARY KEY AUTO_INCREMENT ,
    Order_date DATE,
    Count_product int
);
INSERT Sales ( Id, Order_date, Count_product)
VALUES 
(1, "2022-01-01", 156),
(2, "2022-01-02", 180),
(3, "2022-01-03", 21),
(4, "2022-01-04", 124),
(5, "2022-01-05", 341);

SELECT * FROM SALES;

-- TRUNCATE TABLE Sales;

/* Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300 (функция IF).
*/

SELECT Id, Order_date, Count_product,
IF (Count_product < 100, "Минимальное",
IF (Count_product >=100 and Count_product <=300, "Среднее", "Максимальное"))
AS "Значения"
FROM Sales;

/*Создайте таблицу “orders”, заполните ее значениями.
 Покажите “полный” статус заказа, используя оператор CASE */
 CREATE TABLE Orders
(
    Id INT PRIMARY KEY AUTO_INCREMENT ,
    employee_id char(3),
    amount float,
    order_status varchar(25)
);
 INSERT Orders ( Id, employee_id, amount, order_status )
VALUES 
(1, "e03", 15.00, "Open"),
(2, "e01", 25.50, "Open"),
(3, "e05", 100.70, "CLOSED"),
(4, "e02", 22.18, "Open"),
(5, "e04", 9.50, "CANCELLED");

SELECT * FROM Orders; 
SELECT order_status,
CASE 
WHEN order_status = 'Open' THEN 'Order is in open state'
WHEN order_status = 'Closed' THEN 'Order is closed'
ELSE 'Order is cancelled' 
  END AS full_order_status
FROM Orders;