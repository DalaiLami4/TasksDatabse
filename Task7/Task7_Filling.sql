INSERT INTO `products` (`ProductID`, `Name`, `Unit`, `RetailPrice`) VALUES
	(1, 'Bread', 'Thing', 25.00),
	(2, 'Milk', 'Botle', 55.00),
	(3, 'Sugar', 'Kg', 13.00),
	(4, 'Juice', 'Botle', 60.00);

  
INSERT INTO `sales` (`SaleID`, `ProductID`, `DateOfSale`, `NumberSold`) VALUES
	(1, 1, '2022-01-16', 25),
	(2, 2, '2022-02-08', 10),
	(3, 3, '2021-02-25', 16),
	(4, 4, '2022-02-09', 0);


INSERT INTO `departments` (`DepartmentID`, `Name`, `SaleID`, `DepartmentHead`, `Phone`, `SalesVolume`) VALUES
	(1, 'Alpha', 1, 'El Primo', '89507361975', 625.00),
	(2, 'Beta', 2, 'Amber', '89825561479', 550.00),
	(3, 'Gamma', 3, 'Larry', '89502364578', 208.00),
	(4, 'Delta', 4, 'Dima', '89823349249', 0.00);