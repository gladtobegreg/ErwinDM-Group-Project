
CREATE SCHEMA "dBlob";

CREATE SCHEMA "DbSecurity";

CREATE SCHEMA "dDatetime";

CREATE SCHEMA "dGroupFinalProject";

CREATE SCHEMA "dNumber";

CREATE SCHEMA "dString";

CREATE SCHEMA "HumanResources";

CREATE SCHEMA "Manufacturer";

CREATE SCHEMA "Marketing";

CREATE SCHEMA "Output";

CREATE SCHEMA "Sales";

CREATE SCHEMA "sdCarInfoString";

CREATE SCHEMA "sdLocationString";

CREATE SCHEMA "sdMoneyNumber";

CREATE SCHEMA "sdNameString";

CREATE SCHEMA "Triggered";

CREATE Domain "dGroupFinalProject"."dBlob"
	AS BYTEA NULL;

CREATE Domain "dGroupFinalProject"."dDatetime"
	AS TIMESTAMP NULL;

CREATE Domain "dGroupFinalProject"
	AS VARCHAR() NULL;

CREATE Domain "dGroupFinalProject"."dNumber"
	AS INTEGER NULL;

CREATE Domain "dGroupFinalProject"."dString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdLocationString"."sdAddressString"
	AS VARCHAR(50) NULL;

CREATE Domain "dString"."sdCarInfoString"
	AS VARCHAR(50) NULL;

CREATE Domain "dString"."sdCommentaryString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdLocationString"."sdCountryString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdNameString"."sdDepartmentName"
	AS VARCHAR(50) NULL;

CREATE Domain "sdCarInfoString"."sdDetailsString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdDriveTrainCodeString"
	AS CHAR(10) NULL;

CREATE Domain "sdDriveTrainDescriptionString"
	AS VARCHAR(20) NULL;

CREATE Domain "sdMoneyNumber"."sdFeeNumber"
	AS DECIMAL(18,2) NULL;

CREATE Domain "dString"."sdFlagString"
	AS CHAR(1) NULL;

CREATE Domain "dNumber"."sdIdNumber"
	AS INTEGER NULL;

CREATE Domain "dString"."sdLocationString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdNameString"."sdMakeName"
	AS VARCHAR(50) NULL;

CREATE Domain "sdNameString"."sdModelName"
	AS VARCHAR(50) NULL;

CREATE Domain "dNumber"."sdMoneyNumber"
	AS DECIMAL(18,2) NULL;

CREATE Domain "dString"."sdNameString"
	AS VARCHAR(50) NULL;

CREATE Domain "dNumber"."sdPercentNumber"
	AS INTEGER NULL;

CREATE Domain "sdNameString"."sdPersonName"
	AS VARCHAR(50) NULL;

CREATE Domain "sdMoneyNumber"."sdPriceNumber"
	AS DECIMAL(18,2) NULL;

CREATE Domain "sdLocationString"."sdRegionString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdLocationString"."sdTownString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdCarInfoString"."sdVinNumberString"
	AS CHAR(17) NULL;

CREATE Domain "dDatetime"."sdYYYYDatetime"
	AS INTEGER NULL;

CREATE Domain "dDatetime"."sdYYYYMMDDDatetime"
	AS TIMESTAMP NULL;

CREATE Domain "dString"."sdYYYYString"
	AS CHAR(4) NULL;

CREATE Domain "sdLocationString"."sdZipCodeString"
	AS CHAR(10) NULL;

CREATE TABLE "Triggered"."AuditCustomerHistory"
( 
	"AuditCustomerHistory" integer  NOT NULL ,
	"CustomerId"         integer  NOT NULL ,
	"CustomerName"       varchar(50)  NOT NULL ,
	"CustomerAddress1"   varchar(50)  NOT NULL ,
	"CustomerAddress2"   varchar(50)  NULL ,
	"CustomerTown"       varchar(50)  NOT NULL ,
	"CustomerPostalCode" char(10)  NOT NULL ,
	"IsCustomerReseller" char(1)  NOT NULL ,
	"IsCustomerCreditRisk" varchar(50)  NULL ,
	"SpendCapacity"      decimal(18,2)  NULL ,
	"RowLevelHashKey"    bytea  NULL ,
	"Note"               varchar(50)  NOT NULL ,
	"IsDeleted"          char(1)  NULL ,
	"TransactionNumber"  integer  NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL 
);

CREATE UNIQUE INDEX "XPKAuditCustomerHistory" ON "Triggered"."AuditCustomerHistory"
( 
	"AuditCustomerHistory"
);

CREATE TABLE "Triggered"."AuditMakeHistory"
( 
	"AuditMakeHistoryId" integer  NOT NULL ,
	"MakeId"             integer  NOT NULL ,
	"MakeName"           varchar(50)  NOT NULL ,
	"RowLevelHashKey"    bytea  NULL ,
	"Note"               varchar(50)  NOT NULL ,
	"IsDeleted"          char(1)  NULL ,
	"TransactionNumber"  integer  NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL 
);

