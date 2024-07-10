
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

ALTER TABLE [Triggered].[AuditCustomerHistory]
	ADD CONSTRAINT [XPKAuditCustomerHistory] PRIMARY KEY  CLUSTERED ([AuditCustomerHistory] ASC)
go

ALTER TABLE [Triggered].[AuditMakeHistory]
	ADD CONSTRAINT [XPKAudit] PRIMARY KEY  CLUSTERED ([AuditMakeHistoryId] ASC)
go

ALTER TABLE [Triggered].[AuditModelHistory]
	ADD CONSTRAINT [XPKAuditModelHistory] PRIMARY KEY  CLUSTERED ([AuditModelHistoryId] ASC)
go

ALTER TABLE [Triggered].[AuditOrderHistory]
	ADD CONSTRAINT [XPKAuditOrderHistory] PRIMARY KEY  CLUSTERED ([AuditOrderHistoryId] ASC)
go

ALTER TABLE [Triggered].[AuditOrderVehicleHistory]
	ADD CONSTRAINT [XPKAuditOrder] PRIMARY KEY  CLUSTERED ([AuditOrderVehicleHistory] ASC)
go

ALTER TABLE [Triggered].[AuditStaffHistory]
	ADD CONSTRAINT [XPKAuditStaffHistory] PRIMARY KEY  CLUSTERED ([AuditStaffHistory] ASC)
go

ALTER TABLE [Triggered].[AuditVehicleHistory]
	ADD CONSTRAINT [XPKVehicleHistory] PRIMARY KEY  CLUSTERED ([AuditVehicleHistoryId] ASC)
go

ALTER TABLE [Triggered].[AuditVehicleStockHistory]
	ADD CONSTRAINT [XPKAuditVehicleStockHistory] PRIMARY KEY  CLUSTERED ([AuditVehicleStockHistoryId] ASC)
go

ALTER TABLE [Manufacturer].[Category]
	ADD CONSTRAINT [XPKMarketingCategory] PRIMARY KEY  CLUSTERED ([CategoryId] ASC)
go

ALTER TABLE [Manufacturer].[Color]
	ADD CONSTRAINT [XPKColor] PRIMARY KEY  CLUSTERED ([ColorId] ASC)
go

ALTER TABLE [dbo].[CommonColumnsForTriggerTemplate]
	ADD CONSTRAINT [UK_TransactionNumber] UNIQUE ([Transaction Number]  ASC)
go

ALTER TABLE [Manufacturer].[Country]
	ADD CONSTRAINT [PK_Country] PRIMARY KEY  CLUSTERED ([CountryId] ASC)
go

ALTER TABLE [Manufacturer].[Country]
	ADD CONSTRAINT [UK_CountryName] UNIQUE ([CountryName]  ASC)
go

ALTER TABLE [Manufacturer].[Country]
	ADD CONSTRAINT [UK_RegiodID] UNIQUE ([RegionId]  ASC)
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [PK_Customer] PRIMARY KEY  CLUSTERED ([CustomerId] ASC)
go

ALTER TABLE [Manufacturer].[DriveTrain]
	ADD CONSTRAINT [XPKDriveTrain] PRIMARY KEY  CLUSTERED ([DriveTrainId] ASC)
go

ALTER TABLE [Manufacturer].[Engine]
	ADD CONSTRAINT [XPKEngine] PRIMARY KEY  CLUSTERED ([EngineId] ASC,[VehicleMakeId] ASC)
go

ALTER TABLE [Manufacturer].[Feature]
	ADD CONSTRAINT [XPKFeature] PRIMARY KEY  CLUSTERED ([FeatureId] ASC)
go

ALTER TABLE [Manufacturer].[FeatureVehicle]
	ADD CONSTRAINT [XPKFeatureManufacturerVehicle] PRIMARY KEY  CLUSTERED (["Feature Vehicle Id"] ASC)
go

ALTER TABLE [Manufacturer].[FuelType]
	ADD CONSTRAINT [XPKFuel] PRIMARY KEY  CLUSTERED ([FuelTypeId] ASC)
go

ALTER TABLE [Manufacturer].[Make]
	ADD CONSTRAINT [PK_Make] PRIMARY KEY  CLUSTERED ([VehicleMakeId] ASC)
go

ALTER TABLE [Manufacturer].[Model]
	ADD CONSTRAINT [PK_Model_1] PRIMARY KEY  CLUSTERED ([ModelId] ASC,[MakeId] ASC)
go

ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [XPKSalesOrderVehicle] PRIMARY KEY  CLUSTERED ([OrderId] ASC,[CustomerId] ASC,[StaffId] ASC)
go

ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [UK_InvoiceNumber] UNIQUE ([InvoiceNumber]  ASC)
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [XPKSalesOrderVehicleManufacturerVehicle] PRIMARY KEY  CLUSTERED ([OrderVehicleId] ASC,[OrderId] ASC,[VehicleId] ASC,[ModelId] ASC,[MakeId] ASC,[TrimId] ASC,[CustomerId] ASC,[StaffId] ASC)
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [UK_LineItemNumber] UNIQUE ([LineItemNumber]  ASC)
go

ALTER TABLE [Manufacturer].[Region]
	ADD CONSTRAINT [XPKRegion] PRIMARY KEY  CLUSTERED ([RegionId] ASC)
go

ALTER TABLE [HumanResources].[Staff]
	ADD CONSTRAINT [XPKStaff] PRIMARY KEY  CLUSTERED ([StaffId] ASC)
go

ALTER TABLE [dbo].[sysdiagrams]
	ADD CONSTRAINT [PK__sysdiagr__C2B05B612F18C246] PRIMARY KEY  CLUSTERED ([diagramid] ASC)
go

ALTER TABLE [dbo].[sysdiagrams]
	ADD CONSTRAINT [UK_principal_name] UNIQUE ([Principal Id]  ASC,[Name]  ASC)
go

ALTER TABLE [Manufacturer].[Transmission]
	ADD CONSTRAINT [XPKTransmission] PRIMARY KEY  CLUSTERED ([TransmissionId] ASC,[VehicleMakeId] ASC)
go

ALTER TABLE [Manufacturer].[TransmissionType]
	ADD CONSTRAINT [XPKTransmissionType] PRIMARY KEY  CLUSTERED ([TransmissionTypeId] ASC)
go

ALTER TABLE [Manufacturer].[Trim]
	ADD CONSTRAINT [XPKTrim] PRIMARY KEY  CLUSTERED ([TrimId] ASC,[ModelId] ASC,[MakeId] ASC)
go

ALTER TABLE [DbSecurity].[UserAuthorization]
	ADD CONSTRAINT [XPKUserAuthorization] PRIMARY KEY  CLUSTERED ([UserAuthorizationId] ASC)
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [XPKManufacturerVehicle] PRIMARY KEY  CLUSTERED ([VehicleId] ASC,[ModelId] ASC,[MakeId] ASC,[TrimId] ASC)
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [PK_Stock] PRIMARY KEY  CLUSTERED ([StockId] ASC)
go

CREATE VIEW [Sales].[Sales2018]([SaleDate],[MakeName],[CustomerName],[CountryName],[SalePrice],[RepairsCost],[PartsCost],[TransportInCost],[MSRP])
AS
SELECT ALL [Sales].[Order].[Date],[Manufacturer].[Make].[VehicleMakeName],[Sales].[Customer].[CustomerName],[Manufacturer].[Country].[CountryName],[Sales].[OrderVehicle].[Price],[Manufacturer].[VehicleStock].[RepairsCharge],[Manufacturer].[VehicleStock].[PartsCharge],[Manufacturer].[VehicleStock].[DeliveryCharge],[Manufacturer].[Vehicle].[MSRP]
	FROM [Sales].[Order],[Sales].[OrderVehicle],[Manufacturer].[Vehicle],[Manufacturer].[Model],[Manufacturer].[Make],[Manufacturer].[Trim],[Sales].[Customer],[Manufacturer].[VehicleStock],[Manufacturer].[Country]
go

CREATE VIEW [Sales].[StockPrices]([MakeName],[ModelName],[RetailCost])
AS
SELECT ALL [Manufacturer].[Make].[VehicleMakeName],[Manufacturer].[Model].[ModelName],[Manufacturer].[Vehicle].[MSRP]
	FROM [Manufacturer].[Make],[Manufacturer].[Model],[Manufacturer].[Trim],[Manufacturer].[Vehicle]
go

CREATE VIEW [Sales].[SalesByCountry]([CountryName],[ModelName],[MakeName],[SalePrice],[RepairsCost],[PartsCost],[TransportInCost],[Color],[MSRP],[LineItemDiscount],[InvoiceNumber],[SaleDate],[CustomerName],[SalesDetailsID])
AS
SELECT [Manufacturer].[Country].[CountryName],[Manufacturer].[Model].[ModelName],[Manufacturer].[Make].[VehicleMakeName],[Sales].[OrderVehicle].[Price],[Manufacturer].[VehicleStock].[RepairsCharge],[Manufacturer].[VehicleStock].[PartsCharge],[Manufacturer].[VehicleStock].[DeliveryCharge],[Manufacturer].[Color].[ColorName],[Manufacturer].[Vehicle].[MSRP],[Sales].[OrderVehicle].[DerivedDiscountedPrice],[Sales].[Order].[InvoiceNumber],[Sales].[Order].[Date],[Sales].[Customer].[CustomerName],[Sales].[OrderVehicle].[OrderVehicleId]
	FROM [Manufacturer].[Country],[Manufacturer].[Make],[Manufacturer].[Model],[Manufacturer].[Vehicle],[Manufacturer].[VehicleStock],[Manufacturer].[Color],[Sales].[OrderVehicle],[Sales].[Order],[Sales].[Customer]
		GROUP BY Manufacturer.Country.CountryName
