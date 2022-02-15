1. Одним запросом добавить сразу несколько записей
в таблицу.

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `age`) 
VALUES ('5', 'Zoya', 'Yarovicina', 'Yazoya@mail.com', '1988-12-18'), 
('7', 'Varvara', 'Sherbakova', 'Varya@mail.com', '1993-01-01' ), 
('8', 'Mariya', 'Markova', 'masha@mail.com', '1987-06-17');

2. Удалить одну конкретную запись из таблицы.

DELETE FROM `users` WHERE `id` =5;

3. Удалить все записи из таблицы.

DELETE FROM news;

4. Вывести значения двух полей из таблицы.

SELECT `name`, `email` FROM `users`;

5. Выбрать все записи из таблицы.

SELECT * FROM `users`;

6. Обновить значение полей в нескольких записях по
условию.

UPDATE `services` SET `service_title` = 'эвтаназия' WHERE `service_title` = 'evtanaziya';
UPDATE `services` SET `service_title` = 'стерилизация' WHERE `service_title` = 'sterilizaciya';
UPDATE `services` SET `service_title` = 'вакцинация' WHERE `service_title` = 'vakcinaciya';

7. Выбрать записи соответсвующие заданному
условию.

SELECT `service_title`, `service_price` FROM `services` WHERE `service_price` = '1000';