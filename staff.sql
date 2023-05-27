use lesson3;
/*Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания*/
SELECT * 
FROM staff
ORDER BY salary DESC;

-- по возрастанию

SELECT * 
FROM staff
ORDER BY salary;

/*Выведите 5 максимальных заработных плат (salary)*/

SELECT * 
FROM staff
ORDER BY salary DESC
LIMIT 5;

/*Посчитайте суммарную зарплату (salary) по каждой специальности (роst)*/

SELECT id, post, 
	sum(salary) as "Суммарная ЗП"
FROM staff
group by post;
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

/*Найдите кол-во сотрудников со специальностью (post) 
«Рабочий» в возрасте от 24 до 49 лет включительно.*/

SELECT COUNT(id) AS count_id
FROM staff
WHERE post = "Рабочий" AND age >= 24 AND age <= 49;

/*Найдите количество специальностей*/

SELECT COUNT(DISTINCT post) as "количество специальностей"
from staff;

/*Выведите специальности, у которых средний возраст сотрудников меньше 30 лет (включительно)*/

SELECT  post, avg(age) as "ср. возраст"
from staff
GROUP BY post
HAVING avg(age) <=30;
