INSERT INTO `customers` (`ID`, `Name`, `Address`, `Phone`) VALUES
	(1, 'School', 'Long Street', '89823345678'),
	(2, 'Hospital', 'Short Street', '89507361975'),
	(3, 'Theater', 'Work Street', '89534567814');


INSERT INTO `models` (`ID`, `Name`, `Model`, `Specifications`, `Price`) VALUES
	(2, 'Chair', 'CH-1', 'Black', 4500.00),
	(1, 'Sofa', 'S-1', 'Soft', 10000.00),
	(3, 'Sofa', 'S-2', 'White', 12399.00);


INSERT INTO `contracts` (`ID`, `CustomerID`, `DateOfRegistration`, `DateOfExecution`) VALUES
	(1, 1, '2022-02-07', '2022-02-15'),
	(2, 2, '2022-01-26', '2022-02-02'),
	(3, 1, '2022-01-20', '2022-02-01');

  
INSERT INTO `sales` (`ContractID`, `ModelID`, `Number`) VALUES
	(1, 1, 2),
	(2, 3, 3),
	(3, 2, 30);