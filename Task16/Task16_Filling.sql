INSERT INTO `banks` (`ID`, `Name`, `LegalAddress`) VALUES
	(1, 'Alpha', 'Work Street'),
	(2, 'Beta', 'Long Street'),
	(3, 'Delta', 'Short Street');


INSERT INTO `atms` (`ID`, `Address`, `BankID`) VALUES
	(1, 'Work Street', 1),
	(2, 'Long Street', 2),
	(3, 'Short Street', 3);


INSERT INTO `customers` (`CardNumber`, `FullName`, `Address`, `BankID`) VALUES
	(1, 'Jack', 'Long Street', 2),
	(2, 'John', 'Short Street', 1),
	(3, 'Masha', 'Long Street', 3);


INSERT INTO `operations` (`CardNumber`, `ATM_ID`, `DateAndTime`, `Сommission`, `Sum`) VALUES
	(1, 1, '2021-11-21 16:30:00', 'Да', 500.00),
	(2, 1, '2021-12-13 18:00:00', 'Нет', 1500.00),
	(3, 3, '2022-01-24 09:48:12', 'Нет', 150.00);