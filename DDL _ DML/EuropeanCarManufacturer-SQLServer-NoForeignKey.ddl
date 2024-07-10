
CREATE SCHEMA [Output] AUTHORIZATION [dbo]
go

CREATE SCHEMA [dGroupFinalProject]
go

CREATE SCHEMA [dDatetime]
go

CREATE SCHEMA [dString]
go

CREATE SCHEMA [dNumber]
go

CREATE SCHEMA [dBlob]
go

CREATE SCHEMA [sdMoneyNumber]
go

CREATE SCHEMA [sdCarInfoString]
go

CREATE SCHEMA [sdLocationString]
go

CREATE SCHEMA [sdNameString]
go

CREATE SCHEMA [Manufacturer]
go

CREATE SCHEMA [HumanResources]
go

CREATE SCHEMA [Sales]
go

CREATE SCHEMA [Marketing]
go

CREATE SCHEMA [DbSecurity]
go

CREATE SCHEMA [Triggered]
go

CREATE TYPE [dbo].[dGroupFinalProject]
	FROM VARCHAR(255) NULL
go

CREATE TYPE [dGroupFinalProject].[dDatetime]
	FROM DATETIME NULL
go

CREATE TYPE [dGroupFinalProject].[dNumber]
	FROM INTEGER NULL
go

CREATE TYPE [dGroupFinalProject].[dString]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [dGroupFinalProject].[dBlob]
	FROM VARBINARY(255) NULL
go

CREATE TYPE [dDatetime].[sdYYYYMMDDDatetime]
	FROM DATETIME NULL
go

CREATE TYPE [dNumber].[sdIdNumber]
	FROM INTEGER NULL
go

CREATE TYPE [dNumber].[sdPercentNumber]
	FROM INTEGER NULL
go

CREATE TYPE [dNumber].[sdMoneyNumber]
	FROM DECIMAL(18,2) NULL
go

CREATE TYPE [sdMoneyNumber].[sdPriceNumber]
	FROM DECIMAL(18,2) NULL
go

CREATE TYPE [sdMoneyNumber].[sdFeeNumber]
	FROM DECIMAL(18,2) NULL
go

CREATE TYPE [dString].[sdLocationString]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [sdLocationString].[sdCountryString]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [sdLocationString].[sdTownString]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [sdLocationString].[sdZipCodeString]
	FROM CHAR(10) NULL
go

CREATE TYPE [sdLocationString].[sdRegionString]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [sdLocationString].[sdAddressString]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [dString].[sdCommentaryString]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [dString].[sdNameString]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [sdNameString].[sdPersonName]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [sdNameString].[sdMakeName]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [sdNameString].[sdModelName]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [sdNameString].[sdDepartmentName]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [dString].[sdFlagString]
	FROM CHAR(1) NULL
go

CREATE TYPE [dString].[sdCarInfoString]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [sdCarInfoString].[sdDetailsString]
	FROM VARCHAR(50) NULL
go

CREATE TYPE [sdCarInfoString].[sdVinNumberString]
	FROM CHAR(17) NULL
go

CREATE TYPE [dString].[sdYYYYString]
	FROM CHAR(4) NULL
go

CREATE TYPE [sdDriveTrainCodeString]
	FROM CHAR(10) NULL
go

CREATE TYPE [sdDriveTrainDescriptionString]
	FROM VARCHAR(20) NULL
go

CREATE TABLE [Triggered].[AuditCustomerHistory]
( 
	[AuditCustomerHistory] [dNumber].[sdIdNumber]  NOT NULL ,
	[CustomerId]         [dNumber].[sdIdNumber]  NOT NULL ,
	[CustomerName]       [sdNameString].[sdPersonName]  NOT NULL ,
	[CustomerAddress1]   [sdLocationString].[sdAddressString]  NOT NULL ,
	[CustomerAddress2]   [sdLocationString].[sdAddressString] ,
	[CustomerTown]       [sdLocationString].[sdTownString]  NOT NULL ,
	[CustomerPostalCode] [sdLocationString].[sdZipCodeString]  NOT NULL ,
	[IsCustomerReseller] [dString].[sdFlagString]  NOT NULL ,
	[IsCustomerCreditRisk] [dString].[sdLocationString]  NULL ,
	[SpendCapacity]      [dNumber].[sdMoneyNumber] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] ,
	[Note]               [dString].[sdCommentaryString]  NOT NULL ,
	[IsDeleted]          [dString].[sdFlagString]  NULL ,
	[TransactionNumber]  [dGroupFinalProject].[dNumber]  NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] 
)
go