CREATE UNIQUE INDEX "XPKAudit" ON "Triggered"."AuditMakeHistory"
( 
	"AuditMakeHistoryId"
);

CREATE TABLE "Triggered"."AuditModelHistory"
( 
	"AuditModelHistoryId" integer  NOT NULL ,
	"ModelId"            integer  NOT NULL ,
	"ModelName"          varchar(50)  NOT NULL ,
	"ModelVariant"       varchar(50)  NOT NULL ,
	"BodyName"           varchar(50)  NOT NULL ,
	"RowLevelHashKey"    bytea  NULL ,
	"Note"               varchar(50)  NOT NULL ,
	"IsDeleted"          char(1)  NULL ,
	"TransactionNumber"  integer  NULL ,
	"UserAuthorizationKey" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndtime"         timestamp  NULL 
);

CREATE UNIQUE INDEX "XPKAuditModelHistory" ON "Triggered"."AuditModelHistory"
( 
	"AuditModelHistoryId"
);

CREATE TABLE "Triggered"."AuditOrderHistory"
( 
	"AuditOrderHistoryId" integer  NOT NULL ,
	"OrderId"            integer  NOT NULL ,
	"InvoiceNumber"      integer  NOT NULL ,
	"TotalPrice"         decimal(18,2)  NULL ,
	"Date"               timestamp  NOT NULL ,
	"RowLevelHashKey"    bytea  NULL ,
	"Note"               varchar(50)  NOT NULL ,
	"IsDeleted"          char(1)  NULL ,
	"TransactionNumber"  integer  NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL 
);

CREATE UNIQUE INDEX "XPKAuditOrderHistory" ON "Triggered"."AuditOrderHistory"
( 
	"AuditOrderHistoryId"
);

