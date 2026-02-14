CREATE TABLE DimOrganizations(
	OrganizationKEY varchar(50) NOT NULL,
	Description varchar(250) NULL,
	Division varchar(100) NULL,
	Department varchar(100) NULL,
	Manager varchar(100) NULL
 	PRIMARY KEY(OrganizationKEY)
);