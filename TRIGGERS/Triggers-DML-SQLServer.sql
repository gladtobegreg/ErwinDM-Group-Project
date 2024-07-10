-- DML Actions for Trigger testing

-- TRIGGER:

DROP TRIGGER IF EXISTS [Manufacturer].[uTidu_AuditVehicleHistory]
GO
CREATE trigger [Manufacturer].[uTidu_AuditVehicleHistory]
on [Manufacturer].[Vehicle]
after delete, update
as
begin
    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	DECLARE @TransactionNumber INT = 1;
    declare @DeletedMessage char(25) = 'Rows has been deleted';
	declare @Note char(30) = 'Insert or Update statement';
	declare @SysStartTimeAsSysEnd datetime2;
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
		SET @TransactionNumber = 3;
		select @SysStartTimeAsSysEnd = Inserted.SysStartTime from Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
		SET @TransactionNumber = 2;
        set @IsDeleted = 'Y';
    end;
    else
        set @action = 'I';
    if (@action <> 'I')
        insert into [Triggered].[AuditVehicleHistory]
        (
           AuditVehicleHistoryId,
           VehicleId
          , VinNumber
          , VehicleYear
          , MSRP
          , UserAuthorizationId
		  , SysStartTime
		  , SysEndTime
          , Note
          , IsDeleted
          , TransactionNumber
		  , RowLevelHashKey
        )
        select SYSDATETIME()     as AuditVehicleHistoryId,
              VehicleId
			 , VinNumber
			 , VehicleYear
			 , MSRP
             , UserAuthorizationId
			 , Deleted.SysStartTime
			 , case
					when @action <> 'D' then
					  @SysStartTimeAsSysEnd
				   else
					   sysdatetime()
			   end as SysEndTime			 
             , case
                   when @action <> 'D' then
                       @Note
                   else
                       @DeletedMessage
               end
             , @IsDeleted          as IsDeleted
             , @TransactionNumber AS TransactionNumber
			 , NULL
        from Deleted;
end;

-- TESTING 
UPDATE [Manufacturer].[Vehicle]
SET MSRP = 594859348.00
WHERE VehicleId = 2;

SELECT * FROM [Manufacturer].[Vehicle];
SELECT * FROM [Triggered].[AuditVehicleHistory];

DELETE FROM [Manufacturer].[Vehicle] WHERE VehicleId = 8;

SELECT * FROM [Manufacturer].[Vehicle];
SELECT * FROM [Triggered].[AuditVehicleHistory];

----------------------------------------------------------------------------

DROP TRIGGER IF EXISTS [Manufacturer].[uTidu_AuditModelHistory]
GO
CREATE trigger [Manufacturer].[uTidu_AuditModelHistory]
on [Manufacturer].[Model]
after delete, update
as
begin
    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	DECLARE @TransactionNumber INT = 1;
    declare @DeletedMessage char(25) = 'Rows has been deleted';
	declare @Note char(30) = 'Insert or Update statement';
	declare @SysStartTimeAsSysEnd datetime2;
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
		SET @TransactionNumber = 3;
		select @SysStartTimeAsSysEnd = Inserted.SysStartTime from Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
		SET @TransactionNumber = 2;
        set @IsDeleted = 'Y';
    end;
    else
        set @action = 'I';
    if (@action <> 'I')
        insert into [Triggered].[AuditModelHistory]
        (
           AuditModelHistoryId
          , ModelId
          , ModelName
          , ModelVariant
          , BodyName
          , RowLevelHashKey
		  , Note
		  , IsDeleted
          , TransactionNumber
          , UserAuthorizationKey
          , SysStartTime
		  , SysEndtime
        )
        select SYSDATETIME()     as AuditModelHistoryId,
              ModelId
			 , ModelName
			 , ModelVariant
             , BodyName
			 , NULL
             , case
                   when @action <> 'D' then
                       @Note
                   else
                       @DeletedMessage
               end	
             , @IsDeleted          as IsDeleted	
             , @TransactionNumber AS TransactionNumber
			 , UserAuthorizationId
			 , Deleted.SysStartTime
			 , case
					when @action <> 'D' then
					  @SysStartTimeAsSysEnd
				   else
					   sysdatetime()
			   end as SysEndTime			 
        from Deleted;
