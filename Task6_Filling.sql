INSERT INTO `countries` (`CountryID`, `Name`, `VisaPrice`) VALUES
	(1, 'Afghanistan', 3000),
	(2, 'Turkey', 2150),
	(3, 'Germany', 4600),
	(4, 'Madagaskar', 3450);

INSERT INTO `routes` (`RouteID`, `CountryID`, `Name`) VALUES
	(1, 1, 'West route'),
	(2, 2, 'East route'),
	(3, 4, 'South route');

INSERT INTO `sales` (`RouteID`, `Purpose`, `TicketPrice`, `NumberSales`, `DateSale`) VALUES
	(2, 'Relax', 15000, 6, '2020-05-14'),
	(3, 'Work', 28499, 4, '2021-09-07');