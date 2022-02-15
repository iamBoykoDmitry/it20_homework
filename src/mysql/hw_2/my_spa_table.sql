-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 11 2022 г., 22:09
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `my_spa_table`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `text` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `img`, `text`, `data`) VALUES
(1, 'kot vipal iz okna. chto delat\'?', '../images/stories/0816.jpg', 'okolo 15% travm koshki poluchayut...', '2021-12-15'),
(2, 'belaya znachit gluhaya?', '../images/stories/uxpic2.jpg', 'gluhoy moghet rodit\'sya lubaya koshka...', '2022-01-23'),
(3, 'chumka sobak', '../images/stories/inner-pict-2o20s1k.jpg', 'eto zabolevanie protekaet tyagelo....', '2022-01-30'),
(4, 'vakcinaciya sobak i koshek', '../images/stories/132742-b.jpg', 'vesna vremya shashlikov i piknikov....', '2022-03-04'),
(5, 'rasstroystvo jeludka u sobak', '../images/stories/4215455_25a1.jpg', 'rasstroystvo jeludka simptom mnogih zabolevaniy', '2022-03-25');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `review_user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `review_data` date NOT NULL,
  `review_text` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `review_user`, `review_data`, `review_text`) VALUES
(1, 4, 'Viktor', '2022-02-01', 'zapakovali kota'),
(2, 1, 'Ivan', '2022-02-15', 'pobivali v klinike'),
(3, 5, 'Zoya', '2022-02-19', 'blagodarim za pomosh'),
(4, 3, 'Slava', '2022-02-04', 'otlichniy personal'),
(5, 2, 'Evgeniy', '2022-02-06', 'virajayu blagodarnost');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `service_title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `service_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `service_title`, `service_price`) VALUES
(1, 'vakcinaciya', 400),
(2, 'sterilizaciya', 1000),
(3, 'udalenie zubnogo kamnya', 1500),
(4, 'udalenie opuholi', 900),
(5, 'evtanaziya', 500);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `age` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `age`) VALUES
(1, 'Ivan', 'Abramov', 'Ivanabram@mail.com', '1986-05-21'),
(2, 'Evgeniy', 'Chebatkov', 'evgen@mail.com', '1990-09-13'),
(3, 'Slava', 'Komisarenko', 'Slavik.mail.com', '1985-07-27'),
(4, 'Viktor', 'Komarov', 'Komarik@mail.com', '1986-05-09'),
(6, 'Ruslan', 'Beliy', 'ruslan@mail.com', '1976-05-08');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
