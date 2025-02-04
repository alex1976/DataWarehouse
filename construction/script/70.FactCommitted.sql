
CREATE TABLE FactCommitted(
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
	ToDeliverCostQuantity decimal(28, 14) NULL,
	ToDeliverCostAmount decimal(28, 14) NULL,
	SOAId varchar(50) NULL,
	SOADescription varchar(250) NULL,
	CommittedCustomFieldId1 varchar(50) NULL,
	CommittedCustomFieldDescription1 varchar(250) NULL,
	CommittedCustomFieldId2 varchar(50) NULL,
	CommittedCustomFieldDescription2 varchar(250) NULL,
	CommittedCustomFieldId3 varchar(50) NULL,
	CommittedCustomFieldDescription3 varchar(250) NULL,
	CommittedCustomFieldId4 varchar(50) NULL,
	CommittedCustomFieldDescription4 varchar(250) NULL,
	CommittedCustomFieldId5 varchar(50) NULL,
	CommittedCustomFieldDescription5 varchar(250) NULL,
	CommittedCustomFieldId6 varchar(50) NULL,
	CommittedCustomFieldDescription6 varchar(250) NULL,
	CommittedCustomFieldId7 varchar(50) NULL,
	CommittedCustomFieldDescription7 varchar(250) NULL,
	CommittedCustomFieldId8 varchar(50) NULL,
	CommittedCustomFieldDescription8 varchar(250) NULL,
	CommittedCustomFieldId9 varchar(50) NULL,
	CommittedCustomFieldDescription9 varchar(250) NULL,
	CommittedCustomFieldId10 varchar(50) NULL,
	CommittedCustomFieldDescription10 varchar(250) NULL,
	
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
