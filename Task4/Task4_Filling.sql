INSERT INTO `categories` (`Category`, `HourlyRate`) VALUES
	(1, 15000),
	(2, 8500),
	(3, 5000);


INSERT INTO `workers` (`WorkerID`, `Category`, `FullName`, `PassportID`, `DOB`, `Phone`) VALUES
	(1, 3, 'Kim Chen In', '283487', '1985-05-26', '89507361975'),
	(2, 1, 'Vladimir Vladimirovich Putin', '98 45868', '1964-09-13', '11111111111'),
	(3, 2, 'Iosiph Visorionovich Stalin', '78918446', '1995-11-21', '89956324664');


INSERT INTO `completed_works` (`WorkID`, `CompanyName`, `WorkerID`, `DateOfComplition`, `HoursWorked`) VALUES
	(1, 'Festo', 2, '2022-02-01', 8),
	(2, 'Siemens', 3, '2021-11-27', 4),
	(3, 'Sitno', 1, '2019-06-20', 6);