go

CREATE VIEW [Sales].[OrdersByCustomer]([CustomerName],[OrderId],[VinNumber],[CustomerId])
AS
SELECT [Sales].[Customer].[CustomerName],[Sales].[OrderVehicle].[OrderId],[Manufacturer].[Vehicle].[VinNumber],[Sales].[Customer].[CustomerId]
	FROM [Sales].[Order],[Sales].[OrderVehicle],[Manufacturer].[Vehicle],[Sales].[Customer]
		GROUP BY Sales.Customer.CustomerId
go

CREATE VIEW [VehiclesByCategory]([CategoryName],[ModelName],[MakeName],[TrimName],[VinNumber])
AS
SELECT [Manufacturer].[Category].[CategoryName],[Manufacturer].[Model].[ModelName],[Manufacturer].[Make].[VehicleMakeName],[Manufacturer].[Trim].[TrimName],[Manufacturer].[Vehicle].[VinNumber]
	FROM [Manufacturer].[Vehicle],[Manufacturer].[Trim],[Manufacturer].[Make],[Manufacturer].[Model],[Manufacturer].[Category]
go

CREATE VIEW [VehiclesByEngineCylinderCount]([VehicleId],[EngineCylinderCount])
AS
SELECT [Manufacturer].[Vehicle].[VehicleId],[Manufacturer].[Engine].[EngineCylinderCount]
	FROM [Manufacturer].[Engine],[Manufacturer].[Vehicle]
		GROUP BY Manufacturer.Engine.EngineCylinderCount
go


ALTER TABLE [Manufacturer].[Category]
	ADD CONSTRAINT [CK_Multiple_IDNumber_1383560189]
		CHECK  ( CategoryId BETWEEN 0 AND 99999 ) 
go

ALTER TABLE [Manufacturer].[Category]
	ADD CONSTRAINT [DF_Category_CategoryName_1302147728]
		 DEFAULT  'DefaultCategory' FOR [CategoryName]
go

ALTER TABLE [Manufacturer].[Category]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1367110653]
		 DEFAULT  1 FOR [CategoryId]
go

ALTER TABLE [Manufacturer].[Category]
	ADD CONSTRAINT [DF_Category_UpperTreshold_2133545252]
		 DEFAULT  999999.99 FOR [UpperThreshold]
go

ALTER TABLE [Manufacturer].[Category]
	ADD CONSTRAINT [DF_Category_LowerThreshold_1044523794]
		 DEFAULT  999.99 FOR [LowerThreshold]
go

ALTER TABLE [Manufacturer].[Color]
	ADD CONSTRAINT [DF_Multiple_IDNumber_99291710]
		 DEFAULT  1 FOR [ColorId]
go

ALTER TABLE [Manufacturer].[Color]
	ADD CONSTRAINT [DF_Multiple_Name_1564591867]
		 DEFAULT  'DefaultName' FOR [ColorName]
go

ALTER TABLE [Manufacturer].[Country]
	ADD CONSTRAINT [DF_Multiple_IDNumber_2056688520]
		 DEFAULT  1 FOR [CountryId]
go

ALTER TABLE [Manufacturer].[Country]
	ADD CONSTRAINT [DF_Multiple_Name_604548529]
		 DEFAULT  'DefaultName' FOR [CountryName]
go

ALTER TABLE [Manufacturer].[Country]
	ADD CONSTRAINT [DF_Multiple_IDNumber_290553786]
		 DEFAULT  1 FOR [RegionId]
go


ALTER TABLE [Manufacturer].[Country]
	ADD CONSTRAINT [FK_Country_Region] FOREIGN KEY ([RegionId]) REFERENCES [Manufacturer].[Region]([RegionId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [CK_Multiple_IDNumber_1852269529]
		CHECK  ( CustomerId BETWEEN 0 AND 99999 ) 
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [CK_Customer_PostalCode_2029823254]
		CHECK  ( CustomerPostalCode BETWEEN 501 AND 99950 ) 
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1835819993]
		 DEFAULT  1 FOR [CustomerId]
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [DF_Multiple_Name_749192622]
		 DEFAULT  'DefaultName' FOR [CustomerName]
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [DF_Customer_Address_170224474]
		 DEFAULT  '450 W 33rd St' FOR [CustomerAddress1]
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [DF_Customer_Town_902031036]
		 DEFAULT  'New York' FOR [CustomerTown]
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [DF_Customer_PostalCode_2029823505]
		 DEFAULT  '10001' FOR [CustomerPostalCode]
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1517450292]
		 DEFAULT  1 FOR [CountryId]
