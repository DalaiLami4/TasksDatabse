INSERT INTO `publications` (`PublicationID`, `PublicationType`, `Name`, `Price`) VALUES
	(1, 'Magazine', 'Orlenok', 20.000000),
	(2, 'Newspaper', 'Ural', 15.000000),
	(3, 'Magazine', 'Playboy', 200.000000);


INSERT INTO `recipients` (`RecipientID`, `FullName`, `Address`) VALUES
	(1, 'Kutayakov Dima Armanovich', 'Shkolnaya'),
	(2, 'Belkun Ivan Denisovich', 'Rabochaya'),
	(3, 'Klochkov Vlad Ivanovich', 'Proletarskaya');


INSERT INTO `subscriptions` (`SubscriptionID`, `RecipientID`, `PublicationID`, `SubscriptionTerm`, `StartMonth`, `StartYear`) VALUES
	(1, 1, 3, 12, 5, '2021'),
	(2, 2, 2, 1, 1, '2022'),
	(3, 1, 2, 4, 1, '2022');