CREATE TABLE [Triggered].[AuditMakeHistory]
( 
	[AuditMakeHistoryId] [dNumber].[sdIdNumber]  NOT NULL ,
	[MakeId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[MakeName]           [sdNameString].[sdMakeName]  NOT NULL ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] ,
	[Note]               [dString].[sdCommentaryString]  NOT NULL ,
	[IsDeleted]          [dString].[sdFlagString]  NULL ,
	[TransactionNumber]  [dGroupFinalProject].[dNumber]  NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] 
)
go

CREATE TABLE [Triggered].[AuditModelHistory]
( 
	[AuditModelHistoryId] [dNumber].[sdIdNumber]  NOT NULL ,
	[ModelId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[ModelName]          [sdNameString].[sdModelName]  NOT NULL ,
	[ModelVariant]       [dString].[sdNameString]  NOT NULL ,
	[BodyName]           [sdCarInfoString].[sdDetailsString]  NOT NULL ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] ,
	[Note]               [dString].[sdCommentaryString]  NOT NULL ,
	[IsDeleted]          [dString].[sdFlagString]  NULL ,
	[TransactionNumber]  [dGroupFinalProject].[dNumber]  NULL ,
	[UserAuthorizationKey] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndtime]         [dGroupFinalProject].[dDatetime] 
)
go

CREATE TABLE [Triggered].[AuditOrderHistory]
( 
	[AuditOrderHistoryId] [dNumber].[sdIdNumber]  NOT NULL ,
	[OrderId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[InvoiceNumber]      [dGroupFinalProject].[dNumber]  NOT NULL ,
	[TotalPrice]         [sdMoneyNumber].[sdPriceNumber]  NULL ,
	[Date]               [dDatetime].[sdYYYYMMDDDatetime]  NOT NULL ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] ,
	[Note]               [dString].[sdCommentaryString]  NOT NULL ,
	[IsDeleted]          [dString].[sdFlagString]  NULL ,
	[TransactionNumber]  [dGroupFinalProject].[dNumber]  NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] 
)
go

CREATE TABLE [Triggered].[AuditOrderVehicleHistory]
( 
	[AuditOrderVehicleHistory] [dNumber].[sdIdNumber]  NOT NULL ,
	[OrderVehicleId]     [dNumber].[sdIdNumber]  NOT NULL ,
	[LineItemNumber]     [dGroupFinalProject].[dNumber]  NOT NULL ,
	[Price]              [sdMoneyNumber].[sdPriceNumber]  NOT NULL ,
	[Discount]           [dNumber].[sdPercentNumber] ,
	[DerivedDiscountedPrice] [dNumber].[sdMoneyNumber] ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[Note]               [dString].[sdCommentaryString]  NOT NULL ,
	[IsDeleted]          [dString].[sdFlagString]  NULL ,
	[TransactionNumber]  [dGroupFinalProject].[dNumber]  NULL ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Triggered].[AuditStaffHistory]
( 
	[AuditStaffHistory]  [dNumber].[sdIdNumber]  NOT NULL ,
	[StaffId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[StaffName]          [sdNameString].[sdPersonName]  NOT NULL ,
	[Department]         [sdNameString].[sdDepartmentName] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] ,
	[Note]               [dString].[sdCommentaryString]  NOT NULL ,
	[IsDeleted]          [dString].[sdFlagString]  NULL ,
	[TransactionNumber]  [dGroupFinalProject].[dNumber]  NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] 
)
go