go


ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [FK_Customer_Country] FOREIGN KEY ([CountryId]) REFERENCES [Manufacturer].[Country]([CountryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[DriveTrain]
	ADD CONSTRAINT [DF_Multiple_IDNumber_808245906]
		 DEFAULT  1 FOR [DriveTrainId]
go


ALTER TABLE [Manufacturer].[Engine]
	ADD CONSTRAINT [CK_Engine_Cylinder_35025744]
		CHECK  ( EngineCylinderCount >= 0 ) 
go

ALTER TABLE [Manufacturer].[Engine]
	ADD CONSTRAINT [CK_Engine_MaxSpecification_1308080612]
		CHECK  ( EngineMaxHorsepower >= 0 ) 
go

ALTER TABLE [Manufacturer].[Engine]
	ADD CONSTRAINT [CK_Engine_MaxSpecification_1753929379]
		CHECK  ( EngineMaxTorque >= 0 ) 
go

ALTER TABLE [Manufacturer].[Engine]
	ADD CONSTRAINT [DF_Multiple_IDNumber_66891362]
		 DEFAULT  1 FOR [EngineId]
go

ALTER TABLE [Manufacturer].[Engine]
	ADD CONSTRAINT [DF_Multiple_IDNumber_2018721564]
		 DEFAULT  1 FOR [VehicleMakeId]
go


ALTER TABLE [Manufacturer].[Engine]
	ADD CONSTRAINT [FK_Engine_Make] FOREIGN KEY ([VehicleMakeId]) REFERENCES [Manufacturer].[Make]([VehicleMakeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[Feature]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1952739730]
		 DEFAULT  1 FOR [FeatureId]
go

ALTER TABLE [Manufacturer].[Feature]
	ADD CONSTRAINT [DF_Multiple_Name_34776959]
		 DEFAULT  'DefaultName' FOR [FeatureName]
go

ALTER TABLE [Manufacturer].[FeatureVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_939936117]
		 DEFAULT  1 FOR [Feature Id]
go

ALTER TABLE [Manufacturer].[FeatureVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_517913269]
		 DEFAULT  1 FOR [VehicleId]
go

ALTER TABLE [Manufacturer].[FeatureVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1370720345]
		 DEFAULT  1 FOR [Feature Vehicle Id]
go

ALTER TABLE [Manufacturer].[FeatureVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_673662206]
		 DEFAULT  1 FOR [TrimId]
go

ALTER TABLE [Manufacturer].[FeatureVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_340798381]
		 DEFAULT  1 FOR [ModelId]
go

ALTER TABLE [Manufacturer].[FeatureVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_640633871]
		 DEFAULT  1 FOR [MakeId]
go


ALTER TABLE [Manufacturer].[FeatureVehicle]
	ADD CONSTRAINT [FK_FeatureVehicle_Feature] FOREIGN KEY ([Feature Id]) REFERENCES [Manufacturer].[Feature]([FeatureId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[FeatureVehicle]
	ADD CONSTRAINT [FK_FeatureVehicle_Vehicle] FOREIGN KEY ([VehicleId],[ModelId],[MakeId],[TrimId]) REFERENCES [Manufacturer].[Vehicle]([VehicleId],[ModelId],[MakeId],[TrimId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[FuelType]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1939248065]
		 DEFAULT  1 FOR [FuelTypeId]
go

ALTER TABLE [Manufacturer].[Make]
	ADD CONSTRAINT [DF_Multiple_IDNumber_2137281226]
		 DEFAULT  1 FOR [VehicleMakeId]
go

ALTER TABLE [Manufacturer].[Make]
	ADD CONSTRAINT [DF_Multiple_Name_481643906]
		 DEFAULT  'DefaultName' FOR [VehicleMakeName]
go

ALTER TABLE [Manufacturer].[Model]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1111509]
		 DEFAULT  1 FOR [ModelId]
go

ALTER TABLE [Manufacturer].[Model]
	ADD CONSTRAINT [DF_Multiple_Name_1699990775]
		 DEFAULT  'DefaultName' FOR [ModelName]
go

ALTER TABLE [Manufacturer].[Model]
	ADD CONSTRAINT [DF_Multiple_Name_2025184787]
		 DEFAULT  'DefaultName' FOR [BodyName]
go

ALTER TABLE [Manufacturer].[Model]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1310395609]
		 DEFAULT  1 FOR [MakeId]
go

ALTER TABLE [Manufacturer].[Model]
	ADD CONSTRAINT [DF_Multiple_IDNumber_761155735]
		 DEFAULT  1 FOR [CategoryId]
go


ALTER TABLE [Manufacturer].[Model]
	ADD CONSTRAINT [FK_Model_Make] FOREIGN KEY ([MakeId]) REFERENCES [Manufacturer].[Make]([VehicleMakeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[Model]
	ADD CONSTRAINT [FK_Model_Category] FOREIGN KEY ([CategoryId]) REFERENCES [Manufacturer].[Category]([CategoryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [CK_Multiple_Price_590938923]
		CHECK  ( TotalPrice >= 0 ) 
go

ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [CK_Multiple_Date_608929698]
		CHECK  ( Date <= 'CONVERT([date],sysdatetime' ) 
go

ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [DF_Multiple_IDNumber_133827884]
		 DEFAULT  1 FOR [OrderId]
go

ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [DF_Order_InvoiceNumber_385032984]
		 DEFAULT  1 FOR [InvoiceNumber]
go

ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [DF_Multiple_Price_507052844]
		 DEFAULT  999.99 FOR [TotalPrice]
go

ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [DF_Multiple_Date_625379234]
		 DEFAULT  '12319999' FOR [Date]
go

ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [DF_Multiple_IDNumber_527326121]
		 DEFAULT  1 FOR [CustomerId]
go

ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [DF_Multiple_IDNumber_150081321]
		 DEFAULT  1 FOR [StaffId]
go


ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [FK_Order_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Sales].[Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[Order]
	ADD CONSTRAINT [FK_Order_Staff] FOREIGN KEY ([StaffId]) REFERENCES [HumanResources].[Staff]([StaffId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [CK_OrderVehicle_DiscountPercentage_1932664740]
		CHECK  ( Discount BETWEEN 0 AND 100 ) 
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_2041763068]
		 DEFAULT  1 FOR [OrderId]
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_557198522]
		 DEFAULT  1 FOR [VehicleId]
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_2041238012]
		 DEFAULT  1 FOR [ModelId]
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_2107724049]
		 DEFAULT  1 FOR [MakeId]
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_2140752384]
		 DEFAULT  1 FOR [TrimId]
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_270527376]
		 DEFAULT  1 FOR [CustomerId]
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1294765242]
		 DEFAULT  1 FOR [OrderVehicleId]
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [DF_OrderVehicle_LineItemNumber_1219572138]
		 DEFAULT  1 FOR [LineItemNumber]
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [DF_OrderVehicle_Discount_57052269]
		 DEFAULT  0 FOR [Discount]
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_2058016505]
		 DEFAULT  1 FOR [StaffId]
go


ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [FK_OrderVehicle_Order] FOREIGN KEY ([OrderId],[CustomerId],[StaffId]) REFERENCES [Sales].[Order]([OrderId],[CustomerId],[StaffId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[OrderVehicle]
	ADD CONSTRAINT [FK_OrderVehicle_Vehicle] FOREIGN KEY ([VehicleId],[ModelId],[MakeId],[TrimId]) REFERENCES [Manufacturer].[Vehicle]([VehicleId],[ModelId],[MakeId],[TrimId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[Region]
	ADD CONSTRAINT [DF_Multiple_IDNumber_167993247]
		 DEFAULT  1 FOR [RegionId]
go

ALTER TABLE [HumanResources].[Staff]
	ADD CONSTRAINT [DF_Multiple_IDNumber_15993898]
		 DEFAULT  1 FOR [StaffId]
go

ALTER TABLE [HumanResources].[Staff]
	ADD CONSTRAINT [DF_Multiple_Name_1666567154]
		 DEFAULT  'DefaultName' FOR [StaffName]
go

ALTER TABLE [HumanResources].[Staff]
	ADD CONSTRAINT [DF_Multiple_Name_1123991510]
		 DEFAULT  'DefaultName' FOR [Department]
go

ALTER TABLE [HumanResources].[Staff]
	ADD CONSTRAINT [DF_Multiple_IDNumber_151867787]
		 DEFAULT  1 FOR [ManagerId]
go


ALTER TABLE [HumanResources].[Staff]
	ADD CONSTRAINT [FK_Staff_Staff] FOREIGN KEY ([StaffId]) REFERENCES [HumanResources].[Staff]([StaffId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Manufacturer].[Transmission]
	ADD CONSTRAINT [CK_Transmission_TransmissionGearCount_456678672]
		CHECK  ( "Transmission GearCount" >= 0 ) 
go

ALTER TABLE [Manufacturer].[Transmission]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1432792308]
		 DEFAULT  1 FOR [TransmissionId]
go

ALTER TABLE [Manufacturer].[Transmission]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1731411384]
		 DEFAULT  1 FOR [VehicleMakeId]
go


ALTER TABLE [Manufacturer].[Transmission]
	ADD CONSTRAINT [FK_Transmission_TransmissionType] FOREIGN KEY ([TransmissionTypeId]) REFERENCES [Manufacturer].[TransmissionType]([TransmissionTypeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[Transmission]
	ADD CONSTRAINT [FK_Transmission_Make] FOREIGN KEY ([VehicleMakeId]) REFERENCES [Manufacturer].[Make]([VehicleMakeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[TransmissionType]
	ADD CONSTRAINT [DF_Multiple_IDNumber_909202919]
		 DEFAULT  1 FOR [TransmissionTypeId]
go

ALTER TABLE [Manufacturer].[Trim]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1281302714]
		 DEFAULT  1 FOR [TrimId]
go

ALTER TABLE [Manufacturer].[Trim]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1277945809]
		 DEFAULT  1 FOR [ModelId]
go

ALTER TABLE [Manufacturer].[Trim]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1248274379]
		 DEFAULT  1 FOR [MakeId]
go


ALTER TABLE [Manufacturer].[Trim]
	ADD CONSTRAINT [FK_Trim_Model] FOREIGN KEY ([ModelId],[MakeId]) REFERENCES [Manufacturer].[Model]([ModelId],[MakeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [CK_Multiple_Price_1547266155]
		CHECK  ( MSRP >= 0 ) 
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1818586501]
		 DEFAULT  1 FOR [VehicleId]
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_334061464]
		 DEFAULT  1 FOR [ModelId]
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_502852989]
		 DEFAULT  1 FOR [MakeId]
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_674579738]
		 DEFAULT  1 FOR [VehicleMakeId]
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_28086376]
		 DEFAULT  1 FOR [EngineId]
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1572135943]
		 DEFAULT  1 FOR [DriveTrainId]
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_2006631670]
		 DEFAULT  1 FOR [FuelTypeId]
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_320611484]
		 DEFAULT  1 FOR [TransmissionId]
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_501571488]
		 DEFAULT  1 FOR [ColorId]
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [DF_Multiple_IDNumber_469824654]
		 DEFAULT  1 FOR [TrimId]
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [DF_Multiple_Price_1631152234]
		 DEFAULT  999.99 FOR [MSRP]
