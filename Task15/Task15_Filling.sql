INSERT INTO `customers` (`ID`, `FullName`, `Phone`) VALUES
	(1, 'Иванов Иван Иванович', '89507361975'),
	(2, 'Петров Игорь Валентинович', '89822316515'),
	(3, 'Сидоров Юрий Владиславович', '89526546455');


INSERT INTO `products` (`ID`, `Name`, `Firm`, `Model`, `Specifications`, `Price`, `Guarantee`, `Picter`) VALUES
	(1, 'Утюг', 'Bosh', 'ZT5', 'Есть корпус, шнур, кнопки', 3500.00, 12, _binary ''),
	(2, 'Пылесос', 'Samsung', 'RE423b', 'Есть шланг, кнопки, колесики', 8000.00, 12, _binary ''),
	(3, 'Стиральная машина', 'Bosh', '43H2J', 'Есть барабан, кнопки, дверца', 21000.00, 24, _binary '');


INSERT INTO `shops` (`ID`, `Email`, `DeliveryPayment`) VALUES
	(1, 'vsiatehnica.ru@mail.ru', 'Да'),
	(2, 'magazinshop@mail.ru', 'Нет'),
	(3, 'bitovaiatehnica@mail.ru', 'Да');


INSERT INTO `product_availability` (`ShopID`, `ProductID`) VALUES
	(1, 1),
	(1, 2),
	(2, 1),
	(2, 2),
	(2, 3),
	(3, 3);


INSERT INTO `orders` (`ID`, `ShopID`, `ProductID`, `CustomerID`, `OrderDate`, `OrderTime`, `Number`, `Confirmation`) VALUES
	(1, 2, 2, 1, '2022-02-10', '14:00:00', 1, 'Да'),
	(2, 2, 1, 2, '2022-02-05', '16:45:00', 1, 'Нет'),
	(3, 3, 3, 1, '2022-02-01', '13:17:01', 1, 'Да'),
	(4, 1, 2, 3, '2022-01-29', '16:17:50', 1, 'Да');


INSERT INTO `deliveries` (`OrderID`, `CustomerID`, `DeliveryDate`, `DeliveryTime`, `Address`, `Courier`) VALUES
	(1, 1, '2022-02-01', '14:00:00', 'Агаповка', 'Сорокин Константин Михайлович'),
	(3, 1, '2022-02-02', '12:00:00', 'Агаповка', 'Иванова Софья Алексеевна'),
	(4, 3, '2022-01-30', '17:00:00', 'Магнитогорск', 'Сорокин Константин Михайлович');