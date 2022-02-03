INSERT INTO `dillers` (`DillerID`, `Name`, `Address`, `Phone`, `Contact`) VALUES
	(1, 'Asus', 'New York', '66666666666', 'Fill'),
	(2, 'Dell', 'Chicago', '15624684289', 'John'),
    (3, 'Intel', 'Vashington', '46546548484', 'Gabe'),
    (4, 'MSI', 'Moscow', '45454545454', 'Jack');


INSERT INTO `products` (`ProductID`, `Name`, `RecieptDate`, `Number`, `WholesalePrice`) VALUES
	(1, 'Video card', '2022-01-01', 100, 100000),
	(2, 'CPU', '2022-03-06', 20, 5000),
    (3, 'Mouse', '2022-02-11', 45, 1000);


INSERT INTO `sales` (`SaleID`, `ProductID`, `DillerID`, `DateSale`, `NumberSold`, `RetailPrice`) VALUES
	(1, 2, 3, '2022-03-08', 0, 8500),
    (2, 3, 1, '2022-02-15', 0, 2450),
    (3, 1, 4, '2022-01-03', 27, 250000);