go


ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [FK_Vehicle_Country] FOREIGN KEY ([ManufacturerCountryId]) REFERENCES [Manufacturer].[Country]([CountryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [FK_Vehicle_Engine] FOREIGN KEY ([EngineId],[VehicleMakeId]) REFERENCES [Manufacturer].[Engine]([EngineId],[VehicleMakeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [FK_Vehicle_DriveTrain] FOREIGN KEY ([DriveTrainId]) REFERENCES [Manufacturer].[DriveTrain]([DriveTrainId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [FK_Vehicle_FuelType] FOREIGN KEY ([FuelTypeId]) REFERENCES [Manufacturer].[FuelType]([FuelTypeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [FK_Vehicle_Transmission] FOREIGN KEY ([TransmissionId],[VehicleMakeId]) REFERENCES [Manufacturer].[Transmission]([TransmissionId],[VehicleMakeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [FK_Vehicle_Color] FOREIGN KEY ([ColorId]) REFERENCES [Manufacturer].[Color]([ColorId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Manufacturer].[Vehicle]
	ADD CONSTRAINT [FK_Vehicle_Trim] FOREIGN KEY ([TrimId],[ModelId],[MakeId]) REFERENCES [Manufacturer].[Trim]([TrimId],[ModelId],[MakeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [CK_Multiple_Price_500642137]
		CHECK  ( RepairsCharge >= 0 ) 
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [CK_Multiple_Price_84940068]
		CHECK  ( PartsCharge >= 0 ) 
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [CK_Multiple_Price_339104592]
		CHECK  ( DeliveryCharge >= 0 ) 
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [CK_Multiple_Date_1728104239]
		CHECK  ( PurchaseDate <= 'CONVERT([date],sysdatetime' ) 
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1823665154]
		 DEFAULT  1 FOR [StockId]
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [DF_Multiple_IDNumber_640295601]
		 DEFAULT  1 FOR [StockCode]
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [DF_Multiple_Price_1111955025]
		 DEFAULT  999.99 FOR [Cost]
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [DF_VehicleStock_Fee_1162241057]
		 DEFAULT  999.99 FOR [RepairsCharge]
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [DF_VehicleStock_Fee_20299463]
		 DEFAULT  999.99 FOR [PartsCharge]
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [DF_VehicleStock_Fee_1732074112]
		 DEFAULT  999.99 FOR [DeliveryCharge]
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [DF_Multiple_Date_1711654703]
		 DEFAULT  '12319999' FOR [PurchaseDate]
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [DF_Multiple_IDNumber_205207479]
		 DEFAULT  1 FOR [VehicleId]
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [DF_Multiple_IDNumber_1856890615]
		 DEFAULT  1 FOR [ModelId]
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [DF_Multiple_IDNumber_2102637060]
		 DEFAULT  1 FOR [MakeId]
go

ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [DF_Multiple_IDNumber_2069608725]
		 DEFAULT  1 FOR [TrimId]
go


ALTER TABLE [Manufacturer].[VehicleStock]
	ADD CONSTRAINT [FK_VehicleStock_Vehicle] FOREIGN KEY ([VehicleId],[ModelId],[MakeId],[TrimId]) REFERENCES [Manufacturer].[Vehicle]([VehicleId],[ModelId],[MakeId],[TrimId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

CREATE TRIGGER Manufacturer.tD_Country ON Manufacturer.Country FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Country */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Country  Sales.Customer on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003ea0e", PARENT_OWNER="Manufacturer", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.CountryId = deleted.CountryId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Country because Sales.Customer exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Country  Manufacturer.Vehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Country"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Country", FK_COLUMNS="ManufacturerCountryId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.ManufacturerCountryId = deleted.CountryId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Country because Manufacturer.Vehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Region  Manufacturer.Country on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Region"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Country"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Country_Region", FK_COLUMNS="RegionId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Region
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Region," = "," AND") */
        deleted.RegionId = Manufacturer.Region.RegionId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Country
          WHERE
            /* %JoinFKPK(Manufacturer.Country,Manufacturer.Region," = "," AND") */
            Manufacturer.Country.RegionId = Manufacturer.Region.RegionId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Country because Manufacturer.Region exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_Country ON Manufacturer.Country FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Country */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCountryId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Country  Sales.Customer on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00040cbb", PARENT_OWNER="Manufacturer", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CountryId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.CountryId = deleted.CountryId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Country because Sales.Customer exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Country  Manufacturer.Vehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Country"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Country", FK_COLUMNS="ManufacturerCountryId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CountryId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.ManufacturerCountryId = deleted.CountryId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Country because Manufacturer.Vehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Region  Manufacturer.Country on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Region"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Country"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Country_Region", FK_COLUMNS="RegionId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(RegionId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Region
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Region) */
          inserted.RegionId = Manufacturer.Region.RegionId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Country because Manufacturer.Region does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_Customer ON Sales.Customer FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Customer */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Customer  Sales.Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000294d0", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Order
      WHERE
        /*  %JoinFKPK(Sales.Order,deleted," = "," AND") */
        Sales.Order.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Customer because Sales.Order exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Country  Sales.Customer on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Country
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Country," = "," AND") */
        deleted.CountryId = Manufacturer.Country.CountryId AND
        NOT EXISTS (
          SELECT * FROM Sales.Customer
          WHERE
            /* %JoinFKPK(Sales.Customer,Manufacturer.Country," = "," AND") */
            Sales.Customer.CountryId = Manufacturer.Country.CountryId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Customer because Manufacturer.Country exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_Customer ON Sales.Customer FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Customer */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Customer  Sales.Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002dae5", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Order
      WHERE
        /*  %JoinFKPK(Sales.Order,deleted," = "," AND") */
        Sales.Order.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Customer because Sales.Order exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Country  Sales.Customer on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CountryId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Country
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Country) */
          inserted.CountryId = Manufacturer.Country.CountryId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.CountryId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Customer because Manufacturer.Country does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.[uTidu_AuditCustomerHistory] ON Sales.Customer
    AFTER DELETE,UPDATE 
  
  AS
/* erwin Builtin Trigger */
/* DELETE,UPDATE trigger on Customer */
/* default body for [uTidu_AuditCustomerHistory] */
BEGIN
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
END

go



CREATE TRIGGER Manufacturer.tD_ManufacturerModel ON Manufacturer.Model FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Model */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Model  Manufacturer.Trim on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00042b67", PARENT_OWNER="Manufacturer", PARENT_TABLE="Model"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Trim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Trim_Model", FK_COLUMNS="ModelId""MakeId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Trim
      WHERE
        /*  %JoinFKPK(Manufacturer.Trim,deleted," = "," AND") */
        Manufacturer.Trim.ModelId = deleted.ModelId AND
        Manufacturer.Trim.MakeId = deleted.MakeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Model because Manufacturer.Trim exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Category  Manufacturer.Model on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Category"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Model"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Model_Category", FK_COLUMNS="CategoryId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Category
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Category," = "," AND") */
        deleted.CategoryId = Manufacturer.Category.CategoryId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Model
          WHERE
            /* %JoinFKPK(Manufacturer.Model,Manufacturer.Category," = "," AND") */
            Manufacturer.Model.CategoryId = Manufacturer.Category.CategoryId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Model because Manufacturer.Category exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Make  Manufacturer.Model on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Model"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Model_Make", FK_COLUMNS="MakeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Make
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Make," = "," AND") */
        deleted.MakeId = Manufacturer.Make.VehicleMakeId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Model
          WHERE
            /* %JoinFKPK(Manufacturer.Model,Manufacturer.Make," = "," AND") */
            Manufacturer.Model.MakeId = Manufacturer.Make.VehicleMakeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Model because Manufacturer.Make exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_ManufacturerModel ON Manufacturer.Model FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Model */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insModelId dNumber.sdIdNumber, 
           @insMakeId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Model  Manufacturer.Trim on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00045910", PARENT_OWNER="Manufacturer", PARENT_TABLE="Model"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Trim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Trim_Model", FK_COLUMNS="ModelId""MakeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ModelId) OR
    UPDATE(MakeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Trim
      WHERE
        /*  %JoinFKPK(Manufacturer.Trim,deleted," = "," AND") */
        Manufacturer.Trim.ModelId = deleted.ModelId AND
        Manufacturer.Trim.MakeId = deleted.MakeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Model because Manufacturer.Trim exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Category  Manufacturer.Model on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Category"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Model"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Model_Category", FK_COLUMNS="CategoryId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CategoryId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Category
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Category) */
          inserted.CategoryId = Manufacturer.Category.CategoryId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Model because Manufacturer.Category does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Make  Manufacturer.Model on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Model"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Model_Make", FK_COLUMNS="MakeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(MakeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Make
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Make) */
          inserted.MakeId = Manufacturer.Make.VehicleMakeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Model because Manufacturer.Make does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.[uTidu_AuditModelHistory] ON Manufacturer.Model
    AFTER DELETE,UPDATE 
  
  AS
/* erwin Builtin Trigger */
/* DELETE,UPDATE trigger on Model */
/* default body for [uTidu_AuditModelHistory] */
BEGIN
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
END

go



CREATE TRIGGER Manufacturer.tD_ManufacturerVehicleMake ON Manufacturer.Make FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Make */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Make  Manufacturer.Transmission on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003885a", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Transmission"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Transmission_Make", FK_COLUMNS="VehicleMakeId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Transmission
      WHERE
        /*  %JoinFKPK(Manufacturer.Transmission,deleted," = "," AND") */
        Manufacturer.Transmission.VehicleMakeId = deleted.VehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Make because Manufacturer.Transmission exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Make  Manufacturer.Engine on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Engine"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Engine_Make", FK_COLUMNS="VehicleMakeId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Engine
      WHERE
        /*  %JoinFKPK(Manufacturer.Engine,deleted," = "," AND") */
        Manufacturer.Engine.VehicleMakeId = deleted.VehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Make because Manufacturer.Engine exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Make  Manufacturer.Model on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Model"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Model_Make", FK_COLUMNS="MakeId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Model
      WHERE
        /*  %JoinFKPK(Manufacturer.Model,deleted," = "," AND") */
        Manufacturer.Model.MakeId = deleted.VehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Make because Manufacturer.Model exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_ManufacturerVehicleMake ON Manufacturer.Make FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Make */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insVehicleMakeId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Make  Manufacturer.Transmission on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003c993", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Transmission"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Transmission_Make", FK_COLUMNS="VehicleMakeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(VehicleMakeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Transmission
      WHERE
        /*  %JoinFKPK(Manufacturer.Transmission,deleted," = "," AND") */
        Manufacturer.Transmission.VehicleMakeId = deleted.VehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Make because Manufacturer.Transmission exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Make  Manufacturer.Engine on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Engine"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Engine_Make", FK_COLUMNS="VehicleMakeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(VehicleMakeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Engine
      WHERE
        /*  %JoinFKPK(Manufacturer.Engine,deleted," = "," AND") */
        Manufacturer.Engine.VehicleMakeId = deleted.VehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Make because Manufacturer.Engine exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Make  Manufacturer.Model on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Model"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Model_Make", FK_COLUMNS="MakeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(VehicleMakeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Model
      WHERE
        /*  %JoinFKPK(Manufacturer.Model,deleted," = "," AND") */
        Manufacturer.Model.MakeId = deleted.VehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Make because Manufacturer.Model exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.[uTidu_AuditMakeHistory] ON Manufacturer.Make
    AFTER DELETE,UPDATE 
  
  AS
/* erwin Builtin Trigger */
/* DELETE,UPDATE trigger on Make */
/* default body for [uTidu_AuditMakeHistory] */
BEGIN
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
END

go



CREATE TRIGGER Manufacturer.tD_ManufacturerVehicleStock ON Manufacturer.VehicleStock FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on VehicleStock */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Vehicle  Manufacturer.VehicleStock on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="000256a0", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="VehicleStock"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_VehicleStock_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Vehicle," = "," AND") */
        deleted.VehicleId = Manufacturer.Vehicle.VehicleId AND
        deleted.ModelId = Manufacturer.Vehicle.ModelId AND
        deleted.MakeId = Manufacturer.Vehicle.MakeId AND
        deleted.TrimId = Manufacturer.Vehicle.TrimId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.VehicleStock
          WHERE
            /* %JoinFKPK(Manufacturer.VehicleStock,Manufacturer.Vehicle," = "," AND") */
            Manufacturer.VehicleStock.VehicleId = Manufacturer.Vehicle.VehicleId AND
            Manufacturer.VehicleStock.ModelId = Manufacturer.Vehicle.ModelId AND
            Manufacturer.VehicleStock.MakeId = Manufacturer.Vehicle.MakeId AND
            Manufacturer.VehicleStock.TrimId = Manufacturer.Vehicle.TrimId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.VehicleStock because Manufacturer.Vehicle exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_ManufacturerVehicleStock ON Manufacturer.VehicleStock FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on VehicleStock */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insStockId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Vehicle  Manufacturer.VehicleStock on child update no action */
  /* ERWIN_RELATION:CHECKSUM="000240f2", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="VehicleStock"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_VehicleStock_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(VehicleId) OR
    UPDATE(ModelId) OR
    UPDATE(MakeId) OR
    UPDATE(TrimId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Vehicle
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Vehicle) */
          inserted.VehicleId = Manufacturer.Vehicle.VehicleId and
          inserted.ModelId = Manufacturer.Vehicle.ModelId and
          inserted.MakeId = Manufacturer.Vehicle.MakeId and
          inserted.TrimId = Manufacturer.Vehicle.TrimId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.VehicleId IS NULL AND
      inserted.ModelId IS NULL AND
      inserted.MakeId IS NULL AND
      inserted.TrimId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.VehicleStock because Manufacturer.Vehicle does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tD_MarketingCategory ON Manufacturer.Category FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Category */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Category  Manufacturer.Model on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00013be2", PARENT_OWNER="Manufacturer", PARENT_TABLE="Category"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Model"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Model_Category", FK_COLUMNS="CategoryId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Model
      WHERE
        /*  %JoinFKPK(Manufacturer.Model,deleted," = "," AND") */
        Manufacturer.Model.CategoryId = deleted.CategoryId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Category because Manufacturer.Model exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_MarketingCategory ON Manufacturer.Category FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Category */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCategoryId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Category  Manufacturer.Model on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000159bf", PARENT_OWNER="Manufacturer", PARENT_TABLE="Category"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Model"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Model_Category", FK_COLUMNS="CategoryId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CategoryId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Model
      WHERE
        /*  %JoinFKPK(Manufacturer.Model,deleted," = "," AND") */
        Manufacturer.Model.CategoryId = deleted.CategoryId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Category because Manufacturer.Model exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_SalesOrderVehicle ON Sales.Order FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Order */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Order  Sales.OrderVehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00040221", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderVehicle_Order", FK_COLUMNS="OrderId""CustomerId""StaffId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.OrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.OrderVehicle,deleted," = "," AND") */
        Sales.OrderVehicle.OrderId = deleted.OrderId AND
        Sales.OrderVehicle.CustomerId = deleted.CustomerId AND
        Sales.OrderVehicle.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Order because Sales.OrderVehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Staff  Sales.Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Staff", FK_COLUMNS="StaffId" */
    IF EXISTS (SELECT * FROM deleted,HumanResources.Staff
      WHERE
        /* %JoinFKPK(deleted,HumanResources.Staff," = "," AND") */
        deleted.StaffId = HumanResources.Staff.StaffId AND
        NOT EXISTS (
          SELECT * FROM Sales.Order
          WHERE
            /* %JoinFKPK(Sales.Order,HumanResources.Staff," = "," AND") */
            Sales.Order.StaffId = HumanResources.Staff.StaffId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Order because HumanResources.Staff exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Customer  Sales.Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Sales.Customer
      WHERE
        /* %JoinFKPK(deleted,Sales.Customer," = "," AND") */
        deleted.CustomerId = Sales.Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM Sales.Order
          WHERE
            /* %JoinFKPK(Sales.Order,Sales.Customer," = "," AND") */
            Sales.Order.CustomerId = Sales.Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Order because Sales.Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_SalesOrderVehicle ON Sales.Order FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Order */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insOrderId dNumber.sdIdNumber, 
           @insCustomerId dNumber.sdIdNumber, 
           @insStaffId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Order  Sales.OrderVehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00047454", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderVehicle_Order", FK_COLUMNS="OrderId""CustomerId""StaffId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(OrderId) OR
    UPDATE(CustomerId) OR
    UPDATE(StaffId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.OrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.OrderVehicle,deleted," = "," AND") */
        Sales.OrderVehicle.OrderId = deleted.OrderId AND
        Sales.OrderVehicle.CustomerId = deleted.CustomerId AND
        Sales.OrderVehicle.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Order because Sales.OrderVehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Staff  Sales.Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Staff", FK_COLUMNS="StaffId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(StaffId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,HumanResources.Staff
        WHERE
          /* %JoinFKPK(inserted,HumanResources.Staff) */
          inserted.StaffId = HumanResources.Staff.StaffId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Order because HumanResources.Staff does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Customer  Sales.Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Customer", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.Customer
        WHERE
          /* %JoinFKPK(inserted,Sales.Customer) */
          inserted.CustomerId = Sales.Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Order because Sales.Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.[uTidu_AuditOrderHistory] ON Sales.Order
    AFTER DELETE,UPDATE 
  
  AS
/* erwin Builtin Trigger */
/* DELETE,UPDATE trigger on Order */
/* default body for [uTidu_AuditOrderHistory] */
BEGIN
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
END

go



CREATE TRIGGER HumanResources.tD_Staff ON HumanResources.Staff FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Staff */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* HumanResources.Staff  HumanResources.Staff on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003a48d", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Staff_Staff", FK_COLUMNS="StaffId" */
    IF EXISTS (
      SELECT * FROM deleted,HumanResources.Staff
      WHERE
        /*  %JoinFKPK(HumanResources.Staff,deleted," = "," AND") */
        HumanResources.Staff.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete HumanResources.Staff because HumanResources.Staff exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Staff  Sales.Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Staff", FK_COLUMNS="StaffId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Order
      WHERE
        /*  %JoinFKPK(Sales.Order,deleted," = "," AND") */
        Sales.Order.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete HumanResources.Staff because Sales.Order exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Staff  HumanResources.Staff on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Staff_Staff", FK_COLUMNS="StaffId" */
    IF EXISTS (SELECT * FROM deleted,HumanResources.Staff
      WHERE
        /* %JoinFKPK(deleted,HumanResources.Staff," = "," AND") */
        deleted.StaffId = HumanResources.Staff.StaffId AND
        NOT EXISTS (
          SELECT * FROM HumanResources.Staff
          WHERE
            /* %JoinFKPK(HumanResources.Staff,HumanResources.Staff," = "," AND") */
            HumanResources.Staff.StaffId = HumanResources.Staff.StaffId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last HumanResources.Staff because HumanResources.Staff exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER HumanResources.tU_Staff ON HumanResources.Staff FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Staff */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insStaffId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* HumanResources.Staff  HumanResources.Staff on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00040c47", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Staff_Staff", FK_COLUMNS="StaffId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(StaffId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,HumanResources.Staff
      WHERE
        /*  %JoinFKPK(HumanResources.Staff,deleted," = "," AND") */
        HumanResources.Staff.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update HumanResources.Staff because HumanResources.Staff exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Staff  Sales.Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Order_Staff", FK_COLUMNS="StaffId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(StaffId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Order
      WHERE
        /*  %JoinFKPK(Sales.Order,deleted," = "," AND") */
        Sales.Order.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update HumanResources.Staff because Sales.Order exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Staff  HumanResources.Staff on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Staff_Staff", FK_COLUMNS="StaffId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(StaffId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,HumanResources.Staff
        WHERE
          /* %JoinFKPK(inserted,HumanResources.Staff) */
          inserted.StaffId = HumanResources.Staff.StaffId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.StaffId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update HumanResources.Staff because HumanResources.Staff does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER HumanResources.[uTidu_AuditStaffHistory] ON HumanResources.Staff
    AFTER DELETE,UPDATE 
  
  AS
/* erwin Builtin Trigger */
/* DELETE,UPDATE trigger on Staff */
/* default body for [uTidu_AuditStaffHistory] */
BEGIN
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
END

go



CREATE TRIGGER Manufacturer.tD_ManufacturerVehicle ON Manufacturer.Vehicle FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Vehicle */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Vehicle  Manufacturer.VehicleStock on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00100911", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="VehicleStock"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_VehicleStock_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.VehicleStock
      WHERE
        /*  %JoinFKPK(Manufacturer.VehicleStock,deleted," = "," AND") */
        Manufacturer.VehicleStock.VehicleId = deleted.VehicleId AND
        Manufacturer.VehicleStock.ModelId = deleted.ModelId AND
        Manufacturer.VehicleStock.MakeId = deleted.MakeId AND
        Manufacturer.VehicleStock.TrimId = deleted.TrimId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Vehicle because Manufacturer.VehicleStock exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Vehicle  Sales.OrderVehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderVehicle_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.OrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.OrderVehicle,deleted," = "," AND") */
        Sales.OrderVehicle.VehicleId = deleted.VehicleId AND
        Sales.OrderVehicle.ModelId = deleted.ModelId AND
        Sales.OrderVehicle.MakeId = deleted.MakeId AND
        Sales.OrderVehicle.TrimId = deleted.TrimId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Vehicle because Sales.OrderVehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Vehicle  Manufacturer.FeatureVehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="FeatureVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_FeatureVehicle_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.FeatureVehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.FeatureVehicle,deleted," = "," AND") */
        Manufacturer.FeatureVehicle.VehicleId = deleted.VehicleId AND
        Manufacturer.FeatureVehicle.ModelId = deleted.ModelId AND
        Manufacturer.FeatureVehicle.MakeId = deleted.MakeId AND
        Manufacturer.FeatureVehicle.TrimId = deleted.TrimId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Vehicle because Manufacturer.FeatureVehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Trim  Manufacturer.Vehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Trim"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Trim", FK_COLUMNS="TrimId""ModelId""MakeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Trim
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Trim," = "," AND") */
        deleted.TrimId = Manufacturer.Trim.TrimId AND
        deleted.ModelId = Manufacturer.Trim.ModelId AND
        deleted.MakeId = Manufacturer.Trim.MakeId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Vehicle
          WHERE
            /* %JoinFKPK(Manufacturer.Vehicle,Manufacturer.Trim," = "," AND") */
            Manufacturer.Vehicle.TrimId = Manufacturer.Trim.TrimId AND
            Manufacturer.Vehicle.ModelId = Manufacturer.Trim.ModelId AND
            Manufacturer.Vehicle.MakeId = Manufacturer.Trim.MakeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Vehicle because Manufacturer.Trim exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Color  Manufacturer.Vehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Color"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Color", FK_COLUMNS="ColorId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Color
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Color," = "," AND") */
        deleted.ColorId = Manufacturer.Color.ColorId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Vehicle
          WHERE
            /* %JoinFKPK(Manufacturer.Vehicle,Manufacturer.Color," = "," AND") */
            Manufacturer.Vehicle.ColorId = Manufacturer.Color.ColorId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Vehicle because Manufacturer.Color exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Transmission  Manufacturer.Vehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Transmission"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Transmission", FK_COLUMNS="TransmissionId""VehicleMakeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Transmission
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Transmission," = "," AND") */
        deleted.TransmissionId = Manufacturer.Transmission.TransmissionId AND
        deleted.VehicleMakeId = Manufacturer.Transmission.VehicleMakeId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Vehicle
          WHERE
            /* %JoinFKPK(Manufacturer.Vehicle,Manufacturer.Transmission," = "," AND") */
            Manufacturer.Vehicle.TransmissionId = Manufacturer.Transmission.TransmissionId AND
            Manufacturer.Vehicle.VehicleMakeId = Manufacturer.Transmission.VehicleMakeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Vehicle because Manufacturer.Transmission exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.FuelType  Manufacturer.Vehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="FuelType"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_FuelType", FK_COLUMNS="FuelTypeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.FuelType
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.FuelType," = "," AND") */
        deleted.FuelTypeId = Manufacturer.FuelType.FuelTypeId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Vehicle
          WHERE
            /* %JoinFKPK(Manufacturer.Vehicle,Manufacturer.FuelType," = "," AND") */
            Manufacturer.Vehicle.FuelTypeId = Manufacturer.FuelType.FuelTypeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Vehicle because Manufacturer.FuelType exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.DriveTrain  Manufacturer.Vehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="DriveTrain"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_DriveTrain", FK_COLUMNS="DriveTrainId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.DriveTrain
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.DriveTrain," = "," AND") */
        deleted.DriveTrainId = Manufacturer.DriveTrain.DriveTrainId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Vehicle
          WHERE
            /* %JoinFKPK(Manufacturer.Vehicle,Manufacturer.DriveTrain," = "," AND") */
            Manufacturer.Vehicle.DriveTrainId = Manufacturer.DriveTrain.DriveTrainId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Vehicle because Manufacturer.DriveTrain exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Engine  Manufacturer.Vehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Engine"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Engine", FK_COLUMNS="EngineId""VehicleMakeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Engine
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Engine," = "," AND") */
        deleted.EngineId = Manufacturer.Engine.EngineId AND
        deleted.VehicleMakeId = Manufacturer.Engine.VehicleMakeId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Vehicle
          WHERE
            /* %JoinFKPK(Manufacturer.Vehicle,Manufacturer.Engine," = "," AND") */
            Manufacturer.Vehicle.EngineId = Manufacturer.Engine.EngineId AND
            Manufacturer.Vehicle.VehicleMakeId = Manufacturer.Engine.VehicleMakeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Vehicle because Manufacturer.Engine exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Country  Manufacturer.Vehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Country"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Country", FK_COLUMNS="ManufacturerCountryId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Country
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Country," = "," AND") */
        deleted.ManufacturerCountryId = Manufacturer.Country.CountryId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Vehicle
          WHERE
            /* %JoinFKPK(Manufacturer.Vehicle,Manufacturer.Country," = "," AND") */
            Manufacturer.Vehicle.ManufacturerCountryId = Manufacturer.Country.CountryId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Vehicle because Manufacturer.Country exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_ManufacturerVehicle ON Manufacturer.Vehicle FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Vehicle */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insVehicleId dNumber.sdIdNumber, 
           @insModelId dNumber.sdIdNumber, 
           @insMakeId dNumber.sdIdNumber, 
           @insTrimId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Vehicle  Manufacturer.VehicleStock on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="001124db", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="VehicleStock"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_VehicleStock_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(VehicleId) OR
    UPDATE(ModelId) OR
    UPDATE(MakeId) OR
    UPDATE(TrimId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.VehicleStock
      WHERE
        /*  %JoinFKPK(Manufacturer.VehicleStock,deleted," = "," AND") */
        Manufacturer.VehicleStock.VehicleId = deleted.VehicleId AND
        Manufacturer.VehicleStock.ModelId = deleted.ModelId AND
        Manufacturer.VehicleStock.MakeId = deleted.MakeId AND
        Manufacturer.VehicleStock.TrimId = deleted.TrimId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Vehicle because Manufacturer.VehicleStock exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Vehicle  Sales.OrderVehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderVehicle_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(VehicleId) OR
    UPDATE(ModelId) OR
    UPDATE(MakeId) OR
    UPDATE(TrimId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.OrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.OrderVehicle,deleted," = "," AND") */
        Sales.OrderVehicle.VehicleId = deleted.VehicleId AND
        Sales.OrderVehicle.ModelId = deleted.ModelId AND
        Sales.OrderVehicle.MakeId = deleted.MakeId AND
        Sales.OrderVehicle.TrimId = deleted.TrimId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Vehicle because Sales.OrderVehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Vehicle  Manufacturer.FeatureVehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="FeatureVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_FeatureVehicle_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(VehicleId) OR
    UPDATE(ModelId) OR
    UPDATE(MakeId) OR
    UPDATE(TrimId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.FeatureVehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.FeatureVehicle,deleted," = "," AND") */
        Manufacturer.FeatureVehicle.VehicleId = deleted.VehicleId AND
        Manufacturer.FeatureVehicle.ModelId = deleted.ModelId AND
        Manufacturer.FeatureVehicle.MakeId = deleted.MakeId AND
        Manufacturer.FeatureVehicle.TrimId = deleted.TrimId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Vehicle because Manufacturer.FeatureVehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Trim  Manufacturer.Vehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Trim"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Trim", FK_COLUMNS="TrimId""ModelId""MakeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(TrimId) OR
    UPDATE(ModelId) OR
    UPDATE(MakeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Trim
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Trim) */
          inserted.TrimId = Manufacturer.Trim.TrimId and
          inserted.ModelId = Manufacturer.Trim.ModelId and
          inserted.MakeId = Manufacturer.Trim.MakeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Vehicle because Manufacturer.Trim does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Color  Manufacturer.Vehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Color"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Color", FK_COLUMNS="ColorId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ColorId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Color
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Color) */
          inserted.ColorId = Manufacturer.Color.ColorId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ColorId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Vehicle because Manufacturer.Color does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Transmission  Manufacturer.Vehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Transmission"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Transmission", FK_COLUMNS="TransmissionId""VehicleMakeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(TransmissionId) OR
    UPDATE(VehicleMakeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Transmission
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Transmission) */
          inserted.TransmissionId = Manufacturer.Transmission.TransmissionId and
          inserted.VehicleMakeId = Manufacturer.Transmission.VehicleMakeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.TransmissionId IS NULL AND
      inserted.VehicleMakeId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Vehicle because Manufacturer.Transmission does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.FuelType  Manufacturer.Vehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="FuelType"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_FuelType", FK_COLUMNS="FuelTypeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(FuelTypeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.FuelType
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.FuelType) */
          inserted.FuelTypeId = Manufacturer.FuelType.FuelTypeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.FuelTypeId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Vehicle because Manufacturer.FuelType does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.DriveTrain  Manufacturer.Vehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="DriveTrain"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_DriveTrain", FK_COLUMNS="DriveTrainId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(DriveTrainId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.DriveTrain
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.DriveTrain) */
          inserted.DriveTrainId = Manufacturer.DriveTrain.DriveTrainId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.DriveTrainId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Vehicle because Manufacturer.DriveTrain does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Engine  Manufacturer.Vehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Engine"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Engine", FK_COLUMNS="EngineId""VehicleMakeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(EngineId) OR
    UPDATE(VehicleMakeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Engine
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Engine) */
          inserted.EngineId = Manufacturer.Engine.EngineId and
          inserted.VehicleMakeId = Manufacturer.Engine.VehicleMakeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Vehicle because Manufacturer.Engine does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Country  Manufacturer.Vehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Country"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Country", FK_COLUMNS="ManufacturerCountryId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManufacturerCountryId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Country
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Country) */
          inserted.ManufacturerCountryId = Manufacturer.Country.CountryId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ManufacturerCountryId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Vehicle because Manufacturer.Country does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.[uTidu_AuditVehicleHistory] ON Manufacturer.Vehicle
    AFTER  
  
  AS
/* erwin Builtin Trigger */
/*  trigger on Vehicle */
/* default body for [uTidu_AuditVehicleHistory] */
BEGIN
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
END

go



CREATE TRIGGER Manufacturer.tD_Region ON Manufacturer.Region FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Region */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Region  Manufacturer.Country on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00013e0b", PARENT_OWNER="Manufacturer", PARENT_TABLE="Region"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Country"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Country_Region", FK_COLUMNS="RegionId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Country
      WHERE
        /*  %JoinFKPK(Manufacturer.Country,deleted," = "," AND") */
        Manufacturer.Country.RegionId = deleted.RegionId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Region because Manufacturer.Country exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_Region ON Manufacturer.Region FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Region */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insRegionId dGroupFinalProject.dNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Region  Manufacturer.Country on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0001521f", PARENT_OWNER="Manufacturer", PARENT_TABLE="Region"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Country"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Country_Region", FK_COLUMNS="RegionId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(RegionId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Country
      WHERE
        /*  %JoinFKPK(Manufacturer.Country,deleted," = "," AND") */
        Manufacturer.Country.RegionId = deleted.RegionId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Region because Manufacturer.Country exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tD_Feature ON Manufacturer.Feature FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Feature */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Feature  Manufacturer.FeatureVehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000163bd", PARENT_OWNER="Manufacturer", PARENT_TABLE="Feature"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="FeatureVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_FeatureVehicle_Feature", FK_COLUMNS=""""Feature Id"""" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.FeatureVehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.FeatureVehicle,deleted," = "," AND") */
        Manufacturer.FeatureVehicle."""Feature Id""" = deleted.FeatureId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Feature because Manufacturer.FeatureVehicle exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_Feature ON Manufacturer.Feature FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Feature */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insFeatureId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Feature  Manufacturer.FeatureVehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00017266", PARENT_OWNER="Manufacturer", PARENT_TABLE="Feature"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="FeatureVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_FeatureVehicle_Feature", FK_COLUMNS=""""Feature Id"""" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(FeatureId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.FeatureVehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.FeatureVehicle,deleted," = "," AND") */
        Manufacturer.FeatureVehicle."""Feature Id""" = deleted.FeatureId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Feature because Manufacturer.FeatureVehicle exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tD_Feature_ManufacturerVehicle ON Manufacturer.FeatureVehicle FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on FeatureVehicle */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Vehicle  Manufacturer.FeatureVehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0004062c", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="FeatureVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_FeatureVehicle_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Vehicle," = "," AND") */
        deleted.VehicleId = Manufacturer.Vehicle.VehicleId AND
        deleted.ModelId = Manufacturer.Vehicle.ModelId AND
        deleted.MakeId = Manufacturer.Vehicle.MakeId AND
        deleted.TrimId = Manufacturer.Vehicle.TrimId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.FeatureVehicle
          WHERE
            /* %JoinFKPK(Manufacturer.FeatureVehicle,Manufacturer.Vehicle," = "," AND") */
            Manufacturer.FeatureVehicle.VehicleId = Manufacturer.Vehicle.VehicleId AND
            Manufacturer.FeatureVehicle.ModelId = Manufacturer.Vehicle.ModelId AND
            Manufacturer.FeatureVehicle.MakeId = Manufacturer.Vehicle.MakeId AND
            Manufacturer.FeatureVehicle.TrimId = Manufacturer.Vehicle.TrimId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.FeatureVehicle because Manufacturer.Vehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Feature  Manufacturer.FeatureVehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Feature"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="FeatureVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_FeatureVehicle_Feature", FK_COLUMNS=""""Feature Id"""" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Feature
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Feature," = "," AND") */
        deleted."""Feature Id""" = Manufacturer.Feature.FeatureId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.FeatureVehicle
          WHERE
            /* %JoinFKPK(Manufacturer.FeatureVehicle,Manufacturer.Feature," = "," AND") */
            Manufacturer.FeatureVehicle."""Feature Id""" = Manufacturer.Feature.FeatureId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.FeatureVehicle because Manufacturer.Feature exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_Feature_ManufacturerVehicle ON Manufacturer.FeatureVehicle FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on FeatureVehicle */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           "@ins""""""Feature Vehicle Id""""""" dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Vehicle  Manufacturer.FeatureVehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0003a605", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="FeatureVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_FeatureVehicle_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(VehicleId) OR
    UPDATE(ModelId) OR
    UPDATE(MakeId) OR
    UPDATE(TrimId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Vehicle
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Vehicle) */
          inserted.VehicleId = Manufacturer.Vehicle.VehicleId and
          inserted.ModelId = Manufacturer.Vehicle.ModelId and
          inserted.MakeId = Manufacturer.Vehicle.MakeId and
          inserted.TrimId = Manufacturer.Vehicle.TrimId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.FeatureVehicle because Manufacturer.Vehicle does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Feature  Manufacturer.FeatureVehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Feature"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="FeatureVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_FeatureVehicle_Feature", FK_COLUMNS=""""Feature Id"""" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE("""Feature Id""")
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Feature
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Feature) */
          inserted."""Feature Id""" = Manufacturer.Feature.FeatureId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.FeatureVehicle because Manufacturer.Feature does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tD_Engine ON Manufacturer.Engine FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Engine */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Engine  Manufacturer.Vehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002e597", PARENT_OWNER="Manufacturer", PARENT_TABLE="Engine"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Engine", FK_COLUMNS="EngineId""VehicleMakeId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.EngineId = deleted.EngineId AND
        Manufacturer.Vehicle.VehicleMakeId = deleted.VehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Engine because Manufacturer.Vehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Make  Manufacturer.Engine on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Engine"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Engine_Make", FK_COLUMNS="VehicleMakeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Make
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Make," = "," AND") */
        deleted.VehicleMakeId = Manufacturer.Make.VehicleMakeId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Engine
          WHERE
            /* %JoinFKPK(Manufacturer.Engine,Manufacturer.Make," = "," AND") */
            Manufacturer.Engine.VehicleMakeId = Manufacturer.Make.VehicleMakeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Engine because Manufacturer.Make exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_Engine ON Manufacturer.Engine FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Engine */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insEngineId dNumber.sdIdNumber, 
           @insVehicleMakeId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Engine  Manufacturer.Vehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002f509", PARENT_OWNER="Manufacturer", PARENT_TABLE="Engine"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Engine", FK_COLUMNS="EngineId""VehicleMakeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(EngineId) OR
    UPDATE(VehicleMakeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.EngineId = deleted.EngineId AND
        Manufacturer.Vehicle.VehicleMakeId = deleted.VehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Engine because Manufacturer.Vehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Make  Manufacturer.Engine on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Engine"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Engine_Make", FK_COLUMNS="VehicleMakeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(VehicleMakeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Make
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Make) */
          inserted.VehicleMakeId = Manufacturer.Make.VehicleMakeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Engine because Manufacturer.Make does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tD_DriveTrain ON Manufacturer.DriveTrain FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on DriveTrain */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.DriveTrain  Manufacturer.Vehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000140f4", PARENT_OWNER="Manufacturer", PARENT_TABLE="DriveTrain"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_DriveTrain", FK_COLUMNS="DriveTrainId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.DriveTrainId = deleted.DriveTrainId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.DriveTrain because Manufacturer.Vehicle exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_DriveTrain ON Manufacturer.DriveTrain FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on DriveTrain */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insDriveTrainId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.DriveTrain  Manufacturer.Vehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00016450", PARENT_OWNER="Manufacturer", PARENT_TABLE="DriveTrain"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_DriveTrain", FK_COLUMNS="DriveTrainId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(DriveTrainId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.DriveTrainId = deleted.DriveTrainId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.DriveTrain because Manufacturer.Vehicle exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tD_Fuel ON Manufacturer.FuelType FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on FuelType */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.FuelType  Manufacturer.Vehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00014a78", PARENT_OWNER="Manufacturer", PARENT_TABLE="FuelType"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_FuelType", FK_COLUMNS="FuelTypeId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.FuelTypeId = deleted.FuelTypeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.FuelType because Manufacturer.Vehicle exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_Fuel ON Manufacturer.FuelType FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on FuelType */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insFuelTypeId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.FuelType  Manufacturer.Vehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000158e5", PARENT_OWNER="Manufacturer", PARENT_TABLE="FuelType"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_FuelType", FK_COLUMNS="FuelTypeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(FuelTypeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.FuelTypeId = deleted.FuelTypeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.FuelType because Manufacturer.Vehicle exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tD_Color ON Manufacturer.Color FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Color */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Color  Manufacturer.Vehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001338e", PARENT_OWNER="Manufacturer", PARENT_TABLE="Color"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Color", FK_COLUMNS="ColorId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.ColorId = deleted.ColorId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Color because Manufacturer.Vehicle exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_Color ON Manufacturer.Color FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Color */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insColorId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Color  Manufacturer.Vehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00014c34", PARENT_OWNER="Manufacturer", PARENT_TABLE="Color"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Color", FK_COLUMNS="ColorId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ColorId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.ColorId = deleted.ColorId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Color because Manufacturer.Vehicle exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tD_Transmission ON Manufacturer.Transmission FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Transmission */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Transmission  Manufacturer.Vehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0004e396", PARENT_OWNER="Manufacturer", PARENT_TABLE="Transmission"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Transmission", FK_COLUMNS="TransmissionId""VehicleMakeId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.TransmissionId = deleted.TransmissionId AND
        Manufacturer.Vehicle.VehicleMakeId = deleted.VehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Transmission because Manufacturer.Vehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Make  Manufacturer.Transmission on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Transmission"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Transmission_Make", FK_COLUMNS="VehicleMakeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Make
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Make," = "," AND") */
        deleted.VehicleMakeId = Manufacturer.Make.VehicleMakeId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Transmission
          WHERE
            /* %JoinFKPK(Manufacturer.Transmission,Manufacturer.Make," = "," AND") */
            Manufacturer.Transmission.VehicleMakeId = Manufacturer.Make.VehicleMakeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Transmission because Manufacturer.Make exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.TransmissionType  Manufacturer.Transmission on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="TransmissionType"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Transmission"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Transmission_TransmissionType", FK_COLUMNS="TransmissionTypeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.TransmissionType
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.TransmissionType," = "," AND") */
        deleted.TransmissionTypeId = Manufacturer.TransmissionType.TransmissionTypeId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Transmission
          WHERE
            /* %JoinFKPK(Manufacturer.Transmission,Manufacturer.TransmissionType," = "," AND") */
            Manufacturer.Transmission.TransmissionTypeId = Manufacturer.TransmissionType.TransmissionTypeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Transmission because Manufacturer.TransmissionType exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_Transmission ON Manufacturer.Transmission FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Transmission */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insTransmissionId dNumber.sdIdNumber, 
           @insVehicleMakeId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Transmission  Manufacturer.Vehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000501ac", PARENT_OWNER="Manufacturer", PARENT_TABLE="Transmission"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Transmission", FK_COLUMNS="TransmissionId""VehicleMakeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(TransmissionId) OR
    UPDATE(VehicleMakeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.TransmissionId = deleted.TransmissionId AND
        Manufacturer.Vehicle.VehicleMakeId = deleted.VehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Transmission because Manufacturer.Vehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Make  Manufacturer.Transmission on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Make"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Transmission"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Transmission_Make", FK_COLUMNS="VehicleMakeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(VehicleMakeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Make
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Make) */
          inserted.VehicleMakeId = Manufacturer.Make.VehicleMakeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Transmission because Manufacturer.Make does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.TransmissionType  Manufacturer.Transmission on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="TransmissionType"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Transmission"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Transmission_TransmissionType", FK_COLUMNS="TransmissionTypeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(TransmissionTypeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.TransmissionType
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.TransmissionType) */
          inserted.TransmissionTypeId = Manufacturer.TransmissionType.TransmissionTypeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.TransmissionTypeId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Transmission because Manufacturer.TransmissionType does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tD_TransmissionType ON Manufacturer.TransmissionType FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on TransmissionType */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.TransmissionType  Manufacturer.Transmission on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00015736", PARENT_OWNER="Manufacturer", PARENT_TABLE="TransmissionType"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Transmission"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Transmission_TransmissionType", FK_COLUMNS="TransmissionTypeId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Transmission
      WHERE
        /*  %JoinFKPK(Manufacturer.Transmission,deleted," = "," AND") */
        Manufacturer.Transmission.TransmissionTypeId = deleted.TransmissionTypeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.TransmissionType because Manufacturer.Transmission exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_TransmissionType ON Manufacturer.TransmissionType FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on TransmissionType */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insTransmissionTypeId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.TransmissionType  Manufacturer.Transmission on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000180d0", PARENT_OWNER="Manufacturer", PARENT_TABLE="TransmissionType"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Transmission"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Transmission_TransmissionType", FK_COLUMNS="TransmissionTypeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(TransmissionTypeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Transmission
      WHERE
        /*  %JoinFKPK(Manufacturer.Transmission,deleted," = "," AND") */
        Manufacturer.Transmission.TransmissionTypeId = deleted.TransmissionTypeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.TransmissionType because Manufacturer.Transmission exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tD_Trim ON Manufacturer.Trim FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Trim */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Trim  Manufacturer.Vehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00031254", PARENT_OWNER="Manufacturer", PARENT_TABLE="Trim"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Trim", FK_COLUMNS="TrimId""ModelId""MakeId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.TrimId = deleted.TrimId AND
        Manufacturer.Vehicle.ModelId = deleted.ModelId AND
        Manufacturer.Vehicle.MakeId = deleted.MakeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.Trim because Manufacturer.Vehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Manufacturer.Model  Manufacturer.Trim on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Model"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Trim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Trim_Model", FK_COLUMNS="ModelId""MakeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Model
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Model," = "," AND") */
        deleted.ModelId = Manufacturer.Model.ModelId AND
        deleted.MakeId = Manufacturer.Model.MakeId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.Trim
          WHERE
            /* %JoinFKPK(Manufacturer.Trim,Manufacturer.Model," = "," AND") */
            Manufacturer.Trim.ModelId = Manufacturer.Model.ModelId AND
            Manufacturer.Trim.MakeId = Manufacturer.Model.MakeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.Trim because Manufacturer.Model exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_Trim ON Manufacturer.Trim FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Trim */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insTrimId dNumber.sdIdNumber, 
           @insModelId dNumber.sdIdNumber, 
           @insMakeId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Trim  Manufacturer.Vehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000326da", PARENT_OWNER="Manufacturer", PARENT_TABLE="Trim"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Vehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Vehicle_Trim", FK_COLUMNS="TrimId""ModelId""MakeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(TrimId) OR
    UPDATE(ModelId) OR
    UPDATE(MakeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /*  %JoinFKPK(Manufacturer.Vehicle,deleted," = "," AND") */
        Manufacturer.Vehicle.TrimId = deleted.TrimId AND
        Manufacturer.Vehicle.ModelId = deleted.ModelId AND
        Manufacturer.Vehicle.MakeId = deleted.MakeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.Trim because Manufacturer.Vehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Manufacturer.Model  Manufacturer.Trim on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Manufacturer", PARENT_TABLE="Model"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="Trim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Trim_Model", FK_COLUMNS="ModelId""MakeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ModelId) OR
    UPDATE(MakeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Model
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Model) */
          inserted.ModelId = Manufacturer.Model.ModelId and
          inserted.MakeId = Manufacturer.Model.MakeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.Trim because Manufacturer.Model does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_SalesOrderVehicle_ManufacturerVehicle ON Sales.OrderVehicle FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on OrderVehicle */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.Vehicle  Sales.OrderVehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003faef", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderVehicle_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.Vehicle
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.Vehicle," = "," AND") */
        deleted.VehicleId = Manufacturer.Vehicle.VehicleId AND
        deleted.ModelId = Manufacturer.Vehicle.ModelId AND
        deleted.MakeId = Manufacturer.Vehicle.MakeId AND
        deleted.TrimId = Manufacturer.Vehicle.TrimId AND
        NOT EXISTS (
          SELECT * FROM Sales.OrderVehicle
          WHERE
            /* %JoinFKPK(Sales.OrderVehicle,Manufacturer.Vehicle," = "," AND") */
            Sales.OrderVehicle.VehicleId = Manufacturer.Vehicle.VehicleId AND
            Sales.OrderVehicle.ModelId = Manufacturer.Vehicle.ModelId AND
            Sales.OrderVehicle.MakeId = Manufacturer.Vehicle.MakeId AND
            Sales.OrderVehicle.TrimId = Manufacturer.Vehicle.TrimId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.OrderVehicle because Manufacturer.Vehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Order  Sales.OrderVehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderVehicle_Order", FK_COLUMNS="OrderId""CustomerId""StaffId" */
    IF EXISTS (SELECT * FROM deleted,Sales.Order
      WHERE
        /* %JoinFKPK(deleted,Sales.Order," = "," AND") */
        deleted.OrderId = Sales.Order.OrderId AND
        deleted.CustomerId = Sales.Order.CustomerId AND
        deleted.StaffId = Sales.Order.StaffId AND
        NOT EXISTS (
          SELECT * FROM Sales.OrderVehicle
          WHERE
            /* %JoinFKPK(Sales.OrderVehicle,Sales.Order," = "," AND") */
            Sales.OrderVehicle.OrderId = Sales.Order.OrderId AND
            Sales.OrderVehicle.CustomerId = Sales.Order.CustomerId AND
            Sales.OrderVehicle.StaffId = Sales.Order.StaffId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.OrderVehicle because Sales.Order exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_SalesOrderVehicle_ManufacturerVehicle ON Sales.OrderVehicle FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on OrderVehicle */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insOrderId dNumber.sdIdNumber, 
           @insVehicleId dNumber.sdIdNumber, 
           @insModelId dNumber.sdIdNumber, 
           @insMakeId dNumber.sdIdNumber, 
           @insTrimId dNumber.sdIdNumber, 
           @insCustomerId dNumber.sdIdNumber, 
           @insOrderVehicleId dNumber.sdIdNumber, 
           @insStaffId dNumber.sdIdNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.Vehicle  Sales.OrderVehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="000399dc", PARENT_OWNER="Manufacturer", PARENT_TABLE="Vehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderVehicle_Vehicle", FK_COLUMNS="VehicleId""TrimId""ModelId""MakeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(VehicleId) OR
    UPDATE(ModelId) OR
    UPDATE(MakeId) OR
    UPDATE(TrimId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.Vehicle
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.Vehicle) */
          inserted.VehicleId = Manufacturer.Vehicle.VehicleId and
          inserted.ModelId = Manufacturer.Vehicle.ModelId and
          inserted.MakeId = Manufacturer.Vehicle.MakeId and
          inserted.TrimId = Manufacturer.Vehicle.TrimId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.OrderVehicle because Manufacturer.Vehicle does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Order  Sales.OrderVehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Order"
    CHILD_OWNER="Sales", CHILD_TABLE="OrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_OrderVehicle_Order", FK_COLUMNS="OrderId""CustomerId""StaffId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(OrderId) OR
    UPDATE(CustomerId) OR
    UPDATE(StaffId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.Order
        WHERE
          /* %JoinFKPK(inserted,Sales.Order) */
          inserted.OrderId = Sales.Order.OrderId and
          inserted.CustomerId = Sales.Order.CustomerId and
          inserted.StaffId = Sales.Order.StaffId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.OrderVehicle because Sales.Order does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.[uTidu_AuditOrderVehicleHistory] ON Sales.OrderVehicle
    AFTER DELETE,UPDATE 
  
  AS
/* erwin Builtin Trigger */
/* DELETE,UPDATE trigger on OrderVehicle */
/* default body for [uTidu_AuditOrderVehicleHistory] */
BEGIN
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
END

go


