CREATE TABLE DimRoles(
	RoleKEY varchar(50) NOT NULL,
	Description varchar(250) NULL,
	Category varchar(100) NULL,
	SeniorityLevel varchar(100) NULL,
	ProfessionalArea varchar(100) NULL,
	StartDate date NULL,
	EndDate date NULL
 	PRIMARY KEY(RoleKEY)
);