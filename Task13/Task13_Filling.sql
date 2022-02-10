
INSERT INTO `apartments` (`ID`, `Address`, `NumberOfResidents`, `Square`) VALUES
	(1, 'Магнитогорск, Рабочая 56, 4', 3, 15),
	(2, 'Магнитогорск, Карла Маркса 145, 78', 2, 20),
	(3, 'Магнитогорск, Ленина 123, 5', 4, 23);


INSERT INTO `lodgers` (`PersonalAccount`, `FullName`, `Phone`) VALUES
	(1, 'Иванов Иван Иванович', '89507361975'),
	(2, 'Петров Петр Петрович', '89895264879'),
	(3, 'Курков Семен Игорьевич', '89523635415'),
	(4, 'Соколова Мария Александоровна', '89545654654');


INSERT INTO `rents` (`LodgersID`, `ApartmentID`) VALUES
	(1, 2),
	(3, 1),
	(4, 3);

  
INSERT INTO `services` (`ID`, `Type`, `Unit`, `Price`) VALUES
	(1, 'Отопление', 'гКал', 80.00),
	(2, 'Электроэнеригя', 'кВт * ч', 60.00),
	(3, 'Вода', 'л * ч', 50.00);


INSERT INTO `payments` (`PersonalAccount`, `ServicesID`, `ActuallySpent`, `PayUpTo`, `PaidOnTime`, `DateOfPayment`) VALUES
	(1, 3, 20, '2022-02-06', 'Нет', '2022-02-09'),
	(3, 1, 15, '2022-02-10', 'Да', NULL),
	(4, 2, 56, '2022-01-25', 'Да', NULL);