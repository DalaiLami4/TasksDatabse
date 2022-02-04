INSERT INTO `products` (`ProductID`, `Name`, `Unit`, `RetailPrice`) VALUES
	(1, 'Bread', 'Thing', 30.000000),
	(2, 'Juice', 'Thing', 50.000000),
	(3, 'Tea', 'Thing', 48.000000),
	(4, 'Fruit', 'Kg', 13.000000);


INSERT INTO `departments` (`DepartmentID`, `Name`, `ProductID`, `DepartmentHead`, `Phone`, `Volume`) VALUES
	(1, 'Juice', 2, 'Ivanov Ivan Ivanovich', '89507361975', 15),
	(2, 'Bread', 1, 'Petrova Masha Igorevna', '89824561278', 31),
	(3, 'Tea', 3, 'Nuri', '56465423132', 9),
	(4, 'Fruit', 4, 'Tyler Derden', '66666666666', 5);


INSERT INTO `sales` (`SaleID`, `DepartmentID`, `DateOfSale`, `NumberSold`) VALUES
	(1, 1, '2022-01-01', 311),
	(2, 2, '2021-12-02', 895),
	(3, 3, '2022-02-02', 17);