-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 15 2022 г., 08:30
-- Версия сервера: 5.6.51
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tastyrecipes`
--

-- --------------------------------------------------------

--
-- Структура таблицы `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serving_size` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preparation_time` time NOT NULL,
  `coocking_time` time NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `ingredients`, `serving_size`, `preparation_time`, `coocking_time`, `category_id`) VALUES
(1, 'Egg Manchurian', 'White cabbage, carrots, cauliflower, bell pepper, green onion, corn flour, garlic-ginger paste, pasta, ground black pepper, vegetable oil, salt, egg', '4', '00:05:00', '00:25:00', 3),
(2, 'Egg Masala Ramen', 'Vegetable oil, onion, garlic, ginger root, water, miso paste, soy sauce, chicken, mushrooms, noodles, other vegetables, fresh herbs', '5', '00:05:00', '00:25:00', 2),
(3, 'Pure Vegetable Bowl', '1 cup dried farro, 3 cups vegetable broth, 1 portobello mushroom, 1 red bell pepper, 8 ounces asparagus, 1/2 red onion, 1 zucchini, 1 yellow squash, extra-virgin olive oil, Kosher salt and freshly ground black pepper, 1 pint plain Greek yogurt, 1 clove ga', '2', '00:15:00', '00:35:00', 1),
(4, 'Caesar', '1/2 French Baguette, cut in half and thinly sliced (1/4\" thick), 3 Tbsp extra virgin olive oil, 1 tsp minced garlic, 2 small cloves, 2 Tbsp grated parmesan cheese', '4', '00:20:00', '00:10:00', 1),
(5, 'Potato with chicken', '2 pounds small red-skinned potatoes, quartered, 3 tablespoons extra-virgin olive oil, 1/2 teaspoon cumin seeds (optional), Kosher salt and freshly ground pepper, 4 cloves garlic, finely chopped, 2 tablespoons packed light brown sugar, 1 lemon (1/2 juiced,', '4', '00:40:00', '00:20:00', 3),
(6, 'Chicken soup', '1 tbsp olive oil\r\n2 onions, chopped\r\n3 medium carrots, chopped\r\n1 tbsp thyme leaves, roughly chopped\r\n1.4l chicken stock\r\n300g leftover roast chicken, shredded and skin removed\r\n200g frozen peas\r\n3 tbsp Greek yogurt\r\n1 garlic clove, crushed\r\nsqueeze of le', '4', '00:15:00', '00:35:00', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
