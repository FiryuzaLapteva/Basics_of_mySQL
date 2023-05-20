SELECT * FROM dz1.phone;
/*Выведите название, производителя и цену для товаров, 
количество которых превышает 2 (SQL - файл, скриншот, либо сам код)*/

SELECT ProductName, Price FROM dz1.phone
WHERE ProductCount > 2;

/*Выведите весь ассортимент товаров марки “Samsung”*/

SELECT * FROM dz1.phone
WHERE Manufacturer = 'Samsung';

/*Товары, в которых есть упоминание "Iphone"*/

SELECT * FROM dz1.phone
WHERE ProductName REGEXP 'Iphone';

/*Товары, в которых есть упоминание "Samsung"*/

SELECT * FROM dz1.phone
WHERE Manufacturer REGEXP 'Samsung';

/*Товары, в которых есть ЦИФРА "8"  */

SELECT * FROM dz1.phone
WHERE ProductName REGEXP '[[8]]' = 1;