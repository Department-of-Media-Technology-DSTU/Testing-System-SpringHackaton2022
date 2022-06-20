-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 20 2022 г., 21:26
-- Версия сервера: 5.5.68-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testsystem`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_logins`
--

CREATE TABLE `admin_logins` (
  `id` int(11) NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_logins`
--

INSERT INTO `admin_logins` (`id`, `email`, `password`) VALUES
(1, 'mail@mail.ru', '123');

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `score`) VALUES
(1, 1, '123', 1),
(2, 1, '23', 0),
(3, 1, '123', 1),
(4, 2, '123', 0),
(5, 2, '10', 0),
(6, 2, 'Я', 1),
(7, 3, '123', 1),
(8, 4, '123', 10),
(9, 4, '23', 1),
(10, 4, '55', 0),
(11, 5, '123', 0),
(12, 5, '10', 1),
(13, 5, 'Я', 10),
(14, 5, '5', 5),
(15, 6, 'Проверить', 0),
(16, 7, '123', 10),
(17, 7, '23', 1),
(18, 7, '55', 0),
(19, 8, '123', 0),
(20, 8, '10', 1),
(21, 8, 'Я', 10),
(22, 8, '5', 5),
(23, 9, 'Проверить', 0),
(24, 10, '123', 10),
(25, 10, '23', 1),
(26, 10, '55', 0),
(27, 11, '123', 0),
(28, 11, '10', 1),
(29, 11, 'Я', 10),
(30, 11, '5', 5),
(31, 12, 'Проверить', 0),
(32, 13, '123', 10),
(33, 13, '23', 1),
(34, 13, '55', 0),
(35, 14, '123', 0),
(36, 14, '10', 1),
(37, 14, 'Я', 10),
(38, 14, '5', 5),
(39, 15, 'Проверить', 0),
(40, 16, '123', 10),
(41, 16, '23', 1),
(42, 16, '55', 0),
(43, 17, '123', 0),
(44, 17, '10', 1),
(45, 17, 'Я', 10),
(46, 17, '5', 5),
(47, 18, 'Проверить', 0),
(48, 19, '123', 10),
(49, 20, '123', 10),
(50, 19, '23', 1),
(51, 20, '23', 1),
(52, 19, '55', 0),
(53, 20, '55', 0),
(54, 21, '123', 0),
(55, 21, '10', 1),
(56, 22, '123', 0),
(57, 21, 'Я', 10),
(58, 22, '10', 1),
(59, 21, '5', 5),
(60, 22, 'Я', 10),
(61, 22, '5', 5),
(62, 23, 'Проверить', 0),
(63, 24, 'Проверить', 0),
(64, 25, '10', 10),
(65, 25, '2', 2),
(66, 25, '5', 5),
(67, 26, '1', 1),
(68, 26, '10', 10),
(69, 26, '2', 2),
(70, 27, 'правда', 5),
(71, 27, 'не правда', 0),
(72, 28, '2', 2),
(73, 28, '3', 0),
(74, 28, '4', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `test_id`, `question`) VALUES
(1, 1, '123?'),
(2, 1, 'Кто тут я?'),
(3, 2, 'f'),
(4, 3, '123?'),
(5, 3, 'А я?'),
(6, 3, 'А я?'),
(7, 4, '123?'),
(8, 4, 'А я?'),
(9, 4, 'А я?'),
(10, 5, '123?'),
(11, 5, 'А я?'),
(12, 5, 'А я?'),
(13, 6, '123?'),
(14, 6, 'А я?'),
(15, 6, 'А я?'),
(16, 7, '123?'),
(17, 7, 'А я?'),
(18, 7, 'А я?'),
(19, 8, '123?'),
(20, 9, '123?'),
(21, 8, 'А я?'),
(22, 9, 'А я?'),
(23, 8, 'А я?'),
(24, 9, 'А я?'),
(25, 10, 'f'),
(26, 10, 'Кто тут я?'),
(27, 11, '1?'),
(28, 12, '2?');

-- --------------------------------------------------------

--
-- Структура таблицы `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tests`
--

INSERT INTO `tests` (`id`, `title`, `time`) VALUES
(1, 'Тест 1', 5),
(2, 'GHJFJDJLKFNKFJBFH FMN FJBFJHBFHM', 4),
(8, 'Какой-то тест', 1),
(10, 'Тест', 3),
(11, 'Еще тест', 5),
(12, 'Еще тест 1', 5),
(13, '', 5),
(14, 'hj', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `test_result`
--

CREATE TABLE `test_result` (
  `id` int(11) NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `max_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `test_result`
--

INSERT INTO `test_result` (`id`, `email`, `name`, `test_id`, `score`, `max_score`) VALUES
(1, 'admin@admin.com', 'Владислав', 10, 12, 20),
(2, 'admin@admin.com', 'Владислав', 10, 7, 20),
(3, 'admin@admin.com', 'Владислав', 9, 20, 20),
(4, 'vproskygamer@gmail.com', 'VLADISLAV KOZHUKHAR', 9, 10, 0),
(5, 'admin@admin.com', 'Владислав', 9, 1, 10),
(6, 'admin@admin.com', 'Владислав', 9, 10, 10),
(7, 'admin@admin.com', 'Владислав', 9, 10, 10),
(8, 'admin@admin.com', 'Владислав', 8, 2, 20),
(9, 'admin@admin.com', 'ProSkyGamer', 1, 1, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_logins`
--
ALTER TABLE `admin_logins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `test_result`
--
ALTER TABLE `test_result`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_logins`
--
ALTER TABLE `admin_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `test_result`
--
ALTER TABLE `test_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
