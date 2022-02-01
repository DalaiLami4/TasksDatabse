INSERT INTO `product_kinds` (`ProductID`, `ProductName`) VALUES
	(1, 'T-shirt'),
	(2, 'Skirt'),
	(3, 'Dress'),
	(4, 'Trousers'),
	(5, 'Jacket'),
	(6, 'Shorts'),
	(7, 'Hat');


INSERT INTO `product_models` (`ModelID`, `ModelName`, `ProductID`, `ModelPrice`) VALUES
	(1, 'Long', 3, 3500),
	(2, 'Short', 1, 500),
	(3, 'Black', 7, 750),
	(4, 'White', 2, 3000);


INSERT INTO `receipts` (`ReceiptID`, `ModelID`, `ReceiptDate`, `Number`, `Recipient`) VALUES
	(1, 2, '2021-12-14', 10, 'Administrator'),
	(2, 3, '2022-02-01', 30, 'Worker'),
	(3, 1, '2021-09-28', 15, 'Yes');