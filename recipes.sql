-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 05 2022 г., 07:53
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
  `category_id` int(11) NOT NULL,
  `img` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `ingredients`, `serving_size`, `preparation_time`, `coocking_time`, `category_id`, `img`) VALUES
(1, 'Egg Manchurian', 'White cabbage, carrots, cauliflower, bell pepper, green onion, corn flour, garlic-ginger paste, pasta, ground black pepper, vegetable oil, salt, egg', '4', '00:05:00', '00:25:00', 3, 'https://myfoodstory.com/wp-content/uploads/2021/10/Veg-Manchurian-2.jpg'),
(2, 'Egg Masala Ramen', 'Vegetable oil, onion, garlic, ginger root, water, miso paste, soy sauce, chicken, mushrooms, noodles, other vegetables, fresh herbs', '5', '00:05:00', '00:25:00', 2, 'https://www.pakistanihealthyrecipes.com/wp-content/uploads/2020/03/how-to-make-egg-masala-curry.jpg'),
(3, 'Pure Vegetable Bowl', '1 cup dried farro, 3 cups vegetable broth, 1 portobello mushroom, 1 red bell pepper, 8 ounces asparagus, 1/2 red onion, 1 zucchini, 1 yellow squash, extra-virgin olive oil, Kosher salt and freshly ground black pepper, 1 pint plain Greek yogurt, 1 clove ga', '2', '00:15:00', '00:35:00', 3, 'https://cdn7.kiwilimon.com/clasificacion/3207/3207.jpg'),
(4, 'Caesar', '1/2 French Baguette, cut in half and thinly sliced (1/4\" thick), 3 Tbsp extra virgin olive oil, 1 tsp minced garlic, 2 small cloves, 2 Tbsp grated parmesan cheese', '4', '00:20:00', '00:10:00', 1, 'https://i.pinimg.com/originals/16/ec/78/16ec786293419a75aab9ff72ca0e80aa.jpg'),
(5, 'Potato with chicken', '2 pounds small red-skinned potatoes, quartered, 3 tablespoons extra-virgin olive oil, 1/2 teaspoon cumin seeds (optional), Kosher salt and freshly ground pepper, 4 cloves garlic, finely chopped, 2 tablespoons packed light brown sugar, 1 lemon (1/2 juiced,', '4', '00:40:00', '00:20:00', 3, 'https://www.triathlete.com/wp-content/uploads/2018/12/Potatoes_11.jpg?resize=1080,720&width=1200'),
(6, 'Seafood Soup', '2 pounds fish, 2 tbsp olive oil, 1 cup celery, 1 cup onions, 1 cup carrots, 2 cup potatoes, 1 cup zucchini, 1 cup corn, 2 cups plum tomatoes, 2 quarts chicken stock, 1 tbsp old bay, 1 tsp sea salt, ½ tsp black pepper', '8', '00:15:00', '01:40:00', 2, 'https://recept-borscha.ru/wp-content/uploads/2/9/b/29b689ca474ac3393834d1aecbc5d6a5.jpeg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
