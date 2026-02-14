CREATE TABLE DimEmployees(
	EmployeeKEY varchar(50) NOT NULL,
	Name varchar(100) NULL,
	Surname varchar(100) NULL,
	BirthDate date NULL,
	FiscalCode varchar(50) NULL,
	Gender char(1),
	CivilState varchar(50) NULL,
	HiringDate date NULL,
	ReleaseDate date NULL
 	PRIMARY KEY(EmployeeKEY)
);