CREATE TABLE [Triggered].[AuditVehicleHistory]
( 
	[AuditVehicleHistoryId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[VehicleId]          [dNumber].[sdIdNumber]  NOT NULL ,
	[VinNumber]          [sdCarInfoString].[sdDetailsString]  NOT NULL ,
	[VehicleYear]        [dString].[sdYYYYString]  NOT NULL ,
	[MSRP]               [dNumber].[sdMoneyNumber]  NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[Note]               [dString].[sdCommentaryString]  NOT NULL ,
	[isDeleted]          [dString].[sdFlagString]  NULL ,
	[TransactionNumber]  [dGroupFinalProject].[dNumber]  NOT NULL ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Triggered].[AuditVehicleStockHistory]
( 
	[AuditVehicleStockHistoryId] [dNumber].[sdIdNumber]  NOT NULL ,
	[StockId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[StockCode]          [dGroupFinalProject].[dString]  NOT NULL ,
	[RepairsCharge]      [sdMoneyNumber].[sdFeeNumber] ,
	[PartsCharge]        [sdMoneyNumber].[sdFeeNumber] ,
	[DeliveryCharge]     [sdMoneyNumber].[sdFeeNumber] ,
	[PurchasedDate]      [dDatetime].[sdYYYYMMDDDatetime] ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] 
)
go

CREATE TABLE [Manufacturer].[Category]
( 
	[CategoryName]       [dGroupFinalProject].[dString]  NOT NULL ,
	[CategoryId]         [dNumber].[sdIdNumber]  NOT NULL ,
	[UpperThreshold]     [dNumber].[sdMoneyNumber] ,
	[LowerThreshold]     [dNumber].[sdMoneyNumber] ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[Color]
( 
	[ColorId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[ColorName]          [dString].[sdNameString]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [dbo].[CommonColumnsForTriggerTemplate]
( 
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob]  NULL ,
	[Note]               [dString].[sdCommentaryString]  NOT NULL ,
	[IsDeleted]          [dString].[sdFlagString]  NULL ,
	[Transaction Number] [dGroupFinalProject].[dNumber]  NULL ,
	[UserAuthenticatedKey] [dGroupFinalProject].[dNumber]  NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime]  NULL ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime]  NULL 
)
go

CREATE TABLE [Manufacturer].[Country]
( 
	[CountryId]          [dNumber].[sdIdNumber]  NOT NULL ,
	[CountryISO3]        [sdLocationString].[sdCountryString]  NULL ,
	[CountryName]        [sdLocationString].[sdCountryString]  NOT NULL ,
	[CountryISO2]        [sdLocationString].[sdCountryString]  NULL ,
	[RegionId]           [dGroupFinalProject].[dNumber]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Sales].[Customer]
( 
	[CustomerId]         [dNumber].[sdIdNumber]  NOT NULL ,
	[CustomerName]       [sdNameString].[sdPersonName]  NOT NULL ,
	[CustomerAddress1]   [sdLocationString].[sdAddressString]  NOT NULL ,
	[CustomerAddress2]   [sdLocationString].[sdAddressString]  NULL ,
	[CustomerTown]       [sdLocationString].[sdTownString]  NOT NULL ,
	[CustomerPostalCode] [sdLocationString].[sdZipCodeString]  NOT NULL ,
	[IsCustomerReseller] [dString].[sdFlagString]  NOT NULL ,
	[IsCustomerCreditRisk] [dString].[sdFlagString]  NULL ,
	[CustomerSpendCapacity] [dNumber].[sdMoneyNumber]  NULL ,
	[CountryId]          [dNumber].[sdIdNumber]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[DriveTrain]
( 
	[DriveTrainId]       [dNumber].[sdIdNumber]  NOT NULL ,
	[DriveTrainCode]     [sdDriveTrainCodeString]  NOT NULL ,
	[DriveTrainDescription] [sdDriveTrainDescriptionString] ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[Engine]
( 
	[EngineId]           [dNumber].[sdIdNumber]  NOT NULL ,
	[EngineDisplacement] float  NOT NULL ,
	[EngineCylinderCount] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[EngineMaxHorsepower] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[EngineMaxTorque]    [dGroupFinalProject].[dNumber]  NOT NULL ,
	[VehicleMakeId]      [dNumber].[sdIdNumber]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[Feature]
( 
	[FeatureId]          [dNumber].[sdIdNumber]  NOT NULL ,
	[FeatureName]        [dGroupFinalProject].[dString]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[FeatureVehicle]
( 
	[Feature Id]         [dNumber].[sdIdNumber]  NOT NULL ,
	[VehicleId]          [dNumber].[sdIdNumber]  NOT NULL ,
	[Feature Vehicle Id] [dNumber].[sdIdNumber]  NOT NULL ,
	[TrimId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[ModelId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[MakeId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[FuelType]
( 
	[FuelTypeId]         [dNumber].[sdIdNumber]  NOT NULL ,
	[FuelType]           [dString].[sdNameString]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[Make]
( 
	[VehicleMakeId]      [dNumber].[sdIdNumber]  NOT NULL ,
	[VehicleMakeName]    [sdNameString].[sdMakeName]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[Model]
( 
	[ModelId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[ModelName]          [sdNameString].[sdModelName]  NOT NULL ,
	[ModelVariant]       [dString].[sdNameString]  NOT NULL ,
	[BodyName]           [sdCarInfoString].[sdDetailsString]  NOT NULL ,
	[MakeId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[CategoryId]         [dNumber].[sdIdNumber]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Sales].[Order]
( 
	[OrderId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[InvoiceNumber]      [dGroupFinalProject].[dNumber]  NOT NULL ,
	[TotalPrice]         [sdMoneyNumber].[sdPriceNumber]  NULL ,
	[Date]               [dDatetime].[sdYYYYMMDDDatetime]  NOT NULL ,
	[CustomerId]         [dNumber].[sdIdNumber]  NOT NULL ,
	[StaffId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Sales].[OrderVehicle]
( 
	[OrderId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[VehicleId]          [dNumber].[sdIdNumber]  NOT NULL ,
	[ModelId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[MakeId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[TrimId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[CustomerId]         [dNumber].[sdIdNumber]  NOT NULL ,
	[OrderVehicleId]     [dNumber].[sdIdNumber]  NOT NULL ,
	[LineItemNumber]     [dGroupFinalProject].[dNumber]  IDENTITY  NOT NULL ,
	[Price]              [sdMoneyNumber].[sdPriceNumber]  NOT NULL ,
	[Discount]           [dNumber].[sdPercentNumber]  NOT NULL ,
	[DerivedDiscountedPrice] [sdMoneyNumber].[sdPriceNumber]  NOT NULL ,
	[StaffId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[Region]
( 
	[RegionId]           [dGroupFinalProject].[dNumber]  NOT NULL ,
	[RegionName]         [sdLocationString].[sdRegionString]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [HumanResources].[Staff]
( 
	[StaffId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[StaffName]          [sdNameString].[sdPersonName]  NOT NULL ,
	[Department]         [sdNameString].[sdDepartmentName]  NOT NULL ,
	[ManagerId]          [dNumber].[sdIdNumber] ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [dbo].[sysdiagrams]
( 
	[Name]               [sdNameString].[sdPersonName]  NOT NULL ,
	[Principal Id]       [dNumber].[sdIdNumber]  NOT NULL ,
	[diagramid]          [dNumber].[sdIdNumber]  NOT NULL ,
	[Version]            [dGroupFinalProject].[dNumber]  NULL ,
	[Definition]         [dGroupFinalProject].[dBlob]  NULL 
)
go

CREATE TABLE [Manufacturer].[Transmission]
( 
	[TransmissionId]     [dNumber].[sdIdNumber]  NOT NULL ,
	[TransmissionName]   [dString].[sdNameString]  NOT NULL ,
	[Transmission GearCount] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[TransmissionTypeId] [dNumber].[sdIdNumber] ,
	[VehicleMakeId]      [dNumber].[sdIdNumber]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[TransmissionType]
( 
	[TransmissionTypeId] [dNumber].[sdIdNumber]  NOT NULL ,
	[TransmissionType]   [dString].[sdNameString]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[Trim]
( 
	[TrimId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[TrimName]           [dString].[sdNameString]  NOT NULL ,
	[TrimLevel]          [dGroupFinalProject].[dNumber]  NOT NULL ,
	[ModelId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[MakeId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [DbSecurity].[UserAuthorization]
( 
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[ClassTime]          char(5)  NULL ,
	[IndividualProject]  varchar(60)  NULL ,
	[GroupMemberLastName] varchar(35)  NOT NULL ,
	[GroupMemberFirstName] varchar(25)  NOT NULL ,
	[GroupName]          varchar(20)  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] 
)
go

CREATE TABLE [Manufacturer].[Vehicle]
( 
	[VinNumber]          [sdCarInfoString].[sdVinNumberString]  NOT NULL ,
	[VehicleId]          [dNumber].[sdIdNumber]  NOT NULL ,
	[VehicleYear]        [dString].[sdYYYYString]  NOT NULL ,
	[ModelId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[MakeId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[VehicleMakeId]      [dNumber].[sdIdNumber]  NOT NULL ,
	[ManufacturerCountryId] [dNumber].[sdIdNumber]  NOT NULL ,
	[EngineId]           [dNumber].[sdIdNumber]  NOT NULL ,
	[DriveTrainId]       [dNumber].[sdIdNumber]  NOT NULL ,
	[FuelTypeId]         [dNumber].[sdIdNumber]  NOT NULL ,
	[TransmissionId]     [dNumber].[sdIdNumber]  NOT NULL ,
	[ColorId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[TrimId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[MSRP]               [dNumber].[sdMoneyNumber] ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go

CREATE TABLE [Manufacturer].[VehicleStock]
( 
	[StockId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[StockCode]          [dGroupFinalProject].[dString]  NOT NULL ,
	[Cost]               [sdMoneyNumber].[sdPriceNumber]  NOT NULL ,
	[RepairsCharge]      [sdMoneyNumber].[sdFeeNumber]  NOT NULL ,
	[PartsCharge]        [sdMoneyNumber].[sdFeeNumber]  NOT NULL ,
	[DeliveryCharge]     [sdMoneyNumber].[sdFeeNumber]  NOT NULL ,
	[CusomerComments]    [dString].[sdCommentaryString]  NULL ,
	[PurchaseDate]       [dDatetime].[sdYYYYMMDDDatetime]  NOT NULL ,
	[VehicleId]          [dNumber].[sdIdNumber] ,
	[ModelId]            [dNumber].[sdIdNumber]  NOT NULL ,
	[MakeId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[TrimId]             [dNumber].[sdIdNumber]  NOT NULL ,
	[UserAuthorizationId] [dGroupFinalProject].[dNumber]  NOT NULL ,
	[SysStartTime]       [dGroupFinalProject].[dDatetime] ,
	[SysEndTime]         [dGroupFinalProject].[dDatetime] ,
	[RowLevelHashKey]    [dGroupFinalProject].[dBlob] 
)
go
