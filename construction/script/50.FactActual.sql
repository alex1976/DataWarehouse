
CREATE TABLE FactActual(
	/* External keys */
	 ProjectKEY   varchar (50) NOT NULL,
	 ProductKEY   varchar (50) NULL,
	 WorkBreakdownElementKEY   varchar (50) NULL,
	 SupplierKEY   varchar (50) NULL,
	 CustomerKEY   varchar (50) NULL,
	 CategoryKEY   varchar (50) NULL,
	
	/* data */
	 Id   varchar (50) NULL,
	 Description   varchar (250) NULL,
	 ResourceId   varchar (50) NULL,
	 ResourceDescription   varchar (250) NULL,
	 Date   date  NULL,
	 Month   char (2) NULL,
	 Year   char (4) NULL,
	 WBSId   varchar (50) NULL,
	 WBSDescription   varchar (250) NULL,
	 AccountingType   varchar (4) NULL,
	 JPSNumber   smallint  NULL,
	 JPSIsCurrent   bit  NULL,
	 JPSAmount   decimal (28, 14) NULL,
	 JPSQuantity   decimal (28, 14) NULL,
	 JISNumber   smallint  NULL,
	 JISIsCurrent   bit  NULL,
	 JISAmount   decimal (28, 14) NULL,
	 JISQuantity   decimal (28, 14) NULL,
	 CostAmount   decimal (28, 14) NULL,
	 CostQuantity   decimal (28, 14) NULL,
	 SOAId   varchar (50) NULL,
	 SOADescription   varchar (250) NULL,
	 ActualCustomFieldId1   varchar (50) NULL,
	 ActualCustomFieldDescription1   varchar (250) NULL,
	 ActualCustomFieldId2   varchar (50) NULL,
	 ActualCustomFieldDescription2   varchar (250) NULL,
	 ActualCustomFieldId3   varchar (50) NULL,
	 ActualCustomFieldDescription3   varchar (250) NULL,
	 ActualCustomFieldId4   varchar (50) NULL,
	 ActualCustomFieldDescription4   varchar (250) NULL,
	 ActualCustomFieldId5   varchar (50) NULL,
	 ActualCustomFieldDescription5   varchar (250) NULL,
	 ActualCustomFieldId6   varchar (50) NULL,
	 ActualCustomFieldDescription6   varchar (250) NULL,
	 ActualCustomFieldId7   varchar (50) NULL,
	 ActualCustomFieldDescription7   varchar (250) NULL,
	 ActualCustomFieldId8   varchar (50) NULL,
	 ActualCustomFieldDescription8   varchar (250) NULL,
	 ActualCustomFieldId9   varchar (50) NULL,
	 ActualCustomFieldDescription9   varchar (250) NULL,
	 ActualCustomFieldId10   varchar (50) NULL,
	 ActualCustomFieldDescription10   varchar (250) NULL,
	 
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