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


INSERT INTO `appointment_cards` (`ID`, `Doctor`, `Time`) VALUES
	(1, 'Ivanov Ivan Denisovich', '9:00-9:30'),
	(2, 'Ivanov Ivan Denisovich', '10:00-10:30'),
	(3, 'Petrov Petr Petrovich', '14:10-14:40'),
	(4, 'Kutayakov Dima Armanovich', '10:00-10:40');


INSERT INTO `appointments` (`AppointmentCard`, `Patient`, `DateOfVisit`, `VisitPurpose`, `Diagnosis`, `Price`) VALUES
	(1, 2, '2022-01-10', 'Broken arm', 6, 0.00),
	(2, 3, '2022-02-10', 'Broken leg', 6, 0.00),
	(4, 1, '2022-02-11', 'Cough', 5, 0.00);