INSERT INTO `manufacturings` (`ID`, `Name`, `Foreman`) VALUES
	(1, 'Alpha', 'John Smith'),
	(2, 'Beta', 'Tyler Derden'),
	(3, 'Delta', 'Kutayakov Dima Armanovich');


INSERT INTO `overalls` (`ID`, `Type`, `WearPeriod(мес)`, `Price`) VALUES
	(1, 'Jacket', 6, 2500.00),
	(2, 'Shoes', 5, 1400.00),
	(3, 'Gloves', 1, 300.00);


INSERT INTO `workers` (`ID`, `FullName`, `ManufacturingID`, `Position`, `Discount(%)`) VALUES
	(1, 'Mark ', 2, 'Junior', 30),
	(2, 'Will', 1, 'Senior', 44.5),
	(3, 'Bob', 1, 'Junior', 32.1);


INSERT INTO `receipts` (`WorkerID`, `OverallID`, `DateOfReceiving`, `Signature`) VALUES
	(1, 1, '2021-11-25', 'a'),
	(2, 2, '2022-02-08', 'b'),
	(2, 3, '2022-02-08', 'b'),
	(3, 1, '2021-09-25', 'c');