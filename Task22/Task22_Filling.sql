INSERT INTO `organizations` (`ID`, `Name`, `CountryID`, `City`, `Address`, `Phone`, `E-mail`, `Website`) VALUES
	(1, 'Alpha', 10, 'New York', 'Long Street 34', '89507361957', 'alpha@mail.ru', NULL),
	(2, 'Beta', 1, 'Moscow', 'Lenina 234', '89541321565', 'beta@mail.ru', NULL);

  
INSERT INTO `departments` (`ID`, `Name`) VALUES
	(1, 'Agap'),
	(2, 'Maga'),
	(3, 'Win');


INSERT INTO `workers` (`ID`, `DepartmentID`, `FullName`, `Position`, `Salary`, `Premium`, `Month`) VALUES
	(1, 1, 'Dima', 'Junior', 30000.00, 250.00, 10),
	(2, 2, 'Nikolaiy', 'Senior', 65000.00, 2500.00, 11),
	(3, 3, 'Masha', 'Junior', 32000.00, 1000.00, 10);


INSERT INTO `contracts` (`ID`, `OrganizationID`, `DateOfConclusion`) VALUES
	(1, 1, '2021-02-17'),
	(2, 2, '2021-01-25'),
	(3, 1, '2022-01-20');


INSERT INTO `deliveries` (`ContractID`, `TypeOfEquipment`, `UserComment`, `WorkerID`) VALUES
	(1, 'First', NULL, 2),
	(2, 'Sec', NULL, 3),
	(3, 'Third', NULL, 2);