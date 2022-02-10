INSERT INTO `dishes` (`ID`, `Name`, `Type`, `Weight`, `Picture`) VALUES
	(1, 'Пюре', 'Горячее', 200, _binary ''),
	(2, 'Борщ', 'Суп', 350, _binary ''),
	(3, 'Блины', 'Закуска', 100, _binary ''),
	(4, 'Оливье', 'Салат', 150, _binary '');


INSERT INTO `products` (`ID`, `Name`, `Calories`, `Weight(g)`, `Price`) VALUES
	(1, 'Картошка', 40, 200, 13.00),
	(2, 'Яйца', 50, 150, 25.00),
	(3, 'Капуста', 30, 750, 20.00),
	(4, 'Мука', 20, 1000, 50.00),
	(5, 'Колбаса', 70, 200, 100.00),
	(6, 'Молоко', 60, 800, 55.00);


INSERT INTO `recipes` (`RecipeID`, `DishID`, `CookingTime(min)`, `CookingTechnology`) VALUES
	(1, 1, 90, 'Растолочь вареную картошку, залить молоком'),
	(2, 3, 80, 'Перемешать муку, яйца, молоко. Затем испечь на сковороде'),
	(3, 2, 110, 'Борщ борщ борщ борщ борщ борщ борщ борщ');


INSERT INTO `compounds` (`DishID`, `ProductID`) VALUES
	(1, 1),
	(1, 6),
	(3, 2),
	(3, 4),
	(3, 6),
	(4, 1),
	(4, 2),
	(4, 5);


INSERT INTO `daily_cooking` (`DishID`, `NumberOfServings`, `CookingDate`) VALUES
	(1, 8, '2022-01-02'),
	(2, 30, '2021-12-31'),
	(3, 15, '2022-02-10'),
	(4, 30, '2021-12-31');