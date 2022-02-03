INSERT INTO `dillers` (`DillerID`, `Name`, `Address`, `Phone`, `Contact`) VALUES
	(1, 'A', 'City A', '0000', 'John'),
	(2, 'B', 'City B', '0001', 'Nick'),
	(3, 'C', 'City C', '0011', 'Piter'),
	(4, 'D', 'City D', '0111', 'Bob');


INSERT INTO `supplies` (`SupplyID`, `DillerID`, `DateOfReceipt`, `Number`, `WholesalePrice`) VALUES
	(1, 1, '2021-12-01', 10, 300),
	(2, 2, '2021-11-20', 15, 400),
	(3, 3, '2022-02-03', 50, 179);


INSERT INTO `products` (`ProductID`, `Name`, `SupplyID`) VALUES
	(1, 'A', 2),
	(2, 'B', 3),
	(3, 'C', 2),
	(4, 'D', 1);


INSERT INTO `sales` (`SaleID`, `ProductID`, `DateOfSale`, `NumberSold`, `RetailPrice`) VALUES
	(1, 2, '2022-02-05', 0, 250),
	(2, 1, '2021-11-21', 15, 650),
	(3, 4, '2021-12-01', 6, 500);