INSERT INTO `clients` (`ClientID`, `FullName`, `PassportID`, `Address`, `Phone`) VALUES
	(1, 'Kutayakov Dmitriy Armanovich', '172 151 351 5', 'Agapovka', '89507361975'),
	(2, 'Ivanov Ivan Ivanovich', '8797 8754', 'Moscow', '12135461017'),
	(3, 'Petrov Petr Petrovich', '779876412', 'Perm', '89856512312');


INSERT INTO `deposits` (`DepositID`, `Name`, `ShelfLife`, `Rate`) VALUES
	(1, 'Накопительный (в российских рублях)', 13, 10),
	(2, 'Капитал (в долларах США)', 18, 7),
	(3, 'Победа (в белорусских рублях)', 13, 2),
	(4, 'К отпуску (в белорусских рублях)', 12, 1),
	(5, 'Накопительный (в белорусских рублях)', 36, 18);
    

    INSERT INTO `accounts` (`AccountNumber`, `ClientID`, `DepositID`, `DateOppening`, `DateClosing`, `Sum`) VALUES
	(1, 1, 2, '2022-02-01', '2023-03-01', 1500),
	(2, 2, 3, '2020-06-18', '2021-07-18', 80000);
