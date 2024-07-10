
-- DBSecurity.UserAuthorization Table
INSERT INTO [DbSecurity].[UserAuthorization]
           ([UserAuthorizationId],[ClassTime],[IndividualProject],[GroupMemberLastName],[GroupMemberFirstName],[GroupName],[SysStartTime],[SysEndTime])
     VALUES
           (1, '09:15', 'Final Project', 'Mujaj', 'Fidiana', 'Group 5', SYSDATETIME(), SYSDATETIME())
GO


INSERT INTO [DbSecurity].[UserAuthorization]
           ([UserAuthorizationId],[ClassTime],[IndividualProject],[GroupMemberLastName],[GroupMemberFirstName],[GroupName],[SysStartTime],[SysEndTime])
     VALUES
           (2, '09:15', 'Final Project', 'Wiradiradja', 'Nathaniel', 'Group 5', SYSDATETIME(), SYSDATETIME())
GO


INSERT INTO [DbSecurity].[UserAuthorization]
           ([UserAuthorizationId],[ClassTime],[IndividualProject],[GroupMemberLastName],[GroupMemberFirstName],[GroupName],[SysStartTime],[SysEndTime])
     VALUES
           (3, '09:15', 'Final Project', 'Guevara', 'Gregory', 'Group 5', SYSDATETIME(), SYSDATETIME())
GO


INSERT INTO [DbSecurity].[UserAuthorization]
           ([UserAuthorizationId],[ClassTime],[IndividualProject],[GroupMemberLastName],[GroupMemberFirstName],[GroupName],[SysStartTime],[SysEndTime])
     VALUES
           (4, '09:15', 'Final Project', 'Kabir', 'Mohammed', 'Group 5', SYSDATETIME(), SYSDATETIME())
GO


INSERT INTO [DbSecurity].[UserAuthorization]
           ([UserAuthorizationId],[ClassTime],[IndividualProject],[GroupMemberLastName],[GroupMemberFirstName],[GroupName],[SysStartTime],[SysEndTime])
     VALUES
           (5, '09:15', 'Final Project', 'Siddiqui', 'Ismahan', 'Group 5', SYSDATETIME(), SYSDATETIME())
GO


INSERT INTO [DbSecurity].[UserAuthorization]
           ([UserAuthorizationId],[ClassTime],[IndividualProject],[GroupMemberLastName],[GroupMemberFirstName],[GroupName],[SysStartTime],[SysEndTime])
     VALUES
           (6, '09:15', 'Final Project', 'Bin Shafiq', 'Al Amin', 'Group 5', SYSDATETIME(), SYSDATETIME())
GO

-- HumanResources.Staff TABLE

