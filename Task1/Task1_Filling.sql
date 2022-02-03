INSERT INTO `customers` (`Name`, `Address`, `Phone`) VALUES
	('Dima', 'Agapovka 81', '89507361975'),
	('Galina', 'Magnitogorsk', '88007353555'),
	('Ivan', 'Magnitogorsk, Karl Marks 165/3', '85162135487');


INSERT INTO `products` (`ProductID`, `ProductName`, `Price`) VALUES
	(1, 'Apple', 10),
	(2, 'Carrot', 7),
	(3, 'Tomato', 14),
	(4, 'Egg', 1);
	
	
INSERT INTO `orders` (`OrderID`, `CustomerName`, `NumberDeal`, `DateDeal`, `Product`, `PlannedDelivery`) VALUES
	(1, 'Dima', 1, '2022-02-01', 1, 10),
	(2, 'Ivan', 2, '2022-02-08', 4, 30);


INSERT INTO `shipments` (`ShipmentID`, `OrderID`, `DateShipment`, `ShipmentProducts`) VALUES
	(1, 1, '2022-02-06', 10),
	(2, 2, '2022-02-15', 15);
