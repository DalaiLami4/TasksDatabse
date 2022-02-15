INSERT INTO `workshops` (`ID`, `Name`, `Foreman`, `Phone`) VALUES
	(1, 'Alpha', 'Oleg', '89507361975'),
	(2, 'Beta', 'Masha', '89826514546'),
	(3, 'Delta', 'Dima', '89523546842');


INSERT INTO `products` (`ID`, `Name`, `WorkshopID`, `UnitPrice`) VALUES
	(1, 'Calendar', 1, 20.00),
	(2, 'Business card', 1, 15.00),
	(3, 'Booklet', 2, 25.00),
	(4, 'Magazine', 2, 50.00),
	(6, 'Newspaper', 3, 15.00);


INSERT INTO `contracts` (`ID`, `Customer`, `CustomerAddress`, `DateOfRegistration`, `DateOfExecution`) VALUES
	(1, 'New York Times', 'New York', '2022-01-01', '2022-01-09'),
	(2, 'Ural', 'Magnitogorsk', '2022-02-02', '2022-02-12'),
	(3, 'Rickson', 'Agapovka', '2022-02-10', '2022-02-15');


INSERT INTO `orders` (`ContractID`, `ProductID`, `Number`) VALUES
	(1, 4, 1000),
	(2, 6, 1500),
	(3, 1, 210);