INSERT INTO [HumanResources].[Staff]
           ([StaffId],[StaffName],[ManagerId],[Department],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (9, 'Maggie', 4, 'Sales', 1, '2008-11-11 13:23:44', '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [HumanResources].[Staff]
           ([StaffId],[StaffName],[ManagerId],[Department],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (8, 'Natha', 4, 'Sales', 1, '2008-12-11 13:23:44', '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [HumanResources].[Staff]
           ([StaffId],[StaffName],[ManagerId],[Department],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (7, 'Sta', 4, 'Sales', 1, '2009-12-11 13:23:44', '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [HumanResources].[Staff]
           ([StaffId],[StaffName],[ManagerId],[Department],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (6, 'Steve', 4, 'Sales', 1, '2008-10-11 13:23:44', '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [HumanResources].[Staff]
           ([StaffId],[StaffName],[ManagerId],[Department],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (3, 'Chloe', 1, 'Marketing',1,  '2010-10-11 13:23:44', '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [HumanResources].[Staff]
           ([StaffId],[StaffName],[ManagerId],[Department],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (2, 'Gerard', 1, 'Finance',1, '2000-10-11 13:23:44', '2010-01-11 15:03:44', NULL)
GO
------------
INSERT INTO [Manufacturer].[Region]
           ([RegionId],[RegionName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (1, 'Northern Europe', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL);
GO
INSERT INTO [Manufacturer].[Region]
           ([RegionId],[RegionName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (2, 'Central Europe', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL);
GO
INSERT INTO [Manufacturer].[Region]
           ([RegionId],[RegionName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (3, 'Eastern Europe', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL);
GO
INSERT INTO [Manufacturer].[Region]
           ([RegionId],[RegionName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (4, 'Southern Europe', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL);
GO
INSERT INTO [Manufacturer].[Region]
           ([RegionId],[RegionName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (5, 'Western Europe', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL);
GO
----------------
INSERT INTO [Manufacturer].[Country]
           ([CountryId],[CountryISO3],[CountryName],[CountryISO2],[RegionId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (1, 'DNK', 'Denmark', 'DK', 1, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Country]
           ([CountryId],[CountryISO3],[CountryName],[CountryISO2],[RegionId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (2, 'FIN', 'Finland', 'FI', 1, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Country]
           ([CountryId],[CountryISO3],[CountryName],[CountryISO2],[RegionId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (3, 'NOR', 'Norway', 'NO', 1, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Country]
           ([CountryId],[CountryISO3],[CountryName],[CountryISO2],[RegionId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (4, 'SWE', 'Sweden', 'SE', 1, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Country]
           ([CountryId],[CountryISO3],[CountryName],[CountryISO2],[RegionId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (5, 'GBR', 'United Kingdom', 'GB', 1, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
--------------
INSERT INTO [Sales].[Customer]
           ([CustomerId],[CustomerName],[CustomerAddress1],[CustomerAddress2],[CustomerTown],[CustomerPostalCode],[IsCustomerReseller],[IsCustomerCreditRisk],[CustomerSpendCapacity],[CountryId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (1,  'Sondra Horowitz', '10040 Great Western Road', NULL, 'Los Angeles','11345', 0, 0, NULL, 1, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Sales].[Customer]
           ([CustomerId],[CustomerName],[CustomerAddress1],[CustomerAddress2],[CustomerTown],[CustomerPostalCode],[IsCustomerReseller],[IsCustomerCreditRisk],[CustomerSpendCapacity],[CountryId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (88, 'Jimmy McFiddler', '57, Smile Square', NULL, 'Glasgow', 'G151AA', 1, 1, NULL, 1, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Sales].[Customer]
           ([CustomerId],[CustomerName],[CustomerAddress1],[CustomerAddress2],[CustomerTown],[CustomerPostalCode],[IsCustomerReseller],[IsCustomerCreditRisk],[CustomerSpendCapacity],[CountryId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (87, 'Andy Cheshire', '7, Wedgewood Steet', NULL, 'Stoke', 'ST4 2OZ', 0, 0, NULL, 2, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Sales].[Customer]
           ([CustomerId],[CustomerName],[CustomerAddress1],[CustomerAddress2],[CustomerTown],[CustomerPostalCode],[IsCustomerReseller],[IsCustomerCreditRisk],[CustomerSpendCapacity],[CountryId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (86, 'Francois Chirac', '2, Quai de l''Enfer', NULL, 'Paris', 'NE1 7DH', 0, 0, NULL, 2, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Sales].[Customer]
           ([CustomerId],[CustomerName],[CustomerAddress1],[CustomerAddress2],[CustomerTown],[CustomerPostalCode],[IsCustomerReseller],[IsCustomerCreditRisk],[CustomerSpendCapacity],[CountryId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (85, 'Alex McWhirter', '89, Harlequin Road', NULL, 'Newcastle', 'NE1 7DH', 0, 0, NULL, 3, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Sales].[Customer]
           ([CustomerId],[CustomerName],[CustomerAddress1],[CustomerAddress2],[CustomerTown],[CustomerPostalCode],[IsCustomerReseller],[IsCustomerCreditRisk],[CustomerSpendCapacity],[CountryId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (84, 'Francoise LeBru', '56, Rue Verte', NULL, 'Lausanne', '11234', 0, 0, NULL, 3, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Sales].[Customer]
           ([CustomerId],[CustomerName],[CustomerAddress1],[CustomerAddress2],[CustomerTown],[CustomerPostalCode],[IsCustomerReseller],[IsCustomerCreditRisk],[CustomerSpendCapacity],[CountryId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (83, 'Jacques Mitterand', '1 Quai des Pertes', NULL, 'Paris', '00000', 0, 0, NULL, 4, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO

INSERT INTO [Sales].[Customer]
           ([CustomerId],[CustomerName],[CustomerAddress1],[CustomerAddress2],[CustomerTown],[CustomerPostalCode],[IsCustomerReseller],[IsCustomerCreditRisk],[CustomerSpendCapacity],[CountryId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (82, 'Khader El Ghannam', '10, rue de Jemappes', '4eme etage', 'Paris', '00000', 0, 0, NULL, 4, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Sales].[Customer]
           ([CustomerId],[CustomerName],[CustomerAddress1],[CustomerAddress2],[CustomerTown],[CustomerPostalCode],[IsCustomerReseller],[IsCustomerCreditRisk],[CustomerSpendCapacity],[CountryId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (81, 'Pete Spring', '53, Pimlico Square', NULL, 'Manchester', 'M3 4WR', 0, 1, NULL, 4, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO

-----------

INSERT INTO [Sales].[Order]
           ([OrderId],[InvoiceNumber],[TotalPrice],[Date],[CustomerId],[StaffId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (1, 1, 38384.45, '2022-10-21 19:00:00', 88, 9, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Sales].[Order]
           ([OrderId],[InvoiceNumber],[TotalPrice],[Date],[CustomerId],[StaffId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (2, 2, 138384.45, '2022-09-21 19:00:00', 88, 9, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Sales].[Order]
           ([OrderId],[InvoiceNumber],[TotalPrice],[Date],[CustomerId],[StaffId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (3, 3, 70000.45, '2021-09-21 19:00:00', 84, 9, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Sales].[Order]
           ([OrderId],[InvoiceNumber],[TotalPrice],[Date],[CustomerId],[StaffId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (4, 3, 99999.45, '2021-09-21 19:10:00', 84, 2, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Sales].[Order]
           ([OrderId],[InvoiceNumber],[TotalPrice],[Date],[CustomerId],[StaffId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (5, 4, 10000.00, '2016-09-21 19:10:00', 1, 2, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
------------------
INSERT INTO [Manufacturer].[Category]
           ([CategoryName],[CategoryId],[UpperThreshold],[LowerThreshold],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           ('Sports', 1, NULL, NULL, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Category]
           ([CategoryName],[CategoryId],[UpperThreshold],[LowerThreshold],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           ('Luxury', 2, NULL, NULL, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Category]
           ([CategoryName],[CategoryId],[UpperThreshold],[LowerThreshold],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           ('Family', 3, NULL, NULL, 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
----------------
INSERT INTO [Manufacturer].[Color]
           ([ColorId],[ColorName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (1, 'White', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Color]
           ([ColorId],[ColorName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (2, 'Black', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Color]
           ([ColorId],[ColorName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (3, 'Red', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Color]
           ([ColorId],[ColorName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (4, 'Yellow', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Color]
           ([ColorId],[ColorName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (5, 'Grey', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Color]
           ([ColorId],[ColorName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (6, 'Green', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Color]
           ([ColorId],[ColorName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (7, 'Blue', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Color]
           ([ColorId],[ColorName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (9, 'Pink', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Color]
           ([ColorId],[ColorName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (10, 'Beige', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO

------------
INSERT INTO [Manufacturer].[FuelType]
           ([FuelTypeId],[FuelType],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (1, 'Gasoline', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[FuelType]
           ([FuelTypeId],[FuelType],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (2, 'Diesel', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[FuelType]
           ([FuelTypeId],[FuelType],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (3, 'Electric', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[FuelType]
           ([FuelTypeId],[FuelType],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (4, 'Hybrid', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
------------------
INSERT INTO [Manufacturer].[DriveTrain]
           ([DriveTrainId],[DriveTrainCode],[DriveTrainDescription],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (1, 'AWD', 'all-wheel drive', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[DriveTrain]
           ([DriveTrainId],[DriveTrainCode],[DriveTrainDescription],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (2, '4WD', 'four-wheel drive', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[DriveTrain]
           ([DriveTrainId],[DriveTrainCode],[DriveTrainDescription],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (2, 'FWD', 'front-wheel drive', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[DriveTrain]
           ([DriveTrainId],[DriveTrainCode],[DriveTrainDescription],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (2, 'RWD', 'read-wheel drive', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
-----------
INSERT INTO [Manufacturer].[Feature]
           ([FeatureId],[FeatureName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (1, 'Leather Seats', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Feature]
           ([FeatureId],[FeatureName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (2, 'Sunroof/Moonroof', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Feature]
           ([FeatureId],[FeatureName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (3, 'Heated Seats', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Feature]
           ([FeatureId],[FeatureName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (4, 'Backup Camera', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Feature]
           ([FeatureId],[FeatureName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (5, 'Navigation System', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Feature]
           ([FeatureId],[FeatureName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (6, 'Bluetooth', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Feature]
           ([FeatureId],[FeatureName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (7, 'Remote Start', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Feature]
           ([FeatureId],[FeatureName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (8, 'Blind Spot Monitoring', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Feature]
           ([FeatureId],[FeatureName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (9, 'Third Row Seating', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Feature]
           ([FeatureId],[FeatureName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (10, 'USB Outlets', 1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO

----------------
INSERT INTO [Manufacturer].[Make]
           ([VehicleMakeId],[VehicleMakeName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (1, 'Mercedes-Benz',1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Make]
           ([VehicleMakeId],[VehicleMakeName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (2, 'Audi',1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Make]
           ([VehicleMakeId],[VehicleMakeName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (3, 'Hyundai',1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Make]
           ([VehicleMakeId],[VehicleMakeName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (4, 'Honda',1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Make]
           ([VehicleMakeId],[VehicleMakeName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (5, 'Lucid',1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Make]
           ([VehicleMakeId],[VehicleMakeName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (6, 'Nissan',1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Make]
           ([VehicleMakeId],[VehicleMakeName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (7, 'Volkswagen',1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Make]
           ([VehicleMakeId],[VehicleMakeName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (8, 'Subaru',1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Make]
           ([VehicleMakeId],[VehicleMakeName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (9, 'Toyota',1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
INSERT INTO [Manufacturer].[Make]
           ([VehicleMakeId],[VehicleMakeName],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           (10, 'Lamborghini',1, SYSDATETIME(), '9999-12-31 00:00:00', NULL)
GO
--------------------
INSERT INTO [Manufacturer].[Model]
           ([ModelId],[ModelName],[ModelVariant],[BodyName],[MakeId],[CategoryId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           ()
GO
--------------
INSERT INTO [Manufacturer].[Trim]
           ([TrimId],[TrimName],[TrimLevel],[ModelId],[MakeId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           ()
GO
------------------
INSERT INTO [Manufacturer].[Engine]
           ([EngineId],[EngineDisplacement],[EngineCylinderCount],[EngineMaxHorsepower],[EngineMaxTorque],[VehicleMakeId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           ()
GO
-----------
INSERT INTO [Manufacturer].[TransmissionType]
           ([TransmissionTypeId],[TransmissionType],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           ()
GO
-----------
INSERT INTO [Manufacturer].[Transmission]
           ([TransmissionId],[TransmissionName],[Transmission GearCount],[TransmissionTypeId],[VehicleMakeId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           ()
GO

-----------
INSERT INTO [Manufacturer].[FeatureVehicle]
           ([Feature Id],[VehicleId],[Feature Vehicle Id],[TrimId],[ModelId],[MakeId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           ()
GO

----------------
INSERT INTO [Manufacturer].[Vehicle]
([VinNumber],[VehicleId],[VehicleYear],[ModelId],[MakeId],[VehicleMakeId],[ManufacturerCountryId],[EngineId],[DriveTrainId],[FuelTypeId],[TransmissionId],[ColorId],[TrimId],[MSRP],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
()
GO
-----------
INSERT INTO [Manufacturer].[VehicleStock]
           ([StockId],[StockCode],[Cos,[MakeId],[TrimId],[UserAut],[RepairsCharge],[PartsCharge],[DeliveryCharge],[CusomerComments],[PurchaseDate],[VehicleId],[ModelId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           ()
GO

----------------
INSERT INTO [Sales].[OrderVehicle]
           ([OrderId],[VehicleId],[ModelId],[MakeId],[TrimId],[CustomerId],[OrderVehicleId],[Price],[Discount],[DerivedDiscountedPrice],[StaffId],[UserAuthorizationId],[SysStartTime],[SysEndTime],[RowLevelHashKey])
     VALUES
           ()
GO