end;

-- TESTING 
UPDATE [Manufacturer].[Model]
SET [ModelName]  = 'TT'
WHERE [ModelId] = 1;

SELECT * FROM [Manufacturer].[Model];
SELECT * FROM [Triggered].[AuditModelHistory];

DELETE FROM [Manufacturer].[Model] WHERE [ModelId] = 1;

SELECT * FROM [Manufacturer].[Model];
SELECT * FROM [Triggered].[AuditModelHistory];

-------------------------------------------
DROP TRIGGER IF EXISTS [Manufacturer].[uTidu_AuditMakeHistory]
GO
CREATE trigger [Manufacturer].[uTidu_AuditMakeHistory]
on [Manufacturer].[Make]
after delete, update
as
begin
    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	DECLARE @TransactionNumber INT = 1;
    declare @DeletedMessage char(25) = 'Rows has been deleted';
	declare @Note char(30) = 'Insert or Update statement';
	declare @SysStartTimeAsSysEnd datetime2;
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
		SET @TransactionNumber = 3;
		select @SysStartTimeAsSysEnd = Inserted.SysStartTime from Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
		SET @TransactionNumber = 2;
        set @IsDeleted = 'Y';
    end;
    else
        set @action = 'I';
    if (@action <> 'I')
        insert into [Triggered].[AuditMakeHistory]
        (
            AuditMakeHistoryId
          , MakeId
          , MakeName
          , RowLevelHashKey
          , Note
		  , IsDeleted
          , TransactionNumber
          , UserAuthorizationId
          , SysStartTime
		  , SysEndtime
        )
        select SYSDATETIME()     as AuditMakeHistoryId
             , VehicleMakeId
			 , VehicleMakeName
			 , RowLevelHashKey
             , case
                   when @action <> 'D' then
                       @Note
                   else
                       @DeletedMessage
               end	
             , @IsDeleted          as IsDeleted	
             , @TransactionNumber AS TransactionNumber
			 , UserAuthorizationId
			 , Deleted.SysStartTime
			 , case
					when @action <> 'D' then
					  @SysStartTimeAsSysEnd
				   else
					   sysdatetime()
			   end as SysEndTime			 
        from Deleted;
end;

-- TESTING 
UPDATE [Manufacturer].[Make]
SET [VehicleMakeName]  = 'BMW'
WHERE [VehicleMakeId] = 1;

SELECT * FROM [Manufacturer].[Make];
SELECT * FROM [Triggered].[AuditMakeHistory];

DELETE FROM [Manufacturer].[Make] WHERE [VehicleMakeId] = 1;

SELECT * FROM [Manufacturer].[Make];
SELECT * FROM [Triggered].[AuditMakeHistory];

-------------------------------------------------


DROP TRIGGER IF EXISTS [Sales].[uTidu_AuditCustomerHistory]
GO
CREATE trigger [Sales].[uTidu_AuditCustomerHistory]
on [Sales].[Customer]
after delete, update
as
begin
    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	DECLARE @TransactionNumber INT = 1;
    declare @DeletedMessage char(25) = 'Rows has been deleted';
	declare @Note char(30) = 'Insert or Update statement';
	declare @SysStartTimeAsSysEnd datetime2;
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
		SET @TransactionNumber = 3;
		select @SysStartTimeAsSysEnd = Inserted.SysStartTime from Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
		SET @TransactionNumber = 2;
        set @IsDeleted = 'Y';
    end;
    else
        set @action = 'I';
    if (@action <> 'I')
        insert into [Triggered].[AuditCustomerHistory]
        (
           AuditCustomerHistoryId
		  , CustomerId
		  , CustomerName
		  , CustomerAddress1
		  , CustomerAddress2
		  , CustomerTown
		  , CustomerPostalCode
		  , IsCustomerReseller
		  , IsCustomerCreditRisk
		  , SpendCapacity
          , RowLevelHashKey
          , Note
		  , IsDeleted
          , TransactionNumber
          , UserAuthorizationId
          , SysStartTime
		  , SysEndtime
        )
        select SYSDATETIME()     as AuditCustomerHistoryId
			 , CustomerId
			 , CustomerName
			 , CustomerAddress1
			 , CustomerAddress2
			 , CustomerTown
			 , CustomerPostalCode
			 , IsCustomerReseller
			 , IsCustomerCreditRisk
			 , Deleted.CustomerSpendCapacity
			 , RowLevelHashKey
             , case
                   when @action <> 'D' then
                       @Note
                   else
                       @DeletedMessage
               end	
             , @IsDeleted          as IsDeleted	
             , @TransactionNumber AS TransactionNumber
			 , UserAuthorizationId
			 , Deleted.SysStartTime
			 , case
					when @action <> 'D' then
					  @SysStartTimeAsSysEnd
				   else
					   sysdatetime()
			   end as SysEndTime			 
        from Deleted;
