INSERT INTO `diagnoses` (`ID`, `Name`) VALUES
	(1, 'Influenza'),
	(2, 'Quinsy'),
	(3, 'Bronchitis'),
	(4, 'Pneumonia'),
	(5, 'Tuberculosis'),
	(6, 'Broken');


INSERT INTO `doctors` (`FullName`, `Speciality`, `Category`) VALUES
	('Ivanov Ivan Denisovich', 'Surgeon', 3),
	('Kutayakov Dima Armanovich', 'Therapist', 1),
	('Petrov Petr Petrovich', 'Urologist', 2);

  
INSERT INTO `patients` (`MedicalCardID`, `FullName`, `DOB`, `Address`, `Gender`, `Discount(%)`) VALUES
	(1, 'Sidorov Vladislav Ivanovich', '1994-05-18', 'Rabochaya 55/2', 'Male', 0),
	(2, 'Lavandova Sofia Alekseevna', '1989-04-22', 'Promstroy 23', 'Female', 12.3),
	(3, 'Ivanova Maria Olegovna', '2001-11-03', 'Shkolnaya 81/1', 'Female', 0);


INSERT INTO `appointments` (`AppointmentCard`, `Patient`, `Doctor`, `DateOfVisit`, `VisitPurpose`, `Diagnosis`, `Price`) VALUES
	(1, 1, 'Kutayakov Dima Armanovich', '2022-02-11', 'Headache', 4, 3000.00),
	(2, 3, 'Ivanov Ivan Denisovich', '2022-02-08', 'Broken arm', 6, 5000.00),
	(3, 2, 'Petrov Petr Petrovich', '2022-02-10', 'Lost hearing', NULL, 1550.00);