-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 29 2024 г., 09:49
-- Версия сервера: 8.0.34-26-beget-1-1
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vyakhitm_railway`
--

-- --------------------------------------------------------

--
-- Структура таблицы `log`
--
-- Создание: Окт 23 2024 г., 08:00
--


DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
                       `id_log` int NOT NULL,
                       `name_table` varchar(20) DEFAULT NULL,
                       `action` varchar(20) DEFAULT NULL,
                       `id_from_table` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `passenger`
--
-- Создание: Окт 23 2024 г., 08:10
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger` (
                             `id_passenger` int NOT NULL,
                             `surname` varchar(50) DEFAULT NULL,
                             `name` varchar(50) DEFAULT NULL,
                             `second_name` varchar(50) DEFAULT NULL,
                             `telephone` char(20) DEFAULT NULL,
                             `mail` char(20) DEFAULT NULL,
                             `id_vip_hall` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Триггеры `passenger`
--
# DROP TRIGGER IF EXISTS `up_quantity_of_vips_whose_can_be_here`;
# DELIMITER $$
# CREATE TRIGGER `up_quantity_of_vips_whose_can_be_here` AFTER INSERT ON `passenger` FOR EACH ROW BEGIN
#     UPDATE vip_hall INNER JOIN passenger ON vip_hall.id_vip_hall=passenger.id_vip_hall SET quantity_of_vips_whose_can_be_here=quantity_of_vips_whose_can_be_here+1  WHERE OLD.passenger.id_passenger!=NEW.passenger.id_passenger; end
# $$
# DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `railway_worker`
--
-- Создание: Окт 20 2024 г., 13:05
--

DROP TABLE IF EXISTS `railway_worker`;
CREATE TABLE `railway_worker` (
                                  `id_railway_worker` int NOT NULL,
                                  `id_station` int DEFAULT NULL,
                                  `surname` varchar(50) DEFAULT NULL,
                                  `name` varchar(50) DEFAULT NULL,
                                  `second_name` varchar(50) DEFAULT NULL,
                                  `post` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `route`
--
-- Создание: Окт 20 2024 г., 14:54
--

DROP TABLE IF EXISTS `route`;
CREATE TABLE `route` (
                         `id_route` int DEFAULT NULL,
                         `id_station` int DEFAULT NULL,
                         `id_train` int DEFAULT NULL,
                         `number` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `schedule`
--
-- Создание: Окт 20 2024 г., 14:36
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
                            `id_schedule` int NOT NULL,
                            `duration` time DEFAULT NULL,
                            `start_point` varchar(50) DEFAULT NULL,
                            `end_point` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `schedule_card`
--
-- Создание: Окт 20 2024 г., 14:40
--

DROP TABLE IF EXISTS `schedule_card`;
CREATE TABLE `schedule_card` (
                                 `id_schedule_card` int NOT NULL,
                                 `id_schedule` int DEFAULT NULL,
                                 `stop_point` varchar(50) DEFAULT NULL,
                                 `time_of_arrive` datetime DEFAULT NULL,
                                 `rime_of_departure` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `station`
--
-- Создание: Окт 20 2024 г., 10:22
--

DROP TABLE IF EXISTS `station`;
CREATE TABLE `station` (
                           `id_station` int NOT NULL,
                           `title` varchar(50) DEFAULT NULL,
                           `address` varchar(200) DEFAULT NULL,
                           `human_capacity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `train`
--
-- Создание: Окт 20 2024 г., 14:49
--

DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
                         `id_train` int NOT NULL,
                         `route_name` varchar(50) DEFAULT NULL,
                         `type` varchar(50) DEFAULT NULL,
                         `number_of_wagons` int DEFAULT NULL,
                         `numbering_of_wagons` enum('From the head of the train','From the back of the train') DEFAULT NULL,
                         `presence_of_restaurant_wagon` char(5) DEFAULT NULL,
                         `presence_of_shower` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `train_card`
--
-- Создание: Окт 20 2024 г., 14:58
--

DROP TABLE IF EXISTS `train_card`;
CREATE TABLE `train_card` (
                              `id_train_card` int NOT NULL,
                              `id_train` int DEFAULT NULL,
                              `id_schedule_card` int DEFAULT NULL,
                              `delay` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `vip_hall`
--
-- Создание: Окт 23 2024 г., 08:25
--

DROP TABLE IF EXISTS `vip_hall`;
CREATE TABLE `vip_hall` (
                            `id_vip_hall` int NOT NULL,
                            `id_station` int DEFAULT NULL,
                            `free_capacity` int DEFAULT NULL,
                            `wifi_access` char(4) DEFAULT NULL,
                            `quantity_of_vips_who_can_be_here` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `waiting_hall`
--
-- Создание: Окт 20 2024 г., 12:53
--

DROP TABLE IF EXISTS `waiting_hall`;
CREATE TABLE `waiting_hall` (
                                `id_waiting_hall` int NOT NULL,
                                `quantity_usb_charges` int DEFAULT NULL,
                                `id_station` int NOT NULL,
                                `free_capacity` int DEFAULT NULL,
                                `human_capacity_now` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `log`
--
ALTER TABLE `log`
    ADD PRIMARY KEY (`id_log`);

--
-- Индексы таблицы `passenger`
--
ALTER TABLE `passenger`
    ADD PRIMARY KEY (`id_passenger`),
    ADD KEY `id_vip_hall` (`id_vip_hall`);

--
-- Индексы таблицы `railway_worker`
--
ALTER TABLE `railway_worker`
    ADD PRIMARY KEY (`id_railway_worker`),
    ADD KEY `id_station` (`id_station`);

--
-- Индексы таблицы `route`
--
ALTER TABLE `route`
    ADD KEY `id_station` (`id_station`),
    ADD KEY `id_train` (`id_train`);

--
-- Индексы таблицы `schedule`
--
ALTER TABLE `schedule`
    ADD PRIMARY KEY (`id_schedule`);

--
-- Индексы таблицы `schedule_card`
--
ALTER TABLE `schedule_card`
    ADD PRIMARY KEY (`id_schedule_card`),
    ADD KEY `id_schedule` (`id_schedule`);

--
-- Индексы таблицы `station`
--
ALTER TABLE `station`
    ADD PRIMARY KEY (`id_station`);

--
-- Индексы таблицы `train`
--
ALTER TABLE `train`
    ADD PRIMARY KEY (`id_train`);

--
-- Индексы таблицы `train_card`
--
ALTER TABLE `train_card`
    ADD PRIMARY KEY (`id_train_card`),
    ADD KEY `id_train` (`id_train`),
    ADD KEY `id_schedule_card` (`id_schedule_card`);

--
-- Индексы таблицы `vip_hall`
--
ALTER TABLE `vip_hall`
    ADD PRIMARY KEY (`id_vip_hall`),
    ADD KEY `id_station` (`id_station`);

--
-- Индексы таблицы `waiting_hall`
--
ALTER TABLE `waiting_hall`
    ADD PRIMARY KEY (`id_waiting_hall`),
    ADD KEY `id_station` (`id_station`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `log`
--
ALTER TABLE `log`
    MODIFY `id_log` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `passenger`
--
ALTER TABLE `passenger`
    MODIFY `id_passenger` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `railway_worker`
--
ALTER TABLE `railway_worker`
    MODIFY `id_railway_worker` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `schedule`
--
ALTER TABLE `schedule`
    MODIFY `id_schedule` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `schedule_card`
--
ALTER TABLE `schedule_card`
    MODIFY `id_schedule_card` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `station`
--
ALTER TABLE `station`
    MODIFY `id_station` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `train`
--
ALTER TABLE `train`
    MODIFY `id_train` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `train_card`
--
ALTER TABLE `train_card`
    MODIFY `id_train_card` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `vip_hall`
--
ALTER TABLE `vip_hall`
    MODIFY `id_vip_hall` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `waiting_hall`
--
ALTER TABLE `waiting_hall`
    MODIFY `id_waiting_hall` int NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `passenger`
--
ALTER TABLE `passenger`
    ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`id_vip_hall`) REFERENCES `vip_hall` (`id_vip_hall`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `railway_worker`
--
ALTER TABLE `railway_worker`
    ADD CONSTRAINT `railway_worker_ibfk_1` FOREIGN KEY (`id_station`) REFERENCES `station` (`id_station`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `route`
--
ALTER TABLE `route`
    ADD CONSTRAINT `route_ibfk_1` FOREIGN KEY (`id_station`) REFERENCES `station` (`id_station`) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT `route_ibfk_2` FOREIGN KEY (`id_train`) REFERENCES `train` (`id_train`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `schedule_card`
--
ALTER TABLE `schedule_card`
    ADD CONSTRAINT `schedule_card_ibfk_1` FOREIGN KEY (`id_schedule`) REFERENCES `schedule` (`id_schedule`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `train_card`
--
ALTER TABLE `train_card`
    ADD CONSTRAINT `train_card_ibfk_1` FOREIGN KEY (`id_train`) REFERENCES `train` (`id_train`) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT `train_card_ibfk_2` FOREIGN KEY (`id_schedule_card`) REFERENCES `schedule_card` (`id_schedule_card`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `vip_hall`
--
ALTER TABLE `vip_hall`
    ADD CONSTRAINT `vip_hall_ibfk_1` FOREIGN KEY (`id_station`) REFERENCES `station` (`id_station`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `waiting_hall`
--
ALTER TABLE `waiting_hall`
    ADD CONSTRAINT `waiting_hall_ibfk_1` FOREIGN KEY (`id_station`) REFERENCES `station` (`id_station`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