end;

-- TESTING 
UPDATE [Sales].[Customer]
SET [CustomerName]  = 'Fidiana Mujaj'
WHERE [CustomerId] = 88;

SELECT * FROM [Sales].[Customer];
SELECT * FROM [Triggered].[AuditCustomerHistory];

DELETE FROM [Sales].[Customer] WHERE [CustomerId] = 1;

SELECT * FROM [Sales].[Customer];
SELECT * FROM [Triggered].[AuditCustomerHistory];


-----------------
DROP TRIGGER IF EXISTS [HumanResources].[uTidu_AuditStaffHistory]
GO
CREATE trigger [HumanResources].[uTidu_AuditStaffHistory]
on [HumanResources].[Staff]
after delete, update
as
begin
    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	DECLARE @TransactionNumber INT = 1;
    declare @DeletedMessage char(25) = 'Rows has been deleted';
	declare @Note char(30) = 'Insert or Update statement';
	declare @SysStartTimeAsSysEnd datetime2;
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
		SET @TransactionNumber = 3;
		select @SysStartTimeAsSysEnd = Inserted.SysStartTime from Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
		SET @TransactionNumber = 2;
        set @IsDeleted = 'Y';
    end;
    else
        set @action = 'I';
    if (@action <> 'I')
        insert into [Triggered].[AuditStaffHistory]
        (
           AuditStaffHistoryId
		  , StaffId
		  , StaffName
		  , Department
          , RowLevelHashKey
          , Note
		  , IsDeleted
          , TransactionNumber
          , UserAuthorizationId
          , SysStartTime
		  , SysEndtime
        )
        select SYSDATETIME()     as AuditStaffHistoryId
			 , StaffId
			 , StaffName
			 , Department
			 , RowLevelHashKey
             , case
                   when @action <> 'D' then
                       @Note
                   else
                       @DeletedMessage
               end	
             , @IsDeleted          as IsDeleted	
             , @TransactionNumber AS TransactionNumber
			 , UserAuthorizationId
			 , Deleted.SysStartTime
			 , case
					when @action <> 'D' then
					  @SysStartTimeAsSysEnd
				   else
					   sysdatetime()
			   end as SysEndTime			 
        from Deleted;
end;

-- TESTING 
UPDATE [HumanResources].[Staff]
SET [StaffName]  = 'Gregory'
WHERE [StaffId] = 7;

SELECT * FROM[HumanResources].[Staff];
SELECT * FROM [Triggered].[AuditStaffHistory];

DELETE FROM [HumanResources].[Staff] WHERE [StaffId] = 7;

SELECT * FROM[HumanResources].[Staff];
SELECT * FROM [Triggered].[AuditStaffHistory];

-----------------------------------

