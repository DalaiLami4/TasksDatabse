INSERT INTO `medicines` (`ID`, `Name`, `Manufacturer`, `Price`) VALUES
	(1, 'Alpha', 'Ural', 150.00),
	(2, 'Beta', 'MagMed', 340.00),
	(3, 'Delta', 'AgapProm', 264.00);


INSERT INTO `pharmacies` (`PharmacyNumber`, `Name`, `Address`, `Phone`) VALUES
	(1, 'Green', 'Small 23', '89507361975'),
	(2, 'Health', 'Long 6', '89825647812'),
	(3, 'Super', 'Short 34', '89552165121');


INSERT INTO `applications` (`ID`, `DateOfRegistration`, `PharmacyID`, `DateOfExecution`) VALUES
	(1, '2022-02-10', 1, '2022-02-17'),
	(2, '2022-01-17', 2, '2022-01-20'),
	(3, '2022-02-05', 3, '2022-02-10');

  
INSERT INTO `purchases` (`ApplicationID`, `MedicineID`, `Number`) VALUES
	(1, 1, 50),
	(2, 2, 60),
	(3, 3, 70);