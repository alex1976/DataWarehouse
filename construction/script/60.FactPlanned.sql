

CREATE TABLE FactPlanned(
	/* External keys */
	ProjectKEY varchar(50) NOT NULL,
	ProductKEY varchar(50) NULL,
	WorkBreakdownElementKEY varchar(50) NULL,
	SupplierKEY varchar(50) NULL,
	CustomerKEY varchar(50) NULL,
	CategoryKEY varchar(50) NULL,
	
	/* data */
	Id varchar(50) NULL,
	Description varchar(250) NULL,
	CategoryId varchar(50) NULL,
	CategoryDescription varchar(250) NULL,
	Date date NULL,
	Month char(2) NULL,
	Year char(4) NULL,
	AccountingType varchar(4) NULL,
	EarnAmount decimal(28, 14) NULL,
	EarnQuantity decimal(28, 14) NULL,
	CostAmount decimal(28, 14) NULL,
	CostQuantity decimal(28, 14) NULL,
	SOAId varchar(50) NULL,
	SOADescription varchar(250) NULL,
	PlannedCustomFieldId1 varchar(50) NULL,
	PlannedCustomFieldDescription1 varchar(250) NULL,
	PlannedCustomFieldId2 varchar(50) NULL,
	PlannedCustomFieldDescription2 varchar(250) NULL,
	PlannedCustomFieldId3 varchar(50) NULL,
	PlannedCustomFieldDescription3 varchar(250) NULL,
	PlannedCustomFieldId4 varchar(50) NULL,
	PlannedCustomFieldDescription4 varchar(250) NULL,
	PlannedCustomFieldId5 varchar(50) NULL,
	PlannedCustomFieldDescription5 varchar(250) NULL,
	PlannedCustomFieldId6 varchar(50) NULL,
	PlannedCustomFieldDescription6 varchar(250) NULL,
	PlannedCustomFieldId7 varchar(50) NULL,
	PlannedCustomFieldDescription7 varchar(250) NULL,
	PlannedCustomFieldId8 varchar(50) NULL,
	PlannedCustomFieldDescription8 varchar(250) NULL,
	PlannedCustomFieldId9 varchar(50) NULL,
	PlannedCustomFieldDescription9 varchar(250) NULL,
	PlannedCustomFieldId10 varchar(50) NULL,
	PlannedCustomFieldDescription10 varchar(250) NULL,
	StartDate date NULL,
	EndDate date NULL,
	
	 /* external keys */
	CONSTRAINT fk_project
      FOREIGN KEY(ProjectKEY) 
        REFERENCES dimproject(ProjectKEY),
		
	CONSTRAINT fk_workbreakdownelement
      FOREIGN KEY(WorkBreakdownElementKEY) 
        REFERENCES dimworkbreakdownelement(WorkBreakdownElementKEY),
		
	CONSTRAINT fk_product
      FOREIGN KEY(ProductKEY) 
        REFERENCES dimproduct(ProductKEY),
		
	CONSTRAINT fk_category
      FOREIGN KEY(CategoryKEY) 
        REFERENCES dimcategory(CategoryKEY),
		
	CONSTRAINT fk_supplier
      FOREIGN KEY(SupplierKEY) 
        REFERENCES dimsupplier(SupplierKEY),
		
	CONSTRAINT fk_customer
      FOREIGN KEY(CustomerKEY) 
        REFERENCES dimcustomer(CustomerKEY)
);