DROP TRIGGER IF EXISTS [Sales].[uTidu_AuditOrderHistory]
GO
CREATE trigger [Sales].[uTidu_AuditOrderHistory]
on [Sales].[Order]
after delete, update
as
begin
    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	DECLARE @TransactionNumber INT = 1;
    declare @DeletedMessage char(25) = 'Rows has been deleted';
	declare @Note char(30) = 'Insert or Update statement';
	declare @SysStartTimeAsSysEnd datetime2;
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
		SET @TransactionNumber = 3;
		select @SysStartTimeAsSysEnd = Inserted.SysStartTime from Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
		SET @TransactionNumber = 2;
        set @IsDeleted = 'Y';
    end;
    else
        set @action = 'I';
    if (@action <> 'I')
        insert into [Triggered].[AuditOrderHistory]
        (
           AuditOrderHistoryId
		  , OrderId
		  , InvoiceNumber
		  , TotalPrice
		  , [Date]
          , RowLevelHashKey
          , Note
		  , IsDeleted
          , TransactionNumber
          , UserAuthorizationId
          , SysStartTime
		  , SysEndtime
        )
        select SYSDATETIME()     as AuditOrderHistoryId
			 , OrderId
			 , InvoiceNumber
			 , TotalPrice
			 , [Date]
			 , RowLevelHashKey
             , case
                   when @action <> 'D' then
                       @Note
                   else
                       @DeletedMessage
               end	
             , @IsDeleted          as IsDeleted	
             , @TransactionNumber AS TransactionNumber
			 , UserAuthorizationId
			 , Deleted.SysStartTime
			 , case
					when @action <> 'D' then
					  @SysStartTimeAsSysEnd
				   else
					   sysdatetime()
			   end as SysEndTime			 
        from Deleted;
end;

-- TESTING 
UPDATE [Sales].[Order]
SET [TotalPrice]  = '1234567.00'
WHERE [OrderId] = 2;

SELECT * FROM [Sales].[Order];
SELECT * FROM [Triggered].[AuditOrderHistory];

DELETE FROM [Sales].[Order] WHERE [OrderId] = 7;

SELECT * FROM [Sales].[Order];
SELECT * FROM [Triggered].[AuditOrderHistory];

---------------------------


DROP TRIGGER IF EXISTS [Sales].[uTidu_AuditOrderVehicleHistory]
GO
CREATE trigger [Sales].[uTidu_AuditOrderVehicleHistory]
on [Sales].[OrderVehicle]
after delete, update
as
begin
    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	DECLARE @TransactionNumber INT = 1;
    declare @DeletedMessage char(25) = 'Rows has been deleted';
	declare @Note char(30) = 'Insert or Update statement';
	declare @SysStartTimeAsSysEnd datetime2;
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
		SET @TransactionNumber = 3;
		select @SysStartTimeAsSysEnd = Inserted.SysStartTime from Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
		SET @TransactionNumber = 2;
        set @IsDeleted = 'Y';
    end;
    else
        set @action = 'I';
    if (@action <> 'I')
        insert into [Triggered].[AuditOrderVehicleHistory]
        (
           AuditOrderVehicleHistoryId
		  , OrderVehicleId
		  , LineItemNumber
		  , Price
		  , Discount
		  , DerivedDiscountedPrice
		  , UserAuthorizationId
		  , SysStartTime
		  , SysEndTime
          , Note
		  , IsDeleted
          , TransactionNumber
		  , RowLevelHashKey
        )
        select SYSDATETIME()     as AuditOrderVehicleHistoryId
			 , OrderVehicleId
			 , LineItemNumber
			 , Price
			 , Discount
			 , DerivedDiscountedPrice
			 , UserAuthorizationId
			 , Deleted.SysStartTime
			 , case
					when @action <> 'D' then
					  @SysStartTimeAsSysEnd
				   else
					   sysdatetime()
			   end as SysEndTime				 
             , case
                   when @action <> 'D' then
                       @Note
                   else
                       @DeletedMessage
               end	
             , @IsDeleted          as IsDeleted	
             , @TransactionNumber AS TransactionNumber
			 , RowLevelHashKey
        from Deleted;
end;

-- TESTING 
UPDATE [Sales].[OrderVehicle]
SET [Discount]  = '50'
WHERE [OrderVehicleId] = 2;

SELECT * FROM [Sales].[OrderVehicle];
SELECT * FROM [Triggered].[AuditOrderVehicleHistory];

DELETE FROM [Sales].[OrderVehicle] WHERE [OrderVehicleId] = 3;

SELECT * FROM [Sales].[OrderVehicle];
SELECT * FROM [Triggered].[AuditOrderVehicleHistory];