CREATE TABLE "Triggered"."AuditOrderVehicleHistory"
( 
	"AuditOrderVehicleHistory" integer  NOT NULL ,
	"OrderVehicleId"     integer  NOT NULL ,
	"LineItemNumber"     integer  NOT NULL ,
	"Price"              decimal(18,2)  NOT NULL ,
	"Discount"           integer  NULL ,
	"DerivedDiscountedPrice" decimal(18,2)  NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"Note"               varchar(50)  NOT NULL ,
	"IsDeleted"          char(1)  NULL ,
	"TransactionNumber"  integer  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKAuditOrder" ON "Triggered"."AuditOrderVehicleHistory"
( 
	"AuditOrderVehicleHistory"
);

CREATE TABLE "Triggered"."AuditStaffHistory"
( 
	"AuditStaffHistory"  integer  NOT NULL ,
	"StaffId"            integer  NOT NULL ,
	"StaffName"          varchar(50)  NOT NULL ,
	"Department"         varchar(50)  NULL ,
	"RowLevelHashKey"    bytea  NULL ,
	"Note"               varchar(50)  NOT NULL ,
	"IsDeleted"          char(1)  NULL ,
	"TransactionNumber"  integer  NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL 
);

CREATE UNIQUE INDEX "XPKAuditStaffHistory" ON "Triggered"."AuditStaffHistory"
( 
	"AuditStaffHistory"
);

CREATE TABLE "Triggered"."AuditVehicleHistory"
( 
	"AuditVehicleHistoryId" integer  NOT NULL ,
	"VehicleId"          integer  NOT NULL ,
	"VinNumber"          varchar(50)  NOT NULL ,
	"VehicleYear"        integer  NOT NULL ,
	"MSRP"               decimal(18,2)  NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"Note"               varchar(50)  NOT NULL ,
	"isDeleted"          char(1)  NULL ,
	"TransactionNumber"  integer  NOT NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKVehicleHistory" ON "Triggered"."AuditVehicleHistory"
( 
	"AuditVehicleHistoryId"
);

CREATE TABLE "Triggered"."AuditVehicleStockHistory"
( 
	"AuditVehicleStockHistoryId" integer  NOT NULL ,
	"StockId"            integer  NOT NULL ,
	"StockCode"          varchar(50)  NOT NULL ,
	"RepairsCharge"      decimal(18,2)  NULL ,
	"PartsCharge"        decimal(18,2)  NULL ,
	"DeliveryCharge"     decimal(18,2)  NULL ,
	"PurchasedDate"      timestamp  NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL 
);

CREATE UNIQUE INDEX "XPKAuditVehicleStockHistory" ON "Triggered"."AuditVehicleStockHistory"
( 
	"AuditVehicleStockHistoryId"
);

CREATE TABLE "Manufacturer"."Category"
( 
	"CategoryName"       varchar(50)  NOT NULL ,
	"CategoryId"         integer  NOT NULL ,
	"UpperThreshold"     decimal(18,2)  NULL ,
	"LowerThreshold"     decimal(18,2)  NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKMarketingCategory" ON "Manufacturer"."Category"
( 
	"CategoryId"
);

CREATE TABLE "Manufacturer"."Color"
( 
	"ColorId"            integer  NOT NULL ,
	"ColorName"          varchar(50)  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKColor" ON "Manufacturer"."Color"
( 
	"ColorId"
);

CREATE TABLE "Manufacturer"."Country"
( 
	"CountryId"          integer  NOT NULL ,
	"CountryISO3"        varchar(50)  NULL ,
	"CountryName"        varchar(50)  NOT NULL ,
	"CountryISO2"        varchar(50)  NULL ,
	"RegionId"           integer  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "PKCountry" ON "Manufacturer"."Country"
( 
	"CountryId"
);

CREATE UNIQUE INDEX "XIF1Country" ON "Manufacturer"."Country"
( 
	"RegionId"
);

CREATE TABLE "Sales"."Customer"
( 
	"CustomerId"         integer  NOT NULL ,
	"CustomerName"       varchar(50)  NOT NULL ,
	"CustomerAddress1"   varchar(50)  NOT NULL ,
	"CustomerAddress2"   varchar(50)  NULL ,
	"CustomerTown"       varchar(50)  NOT NULL ,
	"CustomerPostalCode" char(10)  NOT NULL ,
	"IsCustomerReseller" char(1)  NOT NULL ,
	"IsCustomerCreditRisk" char(1)  NULL ,
	"CustomerSpendCapacity" decimal(18,2)  NULL ,
	"CountryId"          integer  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "PKCustomer" ON "Sales"."Customer"
( 
	"CustomerId"
);

CREATE INDEX "XIF1Customer" ON "Sales"."Customer"
( 
	"CountryId"
);

CREATE TABLE "Manufacturer"."DriveTrain"
( 
	"DriveTrainId"       integer  NOT NULL ,
	"DriveTrainCode"     char(10)  NOT NULL ,
	"DriveTrainDescription" varchar(20)  NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKDriveTrain" ON "Manufacturer"."DriveTrain"
( 
	"DriveTrainId"
);

CREATE TABLE "Manufacturer"."Engine"
( 
	"EngineId"           integer  NOT NULL ,
	"EngineDisplacement" float  NOT NULL ,
	"EngineCylinderCount" integer  NOT NULL ,
	"EngineMaxHorsepower" integer  NOT NULL ,
	"EngineMaxTorque"    integer  NOT NULL ,
	"VehicleMakeId"      integer  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKEngine" ON "Manufacturer"."Engine"
( 
	"EngineId",
	"VehicleMakeId"
);

CREATE INDEX "XIF1Engine" ON "Manufacturer"."Engine"
( 
	"VehicleMakeId"
);

CREATE TABLE "Manufacturer"."Feature"
( 
	"FeatureId"          integer  NOT NULL ,
	"FeatureName"        varchar(50)  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKFeature" ON "Manufacturer"."Feature"
( 
	"FeatureId"
);

CREATE TABLE "Manufacturer"."FeatureVehicle"
( 
	"Feature_Id"         integer  NOT NULL ,
	"VehicleId"          integer  NOT NULL ,
	"Feature_Vehicle_Id" integer  NOT NULL ,
	"TrimId"             integer  NOT NULL ,
	"ModelId"            integer  NOT NULL ,
	"MakeId"             integer  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKFeatureManufacturerVehicle" ON "Manufacturer"."FeatureVehicle"
( 
	"Feature_Vehicle_Id"
);

CREATE INDEX "XIF1FeatureManufacturerVehicle" ON "Manufacturer"."FeatureVehicle"
( 
	"Feature_Id"
);

CREATE INDEX "XIF2FeatureManufacturerVehicle" ON "Manufacturer"."FeatureVehicle"
( 
	"VehicleId",
	"TrimId",
	"ModelId",
	"MakeId"
);

CREATE TABLE "Manufacturer"."FuelType"
( 
	"FuelTypeId"         integer  NOT NULL ,
	"FuelType"           varchar(50)  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKFuel" ON "Manufacturer"."FuelType"
( 
	"FuelTypeId"
);

CREATE TABLE "Manufacturer"."Make"
( 
	"VehicleMakeId"      integer  NOT NULL ,
	"VehicleMakeName"    varchar(50)  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "PKMake" ON "Manufacturer"."Make"
( 
	"VehicleMakeId"
);

CREATE TABLE "Manufacturer"."Model"
( 
	"ModelId"            integer  NOT NULL ,
	"ModelName"          varchar(50)  NOT NULL ,
	"ModelVariant"       varchar(50)  NOT NULL ,
	"BodyName"           varchar(50)  NOT NULL ,
	"MakeId"             integer  NOT NULL ,
	"CategoryId"         integer  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "PKModel1" ON "Manufacturer"."Model"
( 
	"ModelId",
	"MakeId"
);

CREATE INDEX "XIF1ManufacturerModel" ON "Manufacturer"."Model"
( 
	"MakeId"
);

CREATE INDEX "XIF2ManufacturerModel" ON "Manufacturer"."Model"
( 
	"CategoryId"
);

CREATE TABLE "Sales"."Order"
( 
	"OrderId"            integer  NOT NULL ,
	"InvoiceNumber"      integer  NOT NULL ,
	"TotalPrice"         decimal(18,2)  NULL ,
	"Date"               timestamp  NOT NULL ,
	"CustomerId"         integer  NOT NULL ,
	"StaffId"            integer  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKSalesOrderVehicle" ON "Sales"."Order"
( 
	"OrderId",
	"CustomerId",
	"StaffId"
);

CREATE INDEX "XIF1SalesOrderVehicle" ON "Sales"."Order"
( 
	"CustomerId"
);

CREATE INDEX "XIF2SalesOrderVehicle" ON "Sales"."Order"
( 
	"StaffId"
);

CREATE TABLE "Sales"."OrderVehicle"
( 
	"OrderId"            integer  NOT NULL ,
	"VehicleId"          integer  NOT NULL ,
	"ModelId"            integer  NOT NULL ,
	"MakeId"             integer  NOT NULL ,
	"TrimId"             integer  NOT NULL ,
	"CustomerId"         integer  NOT NULL ,
	"OrderVehicleId"     integer  NOT NULL ,
	"LineItemNumber"     integer  NOT NULL ,
	"Price"              decimal(18,2)  NOT NULL ,
	"Discount"           integer  NOT NULL ,
	"DerivedDiscountedPrice" decimal(18,2)  NOT NULL ,
	"StaffId"            integer  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKSalesOrderVehicleManufacturerVehicle" ON "Sales"."OrderVehicle"
( 
	"OrderVehicleId",
	"OrderId",
	"VehicleId",
	"ModelId",
	"MakeId",
	"TrimId",
	"CustomerId",
	"StaffId"
);

CREATE INDEX "XIF1SalesOrderVehicleManufacturerVehicle" ON "Sales"."OrderVehicle"
( 
	"OrderId",
	"CustomerId",
	"StaffId"
);

CREATE INDEX "XIF2SalesOrderVehicleManufacturerVehicle" ON "Sales"."OrderVehicle"
( 
	"VehicleId",
	"ModelId",
	"MakeId",
	"TrimId"
);

CREATE TABLE "Manufacturer"."Region"
( 
	"RegionId"           integer  NOT NULL ,
	"RegionName"         varchar(50)  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKRegion" ON "Manufacturer"."Region"
( 
	"RegionId"
);

CREATE TABLE "HumanResources"."Staff"
( 
	"StaffId"            integer  NOT NULL ,
	"StaffName"          varchar(50)  NOT NULL ,
	"Department"         varchar(50)  NOT NULL ,
	"ManagerId"          integer  NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKStaff" ON "HumanResources"."Staff"
( 
	"StaffId"
);

CREATE INDEX "XIF1Staff" ON "HumanResources"."Staff"
( 
	"StaffId"
);

CREATE TABLE "Manufacturer"."Transmission"
( 
	"TransmissionId"     integer  NOT NULL ,
	"TransmissionName"   varchar(50)  NOT NULL ,
	"Transmission_GearCount" integer  NOT NULL ,
	"TransmissionTypeId" integer  NULL ,
	"VehicleMakeId"      integer  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKTransmission" ON "Manufacturer"."Transmission"
( 
	"TransmissionId",
	"VehicleMakeId"
);

CREATE INDEX "XIF1Transmission" ON "Manufacturer"."Transmission"
( 
	"TransmissionTypeId"
);

CREATE INDEX "XIF2Transmission" ON "Manufacturer"."Transmission"
( 
	"VehicleMakeId"
);

CREATE TABLE "Manufacturer"."TransmissionType"
( 
	"TransmissionTypeId" integer  NOT NULL ,
	"TransmissionType"   varchar(50)  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKTransmissionType" ON "Manufacturer"."TransmissionType"
( 
	"TransmissionTypeId"
);

CREATE TABLE "Manufacturer"."Trim"
( 
	"TrimId"             integer  NOT NULL ,
	"TrimName"           varchar(50)  NOT NULL ,
	"TrimLevel"          integer  NOT NULL ,
	"ModelId"            integer  NOT NULL ,
	"MakeId"             integer  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKTrim" ON "Manufacturer"."Trim"
( 
	"TrimId",
	"ModelId",
	"MakeId"
);

CREATE INDEX "XIF1Trim" ON "Manufacturer"."Trim"
( 
	"ModelId",
	"MakeId"
);

CREATE TABLE "DbSecurity"."UserAuthorization"
( 
	"UserAuthorizationId" integer  NOT NULL ,
	"ClassTime"          char(5)  NULL ,
	"IndividualProject"  varchar(60)  NULL ,
	"GroupMemberLastName" varchar(35)  NOT NULL ,
	"GroupMemberFirstName" varchar(25)  NOT NULL ,
	"GroupName"          varchar(20)  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL 
);

CREATE UNIQUE INDEX "XPKUserAuthorization" ON "DbSecurity"."UserAuthorization"
( 
	"UserAuthorizationId"
);

CREATE TABLE "Manufacturer"."Vehicle"
( 
	"VinNumber"          char(17)  NOT NULL ,
	"VehicleId"          integer  NOT NULL ,
	"VehicleYear"        char(4)  NOT NULL ,
	"ModelId"            integer  NOT NULL ,
	"MakeId"             integer  NOT NULL ,
	"VehicleMakeId"      integer  NOT NULL ,
	"ManufacturerCountryId" integer  NOT NULL ,
	"EngineId"           integer  NOT NULL ,
	"DriveTrainId"       integer  NOT NULL ,
	"FuelTypeId"         integer  NOT NULL ,
	"TransmissionId"     integer  NOT NULL ,
	"ColorId"            integer  NOT NULL ,
	"TrimId"             integer  NOT NULL ,
	"MSRP"               decimal(18,2)  NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "XPKManufacturerVehicle" ON "Manufacturer"."Vehicle"
( 
	"VehicleId",
	"ModelId",
	"MakeId",
	"TrimId"
);

CREATE INDEX "XIF2ManufacturerVehicle" ON "Manufacturer"."Vehicle"
( 
	"ManufacturerCountryId"
);

CREATE INDEX "XIF3ManufacturerVehicle" ON "Manufacturer"."Vehicle"
( 
	"EngineId",
	"VehicleMakeId"
);

CREATE INDEX "XIF4ManufacturerVehicle" ON "Manufacturer"."Vehicle"
( 
	"DriveTrainId"
);

CREATE INDEX "XIF5ManufacturerVehicle" ON "Manufacturer"."Vehicle"
( 
	"FuelTypeId"
);

CREATE INDEX "XIF6ManufacturerVehicle" ON "Manufacturer"."Vehicle"
( 
	"TransmissionId",
	"VehicleMakeId"
);

CREATE INDEX "XIF7ManufacturerVehicle" ON "Manufacturer"."Vehicle"
( 
	"ColorId"
);

CREATE INDEX "XIF8ManufacturerVehicle" ON "Manufacturer"."Vehicle"
( 
	"TrimId",
	"ModelId",
	"MakeId"
);

CREATE TABLE "Manufacturer"."VehicleStock"
( 
	"StockId"            integer  NOT NULL ,
	"StockCode"          varchar(50)  NOT NULL ,
	"Cost"               decimal(18,2)  NOT NULL ,
	"RepairsCharge"      decimal(18,2)  NOT NULL ,
	"PartsCharge"        decimal(18,2)  NOT NULL ,
	"DeliveryCharge"     decimal(18,2)  NOT NULL ,
	"CusomerComments"    varchar(50)  NULL ,
	"PurchaseDate"       timestamp  NOT NULL ,
	"VehicleId"          integer  NULL ,
	"ModelId"            integer  NOT NULL ,
	"MakeId"             integer  NOT NULL ,
	"TrimId"             integer  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
);

CREATE UNIQUE INDEX "PKStock" ON "Manufacturer"."VehicleStock"
( 
	"StockId"
);

CREATE INDEX "XIF1ManufacturerVehicleStock" ON "Manufacturer"."VehicleStock"
( 
	"VehicleId",
	"ModelId",
	"MakeId",
	"TrimId"
);

CREATE VIEW "Sales"."Sales2018" ( "SaleDate","MakeName","CustomerName","CountryName","SalePrice","RepairsCost","PartsCost","TransportInCost","MSRP" )
 AS 
	SELECT  ALL "Sales"."Order"."Date","Manufacturer"."Make"."VehicleMakeName","Sales"."Customer"."CustomerName","Manufacturer"."Country"."CountryName","Sales"."OrderVehicle"."Price","Manufacturer"."VehicleStock"."RepairsCharge","Manufacturer"."VehicleStock"."PartsCharge","Manufacturer"."VehicleStock"."DeliveryCharge","Manufacturer"."Vehicle"."MSRP"
		FROM "Sales"."Order" ,"Sales"."OrderVehicle" ,"Manufacturer"."Vehicle" ,"Manufacturer"."Model" ,"Manufacturer"."Make" ,"Manufacturer"."Trim" ,"Sales"."Customer" ,"Manufacturer"."VehicleStock" ,"Manufacturer"."Country" ;

CREATE VIEW "Sales"."StockPrices" ( "MakeName","ModelName","RetailCost" )
 AS 
	SELECT  ALL "Manufacturer"."Make"."VehicleMakeName","Manufacturer"."Model"."ModelName","Manufacturer"."Vehicle"."MSRP"
		FROM "Manufacturer"."Make" ,"Manufacturer"."Model" ,"Manufacturer"."Trim" ,"Manufacturer"."Vehicle" ;

CREATE VIEW "Sales"."SalesByCountry" ( "CountryName","ModelName","MakeName","SalePrice","RepairsCost","PartsCost","TransportInCost","Color","MSRP","LineItemDiscount","InvoiceNumber","SaleDate","CustomerName","SalesDetailsID" )
 AS 
	SELECT "Manufacturer"."Country"."CountryName","Manufacturer"."Model"."ModelName","Manufacturer"."Make"."VehicleMakeName","Sales"."OrderVehicle"."Price","Manufacturer"."VehicleStock"."RepairsCharge","Manufacturer"."VehicleStock"."PartsCharge","Manufacturer"."VehicleStock"."DeliveryCharge","Manufacturer"."Color"."ColorName","Manufacturer"."Vehicle"."MSRP","Sales"."OrderVehicle"."DerivedDiscountedPrice","Sales"."Order"."InvoiceNumber","Sales"."Order"."Date","Sales"."Customer"."CustomerName","Sales"."OrderVehicle"."OrderVehicleId"
		FROM "Manufacturer"."Country" ,"Manufacturer"."Make" ,"Manufacturer"."Model" ,"Manufacturer"."Vehicle" ,"Manufacturer"."VehicleStock" ,"Manufacturer"."Color" ,"Sales"."OrderVehicle" ,"Sales"."Order" ,"Sales"."Customer" 
		GROUP BY Manufacturer.Country.CountryName;

CREATE VIEW "Sales"."OrdersByCustomer" ( "CustomerName","OrderId","VinNumber","CustomerId" )
 AS 
	SELECT "Sales"."Customer"."CustomerName","Sales"."OrderVehicle"."OrderId","Manufacturer"."Vehicle"."VinNumber","Sales"."Customer"."CustomerId"
		FROM "Sales"."Order" ,"Sales"."OrderVehicle" ,"Manufacturer"."Vehicle" ,"Sales"."Customer" 
		GROUP BY Sales.Customer.CustomerId;

CREATE VIEW "VehiclesByCategory" ( "CategoryName","ModelName","MakeName","TrimName","VinNumber" )
 AS 
	SELECT "Manufacturer"."Category"."CategoryName","Manufacturer"."Model"."ModelName","Manufacturer"."Make"."VehicleMakeName","Manufacturer"."Trim"."TrimName","Manufacturer"."Vehicle"."VinNumber"
		FROM "Manufacturer"."Vehicle" ,"Manufacturer"."Trim" ,"Manufacturer"."Make" ,"Manufacturer"."Model" ,"Manufacturer"."Category" ;

CREATE VIEW "VehiclesByEngineCylinderCount" ( "VehicleId","EngineCylinderCount" )
 AS 
	SELECT "Manufacturer"."Vehicle"."VehicleId","Manufacturer"."Engine"."EngineCylinderCount"
		FROM "Manufacturer"."Engine" ,"Manufacturer"."Vehicle" 
		GROUP BY Manufacturer.Engine.EngineCylinderCount;


ALTER TABLE "Manufacturer"."Category"
	ADD CONSTRAINT "CK_Multiple_IDNumber_1383560189" CHECK  ( "CategoryId" BETWEEN 0 AND 99999 ) ;

ALTER TABLE "Manufacturer"."Category"
	ALTER COLUMN "CategoryName"
		SET DEFAULT 'DefaultCategory';

ALTER TABLE "Manufacturer"."Category"
	ALTER COLUMN "CategoryId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Category"
	ALTER COLUMN "UpperThreshold"
		SET DEFAULT 999999.99;

ALTER TABLE "Manufacturer"."Category"
	ALTER COLUMN "LowerThreshold"
		SET DEFAULT 999.99;

ALTER TABLE "Manufacturer"."Color"
	ALTER COLUMN "ColorId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Color"
	ALTER COLUMN "ColorName"
		SET DEFAULT 'DefaultName';

ALTER TABLE "Manufacturer"."Country"
	ALTER COLUMN "CountryId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Country"
	ALTER COLUMN "CountryName"
		SET DEFAULT 'DefaultName';

ALTER TABLE "Manufacturer"."Country"
	ALTER COLUMN "RegionId"
		SET DEFAULT 1;


ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "CK_Multiple_IDNumber_1852269529" CHECK  ( "CustomerId" BETWEEN 0 AND 99999 ) ;

ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "CK_Customer_PostalCode_2029823254" CHECK  ( "CustomerPostalCode" BETWEEN 501 AND 99950 ) ;

ALTER TABLE "Sales"."Customer"
	ALTER COLUMN "CustomerId"
		SET DEFAULT 1;

ALTER TABLE "Sales"."Customer"
	ALTER COLUMN "CustomerName"
		SET DEFAULT 'DefaultName';

ALTER TABLE "Sales"."Customer"
	ALTER COLUMN "CustomerAddress1"
		SET DEFAULT '450 W 33rd St';

ALTER TABLE "Sales"."Customer"
	ALTER COLUMN "CustomerTown"
		SET DEFAULT 'New York';

ALTER TABLE "Sales"."Customer"
	ALTER COLUMN "CustomerPostalCode"
		SET DEFAULT '10001';

ALTER TABLE "Sales"."Customer"
	ALTER COLUMN "CountryId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."DriveTrain"
	ALTER COLUMN "DriveTrainId"
		SET DEFAULT 1;


ALTER TABLE "Manufacturer"."Engine"
	ADD CONSTRAINT "CK_Engine_Cylinder_35025744" CHECK  ( "EngineCylinderCount" >= 0 ) ;

ALTER TABLE "Manufacturer"."Engine"
	ADD CONSTRAINT "CK_Engine_MaxSpecification_1308080612" CHECK  ( "EngineMaxHorsepower" >= 0 ) ;

ALTER TABLE "Manufacturer"."Engine"
	ADD CONSTRAINT "CK_Engine_MaxSpecification_1753929379" CHECK  ( "EngineMaxTorque" >= 0 ) ;

ALTER TABLE "Manufacturer"."Engine"
	ALTER COLUMN "EngineId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Engine"
	ALTER COLUMN "VehicleMakeId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Feature"
	ALTER COLUMN "FeatureId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Feature"
	ALTER COLUMN "FeatureName"
		SET DEFAULT 'DefaultName';

ALTER TABLE "Manufacturer"."FeatureVehicle"
	ALTER COLUMN "Feature_Id"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."FeatureVehicle"
	ALTER COLUMN "VehicleId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."FeatureVehicle"
	ALTER COLUMN "Feature_Vehicle_Id"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."FeatureVehicle"
	ALTER COLUMN "TrimId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."FeatureVehicle"
	ALTER COLUMN "ModelId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."FeatureVehicle"
	ALTER COLUMN "MakeId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."FuelType"
	ALTER COLUMN "FuelTypeId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Make"
	ALTER COLUMN "VehicleMakeId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Make"
	ALTER COLUMN "VehicleMakeName"
		SET DEFAULT 'DefaultName';

ALTER TABLE "Manufacturer"."Model"
	ALTER COLUMN "ModelId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Model"
	ALTER COLUMN "ModelName"
		SET DEFAULT 'DefaultName';

ALTER TABLE "Manufacturer"."Model"
	ALTER COLUMN "BodyName"
		SET DEFAULT 'DefaultName';

ALTER TABLE "Manufacturer"."Model"
	ALTER COLUMN "MakeId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Model"
	ALTER COLUMN "CategoryId"
		SET DEFAULT 1;


ALTER TABLE "Sales"."Order"
	ADD CONSTRAINT "CK_Multiple_Price_590938923" CHECK  ( "TotalPrice" >= 0 ) ;

ALTER TABLE "Sales"."Order"
	ADD CONSTRAINT "CK_Multiple_Date_608929698" CHECK  ( "Date" <= 'CONVERT([date],sysdatetime' ) ;

ALTER TABLE "Sales"."Order"
	ALTER COLUMN "OrderId"
		SET DEFAULT 1;

ALTER TABLE "Sales"."Order"
	ALTER COLUMN "InvoiceNumber"
		SET DEFAULT 1;

ALTER TABLE "Sales"."Order"
	ALTER COLUMN "TotalPrice"
		SET DEFAULT 999.99;

ALTER TABLE "Sales"."Order"
	ALTER COLUMN "Date"
		SET DEFAULT '12319999';

ALTER TABLE "Sales"."Order"
	ALTER COLUMN "CustomerId"
		SET DEFAULT 1;

ALTER TABLE "Sales"."Order"
	ALTER COLUMN "StaffId"
		SET DEFAULT 1;


ALTER TABLE "Sales"."OrderVehicle"
	ADD CONSTRAINT "CK_OrderVehicle_DiscountPercentage_1932664740" CHECK  ( "Discount" BETWEEN 0 AND 100 ) ;

ALTER TABLE "Sales"."OrderVehicle"
	ALTER COLUMN "OrderId"
		SET DEFAULT 1;

ALTER TABLE "Sales"."OrderVehicle"
	ALTER COLUMN "VehicleId"
		SET DEFAULT 1;

ALTER TABLE "Sales"."OrderVehicle"
	ALTER COLUMN "ModelId"
		SET DEFAULT 1;

ALTER TABLE "Sales"."OrderVehicle"
	ALTER COLUMN "MakeId"
		SET DEFAULT 1;

ALTER TABLE "Sales"."OrderVehicle"
	ALTER COLUMN "TrimId"
		SET DEFAULT 1;

ALTER TABLE "Sales"."OrderVehicle"
	ALTER COLUMN "CustomerId"
		SET DEFAULT 1;

ALTER TABLE "Sales"."OrderVehicle"
	ALTER COLUMN "OrderVehicleId"
		SET DEFAULT 1;

ALTER TABLE "Sales"."OrderVehicle"
	ALTER COLUMN "LineItemNumber"
		SET DEFAULT 1;

ALTER TABLE "Sales"."OrderVehicle"
	ALTER COLUMN "Discount"
		SET DEFAULT 0;

ALTER TABLE "Sales"."OrderVehicle"
	ALTER COLUMN "StaffId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Region"
	ALTER COLUMN "RegionId"
		SET DEFAULT 1;

ALTER TABLE "HumanResources"."Staff"
	ALTER COLUMN "StaffId"
		SET DEFAULT 1;

ALTER TABLE "HumanResources"."Staff"
	ALTER COLUMN "StaffName"
		SET DEFAULT 'DefaultName';

ALTER TABLE "HumanResources"."Staff"
	ALTER COLUMN "Department"
		SET DEFAULT 'DefaultName';

ALTER TABLE "HumanResources"."Staff"
	ALTER COLUMN "ManagerId"
		SET DEFAULT 1;


ALTER TABLE "Manufacturer"."Transmission"
	ADD CONSTRAINT "CK_Transmission_TransmissionGearCount_460807440" CHECK  ( "Transmission_GearCount" >= 0 ) ;

ALTER TABLE "Manufacturer"."Transmission"
	ALTER COLUMN "TransmissionId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Transmission"
	ALTER COLUMN "VehicleMakeId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."TransmissionType"
	ALTER COLUMN "TransmissionTypeId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Trim"
	ALTER COLUMN "TrimId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Trim"
	ALTER COLUMN "ModelId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Trim"
	ALTER COLUMN "MakeId"
		SET DEFAULT 1;


ALTER TABLE "Manufacturer"."Vehicle"
	ADD CONSTRAINT "CK_Multiple_Price_1547266155" CHECK  ( "MSRP" >= 0 ) ;

ALTER TABLE "Manufacturer"."Vehicle"
	ALTER COLUMN "VehicleId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Vehicle"
	ALTER COLUMN "ModelId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Vehicle"
	ALTER COLUMN "MakeId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Vehicle"
	ALTER COLUMN "VehicleMakeId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Vehicle"
	ALTER COLUMN "EngineId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Vehicle"
	ALTER COLUMN "DriveTrainId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Vehicle"
	ALTER COLUMN "FuelTypeId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Vehicle"
	ALTER COLUMN "TransmissionId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Vehicle"
	ALTER COLUMN "ColorId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Vehicle"
	ALTER COLUMN "TrimId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."Vehicle"
	ALTER COLUMN "MSRP"
		SET DEFAULT 999.99;


ALTER TABLE "Manufacturer"."VehicleStock"
	ADD CONSTRAINT "CK_Multiple_Price_500642137" CHECK  ( "RepairsCharge" >= 0 ) ;

ALTER TABLE "Manufacturer"."VehicleStock"
	ADD CONSTRAINT "CK_Multiple_Price_84940068" CHECK  ( "PartsCharge" >= 0 ) ;

ALTER TABLE "Manufacturer"."VehicleStock"
	ADD CONSTRAINT "CK_Multiple_Price_339104592" CHECK  ( "DeliveryCharge" >= 0 ) ;

ALTER TABLE "Manufacturer"."VehicleStock"
	ADD CONSTRAINT "CK_Multiple_Date_1728104239" CHECK  ( "PurchaseDate" <= 'CONVERT([date],sysdatetime' ) ;

ALTER TABLE "Manufacturer"."VehicleStock"
	ALTER COLUMN "StockId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."VehicleStock"
	ALTER COLUMN "StockCode"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."VehicleStock"
	ALTER COLUMN "Cost"
		SET DEFAULT 999.99;

ALTER TABLE "Manufacturer"."VehicleStock"
	ALTER COLUMN "RepairsCharge"
		SET DEFAULT 999.99;

ALTER TABLE "Manufacturer"."VehicleStock"
	ALTER COLUMN "PartsCharge"
		SET DEFAULT 999.99;

ALTER TABLE "Manufacturer"."VehicleStock"
	ALTER COLUMN "DeliveryCharge"
		SET DEFAULT 999.99;

ALTER TABLE "Manufacturer"."VehicleStock"
	ALTER COLUMN "PurchaseDate"
		SET DEFAULT '12319999';

ALTER TABLE "Manufacturer"."VehicleStock"
	ALTER COLUMN "VehicleId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."VehicleStock"
	ALTER COLUMN "ModelId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."VehicleStock"
	ALTER COLUMN "MakeId"
		SET DEFAULT 1;

ALTER TABLE "Manufacturer"."VehicleStock"
	ALTER COLUMN "TrimId"
		SET DEFAULT 1;
