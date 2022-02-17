INSERT INTO `cashiers` (`ID`, `FullName`) VALUES
	(1, 'Masha'),
	(2, 'Dasha'),
	(3, 'Katia');

  
INSERT INTO `currency` (`ID`, `Name`, `SellingRate`, `BuyingRate`) VALUES
	(1, 'Alpha', 10.00, 12.00),
	(2, 'Beta', 70.00, 84.00),
	(3, 'Delta', 25.00, 30.00);


INSERT INTO `customers` (`ID`, `FullName`, `PassportID`) VALUES
	(1, 'Dima', '798452'),
	(2, 'Lesha', '587545'),
	(3, 'Igor', '454321');


INSERT INTO `deals` (`ID`, `SoldCurrencyID`, `PurchasedCurrencyID`, `CashierID`, `CustomerID`, `DateOfDeal`, `TimeOfDeal`, `AmountOfSoldCurrency`, `AmountOfPurchasedCurrency`) VALUES
	(1, 1, 2, 2, 3, '2022-02-17', '13:00:00', 800.00, 150.00),
	(2, 2, 1, 1, 1, '2022-02-17', '14:00:00', 1000.00, 12000.00),
	(3, 3, 1, 3, 2, '2022-02-17', '15:00:00', 500.00, 420.00);