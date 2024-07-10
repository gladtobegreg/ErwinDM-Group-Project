
CREATE TABLE `CommonColumnsForTriggerTemplate`
(
	`RowLevelHashKey` BINARY NULL ,
	`Note` VARCHAR(50) NOT NULL ,
	`IsDeleted` CHAR(1) NULL ,
	`Transaction_Number` INTEGER NULL ,
	`UserAuthenticatedKey` INTEGER NULL ,
	`SysStartTime` GEOMETRY NULL ,
	`SysEndTime` GEOMETRY NULL 
);

CREATE TABLE `DBSecurity.UserAuthorization`
(
	`UserAuthorizationId` INTEGER NOT NULL ,
	`ClassTime` char(5) NULL ,
	`IndividualProject` varchar(60) NULL ,
	`GroupMemberLastName` varchar(35) NOT NULL ,
	`GroupMemberFirstName` varchar(25) NOT NULL ,
	`GroupName` VARCHAR(20) NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL 
);

ALTER TABLE `DBSecurity.UserAuthorization`
	ADD  CONSTRAINT XPKUserAuthorization PRIMARY KEY  ( `UserAuthorizationId` ASC );

CREATE TABLE `HumanResources.Staff`
(
	`StaffId` INTEGER NOT NULL ,
	`StaffName` VARCHAR(50) NOT NULL ,
	`Department` VARCHAR(50) NOT NULL ,
	`ManagerId` INTEGER NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `HumanResources.Staff`
ALTER COLUMN `StaffId` SET DEFAULT  1;

ALTER TABLE `HumanResources.Staff`
ALTER COLUMN `StaffName` SET DEFAULT  'DefaultName';

ALTER TABLE `HumanResources.Staff`
ALTER COLUMN `Department` SET DEFAULT  'DefaultName';

ALTER TABLE `HumanResources.Staff`
ALTER COLUMN `ManagerId` SET DEFAULT  1;

ALTER TABLE `HumanResources.Staff`
	ADD  CONSTRAINT XPKStaff PRIMARY KEY  ( `StaffId` ASC );

CREATE TABLE `Manufacturer.Category`
(
	`CategoryName` VARCHAR(50) NOT NULL ,
	`CategoryId` INTEGER NOT NULL ,
	`UpperThreshold` DECIMAL(18,2) NULL ,
	`LowerThreshold` DECIMAL(18,2) NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.Category`
ALTER COLUMN `CategoryName` SET DEFAULT  'DefaultCategory';

ALTER TABLE `Manufacturer.Category`
ALTER COLUMN `CategoryId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Category`
ALTER COLUMN `UpperThreshold` SET DEFAULT  999999.99;

ALTER TABLE `Manufacturer.Category`
ALTER COLUMN `LowerThreshold` SET DEFAULT  999.99;


ALTER TABLE `Manufacturer.Category`
ADD CONSTRAINT `CK_Multiple_IDNumber_165658939`
CHECK ( `CategoryId` BETWEEN 0 AND 99999 ) ;

ALTER TABLE `CategoryId`
ADD CONSTRAINT  `CK_Multiple_IDNumber_165658939` CHECK ( `CategoryId` BETWEEN 0 AND 99999 ) ;

CREATE TABLE `Manufacturer.Color`
(
	`ColorId` INTEGER NOT NULL ,
	`ColorName` VARCHAR(50) NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.Color`
ALTER COLUMN `ColorId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Color`
ALTER COLUMN `ColorName` SET DEFAULT  'DefaultName';

ALTER TABLE `Manufacturer.Color`
	ADD  CONSTRAINT XPKColor PRIMARY KEY  ( `ColorId` ASC );

CREATE TABLE `Manufacturer.Country`
(
	`CountryId` INTEGER NOT NULL ,
	`CountryISO3` VARCHAR(50) NULL ,
	`CountryName` VARCHAR(50) NOT NULL ,
	`CountryISO2` VARCHAR(50) NULL ,
	`RegionId` INTEGER NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.Country`
ALTER COLUMN `CountryId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Country`
ALTER COLUMN `CountryName` SET DEFAULT  'DefaultName';

ALTER TABLE `Manufacturer.Country`
ALTER COLUMN `RegionId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Country`
	ADD  CONSTRAINT PKCountry PRIMARY KEY  ( `CountryId` ASC );

CREATE TABLE `Manufacturer.DriveTrain`
(
	`DriveTrainId` INTEGER NOT NULL ,
	`DriveTrainCode` CHAR(10) NOT NULL ,
	`DriveTrainDescription` VARCHAR(20) NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.DriveTrain`
ALTER COLUMN `DriveTrainId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.DriveTrain`
	ADD  CONSTRAINT XPKDriveTrain PRIMARY KEY  ( `DriveTrainId` ASC );

CREATE TABLE `Manufacturer.Engine`
(
	`EngineId` INTEGER NOT NULL ,
	`EngineDisplacement` float NOT NULL ,
	`EngineCylinderCount` INTEGER NOT NULL ,
	`EngineMaxHorsepower` INTEGER NOT NULL ,
	`EngineMaxTorque` INTEGER NOT NULL ,
	`VehicleMakeId` INTEGER NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.Engine`
ALTER COLUMN `EngineId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Engine`
ALTER COLUMN `VehicleMakeId` SET DEFAULT  1;


ALTER TABLE `Manufacturer.Engine`
ADD CONSTRAINT `CK_Engine_Cylinder_1498131116`
CHECK ( `EngineCylinderCount` >= 0 ) ;

ALTER TABLE `Manufacturer.Engine`
ADD CONSTRAINT `CK_Engine_MaxSpecification_155024761`
CHECK ( `EngineMaxHorsepower` >= 0 ) ;

ALTER TABLE `Manufacturer.Engine`
ADD CONSTRAINT `CK_Engine_MaxSpecification_1077932545`
CHECK ( `EngineMaxTorque` >= 0 ) ;

ALTER TABLE `EngineMaxTorque`
ADD CONSTRAINT  `CK_Engine_MaxSpecification_1077932545` CHECK ( `EngineMaxTorque` >= 0 ) ;

CREATE TABLE `Manufacturer.Feature`
(
	`FeatureId` INTEGER NOT NULL ,
	`FeatureName` VARCHAR(50) NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.Feature`
ALTER COLUMN `FeatureId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Feature`
ALTER COLUMN `FeatureName` SET DEFAULT  'DefaultName';

ALTER TABLE `Manufacturer.Feature`
	ADD  CONSTRAINT XPKFeature PRIMARY KEY  ( `FeatureId` ASC );

CREATE TABLE `Manufacturer.FeatureVehicle`
(
	`Feature_Id` INTEGER NOT NULL ,
	`VehicleId` INTEGER NOT NULL ,
	`Feature_Vehicle_Id` INTEGER NOT NULL ,
	`TrimId` INTEGER NOT NULL ,
	`ModelId` INTEGER NOT NULL ,
	`MakeId` INTEGER NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.FeatureVehicle`
ALTER COLUMN `Feature_Id` SET DEFAULT  1;

ALTER TABLE `Manufacturer.FeatureVehicle`
ALTER COLUMN `VehicleId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.FeatureVehicle`
ALTER COLUMN `Feature_Vehicle_Id` SET DEFAULT  1;

ALTER TABLE `Manufacturer.FeatureVehicle`
ALTER COLUMN `TrimId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.FeatureVehicle`
ALTER COLUMN `ModelId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.FeatureVehicle`
ALTER COLUMN `MakeId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.FeatureVehicle`
	ADD  CONSTRAINT XPKFeatureManufacturerVehicle PRIMARY KEY  ( `Feature_Vehicle_Id` ASC );

CREATE TABLE `Manufacturer.FuelType`
(
	`FuelTypeId` INTEGER NOT NULL ,
	`FuelType` VARCHAR(50) NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.FuelType`
ALTER COLUMN `FuelTypeId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.FuelType`
	ADD  CONSTRAINT XPKFuel PRIMARY KEY  ( `FuelTypeId` ASC );

CREATE TABLE `Manufacturer.Make`
(
	`VehicleMakeId` INTEGER NOT NULL ,
	`VehicleMakeName` VARCHAR(50) NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.Make`
ALTER COLUMN `VehicleMakeId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Make`
ALTER COLUMN `VehicleMakeName` SET DEFAULT  'DefaultName';

ALTER TABLE `Manufacturer.Make`
	ADD  CONSTRAINT PKMake PRIMARY KEY  ( `VehicleMakeId` ASC );

CREATE TABLE `Manufacturer.Model`
(
	`ModelId` INTEGER NOT NULL ,
	`ModelName` VARCHAR(50) NOT NULL ,
	`ModelVariant` VARCHAR(50) NOT NULL ,
	`BodyName` VARCHAR(50) NOT NULL ,
	`MakeId` INTEGER NOT NULL ,
	`CategoryId` INTEGER NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.Model`
ALTER COLUMN `ModelId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Model`
ALTER COLUMN `ModelName` SET DEFAULT  'DefaultName';

ALTER TABLE `Manufacturer.Model`
ALTER COLUMN `BodyName` SET DEFAULT  'DefaultName';

ALTER TABLE `Manufacturer.Model`
ALTER COLUMN `MakeId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Model`
ALTER COLUMN `CategoryId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Model`
	ADD  CONSTRAINT PKModel1 PRIMARY KEY  ( `ModelId` ASC, `MakeId` ASC );

CREATE TABLE `Manufacturer.Region`
(
	`RegionId` INTEGER NOT NULL ,
	`RegionName` VARCHAR(50) NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.Region`
ALTER COLUMN `RegionId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Region`
	ADD  CONSTRAINT XPKRegion PRIMARY KEY  ( `RegionId` ASC );

CREATE TABLE `Manufacturer.Transmission`
(
	`TransmissionId` INTEGER NOT NULL ,
	`TransmissionName` VARCHAR(50) NOT NULL ,
	`Transmission_GearCount` INTEGER NOT NULL ,
	`TransmissionTypeId` INTEGER NULL ,
	`VehicleMakeId` INTEGER NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.Transmission`
ALTER COLUMN `TransmissionId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Transmission`
ALTER COLUMN `VehicleMakeId` SET DEFAULT  1;


ALTER TABLE `Manufacturer.Transmission`
ADD CONSTRAINT `CK_Transmission_TransmissionGearCount_1923912812`
CHECK ( `Transmission_GearCount` >= 0 ) ;

ALTER TABLE `Transmission_GearCount`
ADD CONSTRAINT  `CK_Transmission_TransmissionGearCount_1923912812` CHECK ( `Transmission_GearCount` >= 0 ) ;

CREATE TABLE `Manufacturer.TransmissionType`
(
	`TransmissionTypeId` INTEGER NOT NULL ,
	`TransmissionType` VARCHAR(50) NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.TransmissionType`
ALTER COLUMN `TransmissionTypeId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.TransmissionType`
	ADD  CONSTRAINT XPKTransmissionType PRIMARY KEY  ( `TransmissionTypeId` ASC );

CREATE TABLE `Manufacturer.Trim`
(
	`TrimId` INTEGER NOT NULL ,
	`TrimName` VARCHAR(50) NOT NULL ,
	`TrimLevel` INTEGER NOT NULL ,
	`ModelId` INTEGER NOT NULL ,
	`MakeId` INTEGER NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.Trim`
ALTER COLUMN `TrimId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Trim`
ALTER COLUMN `ModelId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Trim`
ALTER COLUMN `MakeId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Trim`
	ADD  CONSTRAINT XPKTrim PRIMARY KEY  ( `TrimId` ASC, `ModelId` ASC, `MakeId` ASC );

CREATE TABLE `Manufacturer.Vehicle`
(
	`VinNumber` CHAR(17) NOT NULL ,
	`VehicleId` INTEGER NOT NULL ,
	`VehicleYear` CHAR(4) NOT NULL ,
	`ModelId` INTEGER NOT NULL ,
	`MakeId` INTEGER NOT NULL ,
	`VehicleMakeId` INTEGER NOT NULL ,
	`ManufacturerCountryId` INTEGER NOT NULL ,
	`EngineId` INTEGER NOT NULL ,
	`DriveTrainId` INTEGER NOT NULL ,
	`FuelTypeId` INTEGER NOT NULL ,
	`TransmissionId` INTEGER NOT NULL ,
	`ColorId` INTEGER NOT NULL ,
	`TrimId` INTEGER NOT NULL ,
	`MSRP` DECIMAL(18,2) NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.Vehicle`
ALTER COLUMN `VehicleId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Vehicle`
ALTER COLUMN `ModelId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Vehicle`
ALTER COLUMN `MakeId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Vehicle`
ALTER COLUMN `VehicleMakeId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Vehicle`
ALTER COLUMN `EngineId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Vehicle`
ALTER COLUMN `DriveTrainId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Vehicle`
ALTER COLUMN `FuelTypeId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Vehicle`
ALTER COLUMN `TransmissionId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Vehicle`
ALTER COLUMN `ColorId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Vehicle`
ALTER COLUMN `TrimId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.Vehicle`
ALTER COLUMN `MSRP` SET DEFAULT  999.99;


ALTER TABLE `Manufacturer.Vehicle`
ADD CONSTRAINT `CK_Multiple_Price_654445588`
CHECK ( `MSRP` >= 0 ) ;

ALTER TABLE `MSRP`
ADD CONSTRAINT  `CK_Multiple_Price_654445588` CHECK ( `MSRP` >= 0 ) ;

CREATE TABLE `Manufacturer.VehicleStock`
(
	`StockId` INTEGER NOT NULL ,
	`StockCode` VARCHAR(50) NOT NULL ,
	`Cost` DECIMAL(18,2) NOT NULL ,
	`RepairsCharge` DECIMAL(18,2) NOT NULL ,
	`PartsCharge` DECIMAL(18,2) NOT NULL ,
	`DeliveryCharge` DECIMAL(18,2) NOT NULL ,
	`CusomerComments` VARCHAR(50) NULL ,
	`PurchaseDate` DATETIME NOT NULL ,
	`VehicleId` INTEGER NULL ,
	`ModelId` INTEGER NOT NULL ,
	`MakeId` INTEGER NOT NULL ,
	`TrimId` INTEGER NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Manufacturer.VehicleStock`
ALTER COLUMN `StockId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.VehicleStock`
ALTER COLUMN `StockCode` SET DEFAULT  1;

ALTER TABLE `Manufacturer.VehicleStock`
ALTER COLUMN `Cost` SET DEFAULT  999.99;

ALTER TABLE `Manufacturer.VehicleStock`
ALTER COLUMN `RepairsCharge` SET DEFAULT  999.99;

ALTER TABLE `Manufacturer.VehicleStock`
ALTER COLUMN `PartsCharge` SET DEFAULT  999.99;

ALTER TABLE `Manufacturer.VehicleStock`
ALTER COLUMN `DeliveryCharge` SET DEFAULT  999.99;

ALTER TABLE `Manufacturer.VehicleStock`
ALTER COLUMN `VehicleId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.VehicleStock`
ALTER COLUMN `ModelId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.VehicleStock`
ALTER COLUMN `MakeId` SET DEFAULT  1;

ALTER TABLE `Manufacturer.VehicleStock`
ALTER COLUMN `TrimId` SET DEFAULT  1;


ALTER TABLE `Manufacturer.VehicleStock`
ADD CONSTRAINT `CK_Multiple_Price_2049861264`
CHECK ( `RepairsCharge` >= 0 ) ;

ALTER TABLE `Manufacturer.VehicleStock`
ADD CONSTRAINT `CK_Multiple_Price_807880500`
CHECK ( `PartsCharge` >= 0 ) ;

ALTER TABLE `Manufacturer.VehicleStock`
ADD CONSTRAINT `CK_Multiple_Price_1802209964`
CHECK ( `DeliveryCharge` >= 0 ) ;

ALTER TABLE `DeliveryCharge`
ADD CONSTRAINT  `CK_Multiple_Price_1802209964` CHECK ( `DeliveryCharge` >= 0 ) ;

CREATE TABLE `Sales.Customer`
(
	`CustomerId` INTEGER NOT NULL ,
	`CustomerName` VARCHAR(50) NOT NULL ,
	`CustomerAddress1` VARCHAR(50) NOT NULL ,
	`CustomerAddress2` VARCHAR(50) NULL ,
	`CustomerTown` VARCHAR(50) NOT NULL ,
	`CustomerPostalCode` CHAR(10) NOT NULL ,
	`IsCustomerReseller` CHAR(1) NOT NULL ,
	`IsCustomerCreditRisk` CHAR(1) NULL ,
	`CustomerSpendCapacity` DECIMAL(18,2) NULL ,
	`CountryId` INTEGER NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Sales.Customer`
ALTER COLUMN `CustomerId` SET DEFAULT  1;

ALTER TABLE `Sales.Customer`
ALTER COLUMN `CustomerName` SET DEFAULT  'DefaultName';

ALTER TABLE `Sales.Customer`
ALTER COLUMN `CustomerAddress1` SET DEFAULT  '450 W 33rd St';

ALTER TABLE `Sales.Customer`
ALTER COLUMN `CustomerTown` SET DEFAULT  'New York';

ALTER TABLE `Sales.Customer`
ALTER COLUMN `CustomerPostalCode` SET DEFAULT  '10001';

ALTER TABLE `Sales.Customer`
ALTER COLUMN `CountryId` SET DEFAULT  1;


ALTER TABLE `Sales.Customer`
ADD CONSTRAINT `CK_Multiple_IDNumber_1479018637`
CHECK ( `CustomerId` BETWEEN 0 AND 99999 ) ;

ALTER TABLE `Sales.Customer`
ADD CONSTRAINT `CK_Customer_PostalCode_446534747`
CHECK ( `CustomerPostalCode` BETWEEN 501 AND 99950 ) ;

ALTER TABLE `CustomerPostalCode`
ADD CONSTRAINT  `CK_Customer_PostalCode_446534747` CHECK ( `CustomerPostalCode` BETWEEN 501 AND 99950 ) ;

CREATE TABLE `Sales.Order`
(
	`OrderId` INTEGER NOT NULL ,
	`InvoiceNumber` INTEGER NOT NULL ,
	`TotalPrice` DECIMAL(18,2) NULL ,
	`Date` DATETIME NOT NULL ,
	`CustomerId` INTEGER NOT NULL ,
	`StaffId` INTEGER NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Sales.Order`
ALTER COLUMN `OrderId` SET DEFAULT  1;

ALTER TABLE `Sales.Order`
ALTER COLUMN `InvoiceNumber` SET DEFAULT  1;

ALTER TABLE `Sales.Order`
ALTER COLUMN `TotalPrice` SET DEFAULT  999.99;

ALTER TABLE `Sales.Order`
ALTER COLUMN `CustomerId` SET DEFAULT  1;

ALTER TABLE `Sales.Order`
ALTER COLUMN `StaffId` SET DEFAULT  1;


ALTER TABLE `Sales.Order`
ADD CONSTRAINT `CK_Multiple_Price_1885419078`
CHECK ( `TotalPrice` >= 0 ) ;

ALTER TABLE `TotalPrice`
ADD CONSTRAINT  `CK_Multiple_Price_1885419078` CHECK ( `TotalPrice` >= 0 ) ;

CREATE TABLE `Sales.OrderVehicle`
(
	`OrderId` INTEGER NOT NULL ,
	`VehicleId` INTEGER NOT NULL ,
	`ModelId` INTEGER NOT NULL ,
	`MakeId` INTEGER NOT NULL ,
	`TrimId` INTEGER NOT NULL ,
	`CustomerId` INTEGER NOT NULL ,
	`OrderVehicleId` INTEGER NOT NULL ,
	`LineItemNumber` INTEGER NOT NULL ,
	`Price` DECIMAL(18,2) NOT NULL ,
	`Discount` INTEGER NOT NULL ,
	`DerivedDiscountedPrice` DECIMAL(18,2) NOT NULL ,
	`StaffId` INTEGER NOT NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Sales.OrderVehicle`
ALTER COLUMN `OrderId` SET DEFAULT  1;

ALTER TABLE `Sales.OrderVehicle`
ALTER COLUMN `VehicleId` SET DEFAULT  1;

ALTER TABLE `Sales.OrderVehicle`
ALTER COLUMN `ModelId` SET DEFAULT  1;

ALTER TABLE `Sales.OrderVehicle`
ALTER COLUMN `MakeId` SET DEFAULT  1;

ALTER TABLE `Sales.OrderVehicle`
ALTER COLUMN `TrimId` SET DEFAULT  1;

ALTER TABLE `Sales.OrderVehicle`
ALTER COLUMN `CustomerId` SET DEFAULT  1;

ALTER TABLE `Sales.OrderVehicle`
ALTER COLUMN `OrderVehicleId` SET DEFAULT  1;

ALTER TABLE `Sales.OrderVehicle`
ALTER COLUMN `LineItemNumber` SET DEFAULT  1;

ALTER TABLE `Sales.OrderVehicle`
ALTER COLUMN `Discount` SET DEFAULT  0;

ALTER TABLE `Sales.OrderVehicle`
ALTER COLUMN `StaffId` SET DEFAULT  1;


ALTER TABLE `Sales.OrderVehicle`
ADD CONSTRAINT `CK_OrderVehicle_DiscountPercentage_968985610`
CHECK ( `Discount` BETWEEN 0 AND 100 ) ;

ALTER TABLE `Discount`
ADD CONSTRAINT  `CK_OrderVehicle_DiscountPercentage_968985610` CHECK ( `Discount` BETWEEN 0 AND 100 ) ;

CREATE TABLE `Triggered.AuditCustomerHistory`
(
	`AuditCustomerHistory` INTEGER NOT NULL ,
	`CustomerId` INTEGER NOT NULL ,
	`CustomerName` VARCHAR(50) NOT NULL ,
	`CustomerAddress1` VARCHAR(50) NOT NULL ,
	`CustomerAddress2` VARCHAR(50) NULL ,
	`CustomerTown` VARCHAR(50) NOT NULL ,
	`CustomerPostalCode` CHAR(10) NOT NULL ,
	`IsCustomerReseller` CHAR(1) NOT NULL ,
	`IsCustomerCreditRisk` VARCHAR(50) NULL ,
	`SpendCapacity` DECIMAL(18,2) NULL ,
	`RowLevelHashKey` BINARY NULL ,
	`Note` VARCHAR(50) NOT NULL ,
	`IsDeleted` CHAR(1) NULL ,
	`TransactionNumber` INTEGER NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL 
);

ALTER TABLE `Triggered.AuditCustomerHistory`
	ADD  CONSTRAINT XPKAuditCustomerHistory PRIMARY KEY  ( `AuditCustomerHistory` ASC );

CREATE TABLE `Triggered.AuditMakeHistory`
(
	`AuditMakeHistoryId` INTEGER NOT NULL ,
	`MakeId` INTEGER NOT NULL ,
	`MakeName` VARCHAR(50) NOT NULL ,
	`RowLevelHashKey` BINARY NULL ,
	`Note` VARCHAR(50) NOT NULL ,
	`IsDeleted` CHAR(1) NULL ,
	`TransactionNumber` INTEGER NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL 
);

ALTER TABLE `Triggered.AuditMakeHistory`
	ADD  CONSTRAINT XPKAudit PRIMARY KEY  ( `AuditMakeHistoryId` ASC );

CREATE TABLE `Triggered.AuditModelHistory`
(
	`AuditModelHistoryId` INTEGER NOT NULL ,
	`ModelId` INTEGER NOT NULL ,
	`ModelName` VARCHAR(50) NOT NULL ,
	`ModelVariant` VARCHAR(50) NOT NULL ,
	`BodyName` VARCHAR(50) NOT NULL ,
	`RowLevelHashKey` BINARY NULL ,
	`Note` VARCHAR(50) NOT NULL ,
	`IsDeleted` CHAR(1) NULL ,
	`TransactionNumber` INTEGER NULL ,
	`UserAuthorizationKey` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndtime` DATETIME NULL 
);

ALTER TABLE `Triggered.AuditModelHistory`
	ADD  CONSTRAINT XPKAuditModelHistory PRIMARY KEY  ( `AuditModelHistoryId` ASC );

CREATE TABLE `Triggered.AuditOrderHistory`
(
	`AuditOrderHistoryId` INTEGER NOT NULL ,
	`OrderId` INTEGER NOT NULL ,
	`InvoiceNumber` INTEGER NOT NULL ,
	`TotalPrice` DECIMAL(18,2) NULL ,
	`Date` GEOMETRY NOT NULL ,
	`RowLevelHashKey` BINARY NULL ,
	`Note` VARCHAR(50) NOT NULL ,
	`IsDeleted` CHAR(1) NULL ,
	`TransactionNumber` INTEGER NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL 
);

ALTER TABLE `Triggered.AuditOrderHistory`
	ADD  CONSTRAINT XPKAuditOrderHistory PRIMARY KEY  ( `AuditOrderHistoryId` ASC );

CREATE TABLE `Triggered.AuditOrderVehicleHistory`
(
	`AuditOrderVehicleHistory` INTEGER NOT NULL ,
	`OrderVehicleId` INTEGER NOT NULL ,
	`LineItemNumber` INTEGER NOT NULL ,
	`Price` DECIMAL(18,2) NOT NULL ,
	`Discount` INTEGER NULL ,
	`DerivedDiscountedPrice` DECIMAL(18,2) NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`Note` VARCHAR(50) NOT NULL ,
	`IsDeleted` CHAR(1) NULL ,
	`TransactionNumber` INTEGER NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Triggered.AuditOrderVehicleHistory`
	ADD  CONSTRAINT XPKAuditOrder PRIMARY KEY  ( `AuditOrderVehicleHistory` ASC );

CREATE TABLE `Triggered.AuditStaffHistory`
(
	`AuditStaffHistory` INTEGER NOT NULL ,
	`StaffId` INTEGER NOT NULL ,
	`StaffName` VARCHAR(50) NOT NULL ,
	`Department` VARCHAR(50) NULL ,
	`RowLevelHashKey` BINARY NULL ,
	`Note` VARCHAR(50) NOT NULL ,
	`IsDeleted` CHAR(1) NULL ,
	`TransactionNumber` INTEGER NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL 
);

ALTER TABLE `Triggered.AuditStaffHistory`
	ADD  CONSTRAINT XPKAuditStaffHistory PRIMARY KEY  ( `AuditStaffHistory` ASC );

CREATE TABLE `Triggered.AuditVehicleHistory`
(
	`AuditVehicleHistoryId` INTEGER NOT NULL ,
	`VehicleId` INTEGER NOT NULL ,
	`VinNumber` VARCHAR(50) NOT NULL ,
	`VehicleYear` DATETIME NOT NULL ,
	`MSRP` DECIMAL(18,2) NULL ,
	`UserAuthorizationId` INTEGER NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL ,
	`Note` VARCHAR(50) NOT NULL ,
	`isDeleted` CHAR(1) NULL ,
	`TransactionNumber` INTEGER NOT NULL ,
	`RowLevelHashKey` BINARY NULL 
);

ALTER TABLE `Triggered.AuditVehicleHistory`
	ADD  CONSTRAINT XPKVehicleHistory PRIMARY KEY  ( `AuditVehicleHistoryId` ASC );

CREATE TABLE `Triggered.AuditVehicleStockHistory`
(
	`AuditVehicleStockHistoryId` INTEGER NOT NULL ,
	`StockId` INTEGER NOT NULL ,
	`StockCode` VARCHAR(50) NOT NULL ,
	`RepairsCharge` DECIMAL(18,2) NULL ,
	`PartsCharge` DECIMAL(18,2) NULL ,
	`DeliveryCharge` DECIMAL(18,2) NULL ,
	`PurchasedDate` DATETIME NULL ,
	`UserAuthorizationId` INTEGER NOT NULL ,
	`SysStartTime` DATETIME NULL ,
	`SysEndTime` DATETIME NULL 
);

ALTER TABLE `Triggered.AuditVehicleStockHistory`
	ADD  CONSTRAINT XPKAuditVehicleStockHistory PRIMARY KEY  ( `AuditVehicleStockHistoryId` ASC );

ALTER TABLE `HumanResources.Staff`
	ADD  CONSTRAINT `FK_Staff_Staff` FOREIGN KEY (`StaffId`) REFERENCES `HumanResources.Staff` (`StaffId`);

ALTER TABLE `Manufacturer.Country`
	ADD  CONSTRAINT `FK_Country_Region` FOREIGN KEY (`RegionId`) REFERENCES `Manufacturer.Region` (`RegionId`);

ALTER TABLE `Manufacturer.FeatureVehicle`
	ADD  CONSTRAINT `FK_FeatureVehicle_Feature` FOREIGN KEY (`Feature_Id`) REFERENCES `Manufacturer.Feature` (`FeatureId`);

ALTER TABLE `Manufacturer.FeatureVehicle`
	ADD  CONSTRAINT `FK_FeatureVehicle_Vehicle` FOREIGN KEY (`VehicleId`, `ModelId`, `MakeId`, `TrimId`) REFERENCES `Manufacturer.Vehicle` (`VehicleId`, `ModelId`, `MakeId`, `TrimId`);

ALTER TABLE `Manufacturer.Model`
	ADD  CONSTRAINT `FK_Model_Make` FOREIGN KEY (`MakeId`) REFERENCES `Manufacturer.Make` (`VehicleMakeId`);

ALTER TABLE `Manufacturer.Model`
	ADD  CONSTRAINT `FK_Model_Category` FOREIGN KEY (`CategoryId`) REFERENCES `Manufacturer.Category` (`CategoryId`);

ALTER TABLE `Manufacturer.Trim`
	ADD  CONSTRAINT `FK_Trim_Model` FOREIGN KEY (`ModelId`, `MakeId`) REFERENCES `Manufacturer.Model` (`ModelId`, `MakeId`);

CREATE VIEW `Sales2018` (`SaleDate`,
`MakeName`,
`CustomerName`,
`CountryName`,
`SalePrice`,
`RepairsCost`,
`PartsCost`,
`TransportInCost`,
`MSRP`)
AS 
SELECT  ALL `Sales.Order`.`Date`,`Manufacturer.Make`.`VehicleMakeName`,`Sales.Customer`.`CustomerName`,`Manufacturer.Country`.`CountryName`,`Sales.OrderVehicle`.`Price`,`Manufacturer.VehicleStock`.`RepairsCharge`,`Manufacturer.VehicleStock`.`PartsCharge`,`Manufacturer.VehicleStock`.`DeliveryCharge`,`Manufacturer.Vehicle`.`MSRP`
FROM `Sales.Order` ,`Sales.OrderVehicle` ,`Manufacturer.Vehicle` ,`Manufacturer.Model` ,`Manufacturer.Make` ,`Manufacturer.Trim` ,`Sales.Customer` ,`Manufacturer.VehicleStock` ,`Manufacturer.Country` ;

CREATE VIEW `StockPrices` (`MakeName`,
`ModelName`,
`RetailCost`)
AS 
SELECT  ALL `Manufacturer.Make`.`VehicleMakeName`,`Manufacturer.Model`.`ModelName`,`Manufacturer.Vehicle`.`MSRP`
FROM `Manufacturer.Make` ,`Manufacturer.Model` ,`Manufacturer.Trim` ,`Manufacturer.Vehicle` ;

CREATE VIEW `SalesByCountry` (`CountryName`,
`ModelName`,
`MakeName`,
`SalePrice`,
`RepairsCost`,
`PartsCost`,
`TransportInCost`,
`Color`,
`MSRP`,
`LineItemDiscount`,
`InvoiceNumber`,
`SaleDate`,
`CustomerName`,
`SalesDetailsID`)
AS 
SELECT `Manufacturer.Country`.`CountryName`,`Manufacturer.Model`.`ModelName`,`Manufacturer.Make`.`VehicleMakeName`,`Sales.OrderVehicle`.`Price`,`Manufacturer.VehicleStock`.`RepairsCharge`,`Manufacturer.VehicleStock`.`PartsCharge`,`Manufacturer.VehicleStock`.`DeliveryCharge`,`Manufacturer.Color`.`ColorName`,`Manufacturer.Vehicle`.`MSRP`,`Sales.OrderVehicle`.`DerivedDiscountedPrice`,`Sales.Order`.`InvoiceNumber`,`Sales.Order`.`Date`,`Sales.Customer`.`CustomerName`,`Sales.OrderVehicle`.`OrderVehicleId`
FROM `Manufacturer.Country` ,`Manufacturer.Make` ,`Manufacturer.Model` ,`Manufacturer.Vehicle` ,`Manufacturer.VehicleStock` ,`Manufacturer.Color` ,`Sales.OrderVehicle` ,`Sales.Order` ,`Sales.Customer` 
		GROUP BY Manufacturer.Country.CountryName;

CREATE VIEW `OrdersByCustomer` (`CustomerName`,
`OrderId`,
`VinNumber`,
`CustomerId`)
AS 
SELECT `Sales.Customer`.`CustomerName`,`Sales.OrderVehicle`.`OrderId`,`Manufacturer.Vehicle`.`VinNumber`,`Sales.Customer`.`CustomerId`
FROM `Sales.Order` ,`Sales.OrderVehicle` ,`Manufacturer.Vehicle` ,`Sales.Customer` 
		GROUP BY Sales.Customer.CustomerId;

CREATE VIEW `VehiclesByCategory` (`CategoryName`,
`ModelName`,
`MakeName`,
`TrimName`,
`VinNumber`)
AS 
SELECT `Manufacturer.Category`.`CategoryName`,`Manufacturer.Model`.`ModelName`,`Manufacturer.Make`.`VehicleMakeName`,`Manufacturer.Trim`.`TrimName`,`Manufacturer.Vehicle`.`VinNumber`
FROM `Manufacturer.Vehicle` ,`Manufacturer.Trim` ,`Manufacturer.Make` ,`Manufacturer.Model` ,`Manufacturer.Category` ;

CREATE VIEW `VehiclesByEngineCylinderCount` (`VehicleId`,
`EngineCylinderCount`)
AS 
SELECT `Manufacturer.Vehicle`.`VehicleId`,`Manufacturer.Engine`.`EngineCylinderCount`
FROM `Manufacturer.Engine` ,`Manufacturer.Vehicle` 
		GROUP BY Manufacturer.Engine.EngineCylinderCount;
