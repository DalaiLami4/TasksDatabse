INSERT INTO `employees` (`ID`, `FullName`, `Position`) VALUES
	(1, 'Jack', 'Junior'),
	(2, 'Masha', 'Senior'),
	(3, 'Dima', 'Senior');


INSERT INTO `products` (`ID`, `Name`, `Firm`, `Model`, `Specifications`, `GuaranteePeriod`, `Picture`) VALUES
	(1, 'Iron', 'Bosh', 'DS343L', 'Yes', 0, _binary ''),
	(2, 'Washing machine', 'Samsung', '4GH-3', 'Wash and Machine', 24, _binary ''),
	(3, 'Vacuum cleaner', 'LG', 'DIN34', 'Cleaning', 15, _binary '');


INSERT INTO `orders` (`ID`, `Customer`, `ProductID`, `EmployeeID`, `Guarantee`, `DateOfReceipt`) VALUES
	(1, 'Ivan', 1, 3, 'No', '2022-01-01'),
	(2, 'Olga', 3, 3, 'Yes', '2022-01-20'),
	(3, 'Sasha', 3, 1, 'Yes', '2022-02-01');


INSERT INTO `execution_of_orders` (`OrderID`, `EmployeeID`, `TypeOfRepair`, `Price`, `DateOfExecution`, `ClientNotification`, `DateOfReceiving`, `PaymentAmount`) VALUES
	(1, 3, 'Не утюжит', 1500.00, '2022-01-08', 'Yes', '2022-02-09', 1500.00),
	(2, 3, 'Не сосет', 3650.00, '2022-01-29', 'Yes', '2022-02-02', 0.00),
	(3, 1, 'Не включается', 3500.00, '2022-02-10', 'No', '2022-02-25', 0.00);