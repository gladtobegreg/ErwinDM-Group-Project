
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

CREATE TABLE "Manufacturer"."Color"
( 
	"ColorId"            integer  NOT NULL ,
	"ColorName"          varchar(50)  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
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

CREATE TABLE "Manufacturer"."Feature"
( 
	"FeatureId"          integer  NOT NULL ,
	"FeatureName"        varchar(50)  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
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

CREATE TABLE "Manufacturer"."FuelType"
( 
	"FuelTypeId"         integer  NOT NULL ,
	"FuelType"           varchar(50)  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
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

CREATE TABLE "Manufacturer"."Region"
( 
	"RegionId"           integer  NOT NULL ,
	"RegionName"         varchar(50)  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
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

CREATE TABLE "Manufacturer"."TransmissionType"
( 
	"TransmissionTypeId" integer  NOT NULL ,
	"TransmissionType"   varchar(50)  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"SysStartTime"       timestamp  NULL ,
	"SysEndTime"         timestamp  NULL ,
	"RowLevelHashKey"    bytea  NULL 
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
