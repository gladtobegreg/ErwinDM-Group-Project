
-- DBSecurity.UserAuthorization Table
INSERT INTO "DbSecurity"."UserAuthorization"
           ("UserAuthorizationId","ClassTime","IndividualProject","GroupMemberLastName","GroupMemberFirstName","GroupName","SysStartTime","SysEndTime")
     VALUES
           (1, '09:15', 'Final Project', 'Mujaj', 'Fidiana', 'Group 5', NOW(), NOW());


INSERT INTO "DbSecurity"."UserAuthorization"
           ("UserAuthorizationId","ClassTime","IndividualProject","GroupMemberLastName","GroupMemberFirstName","GroupName","SysStartTime","SysEndTime")
     VALUES
           (2, '09:15', 'Final Project', 'Wiradiradja', 'Nathaniel', 'Group 5', NOW(), NOW());


INSERT INTO "DbSecurity"."UserAuthorization"
           ("UserAuthorizationId","ClassTime","IndividualProject","GroupMemberLastName","GroupMemberFirstName","GroupName","SysStartTime","SysEndTime")
     VALUES
           (3, '09:15', 'Final Project', 'Guevara', 'Gregory', 'Group 5', NOW(), NOW());


INSERT INTO "DbSecurity"."UserAuthorization"
           ("UserAuthorizationId","ClassTime","IndividualProject","GroupMemberLastName","GroupMemberFirstName","GroupName","SysStartTime","SysEndTime")
     VALUES
           (4, '09:15', 'Final Project', 'Kabir', 'Mohammed', 'Group 5', NOW(), NOW());


INSERT INTO "DbSecurity"."UserAuthorization"
           ("UserAuthorizationId","ClassTime","IndividualProject","GroupMemberLastName","GroupMemberFirstName","GroupName","SysStartTime","SysEndTime")
     VALUES
           (5, '09:15', 'Final Project', 'Siddiqui', 'Ismahan', 'Group 5', NOW(), NOW());


INSERT INTO "DbSecurity"."UserAuthorization"
           ("UserAuthorizationId","ClassTime","IndividualProject","GroupMemberLastName","GroupMemberFirstName","GroupName","SysStartTime","SysEndTime")
     VALUES
           (6, '09:15', 'Final Project', 'Bin Shafiq', 'Al Amin', 'Group 5', NOW(), NOW());

-- HumanResources.Staff TABLE

INSERT INTO "HumanResources"."Staff"
           ("StaffId","StaffName","ManagerId","Department","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (9, 'Maggie', 4, 'Sales', 1, '2008-11-11 13:23:44', '9999-12-31 00:00:00', NULL);
INSERT INTO "HumanResources"."Staff"
           ("StaffId","StaffName","ManagerId","Department","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (8, 'Natha', 4, 'Sales', 1, '2008-12-11 13:23:44', '9999-12-31 00:00:00', NULL);
INSERT INTO "HumanResources"."Staff"
           ("StaffId","StaffName","ManagerId","Department","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (7, 'Sta', 4, 'Sales', 1, '2009-12-11 13:23:44', '9999-12-31 00:00:00', NULL);
INSERT INTO "HumanResources"."Staff"
           ("StaffId","StaffName","ManagerId","Department","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (6, 'Steve', 4, 'Sales', 1, '2008-10-11 13:23:44', '9999-12-31 00:00:00', NULL);
INSERT INTO "HumanResources"."Staff"
           ("StaffId","StaffName","ManagerId","Department","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 'Chloe', 1, 'Marketing',1,  '2010-10-11 13:23:44', '9999-12-31 00:00:00', NULL);
INSERT INTO "HumanResources"."Staff"
           ("StaffId","StaffName","ManagerId","Department","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'Gerard', 1, 'Finance',1, '2000-10-11 13:23:44', '2010-01-11 15:03:44', NULL);
------------
INSERT INTO "Manufacturer"."Region"
           ("RegionId","RegionName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'Northern Europe', 1, NOW(), '9999-12-31 00:00:00', NULL);;
INSERT INTO "Manufacturer"."Region"
           ("RegionId","RegionName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'Central Europe', 1, NOW(), '9999-12-31 00:00:00', NULL);;
INSERT INTO "Manufacturer"."Region"
           ("RegionId","RegionName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 'Eastern Europe', 1, NOW(), '9999-12-31 00:00:00', NULL);;
INSERT INTO "Manufacturer"."Region"
           ("RegionId","RegionName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 'Southern Europe', 1, NOW(), '9999-12-31 00:00:00', NULL);;
INSERT INTO "Manufacturer"."Region"
           ("RegionId","RegionName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (5, 'Western Europe', 1, NOW(), '9999-12-31 00:00:00', NULL);;
----------------
INSERT INTO "Manufacturer"."Country"
           ("CountryId","CountryISO3","CountryName","CountryISO2","RegionId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'DNK', 'Denmark', 'DK', 1, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Country"
           ("CountryId","CountryISO3","CountryName","CountryISO2","RegionId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'FIN', 'Finland', 'FI', 1, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Country"
           ("CountryId","CountryISO3","CountryName","CountryISO2","RegionId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 'NOR', 'Norway', 'NO', 1, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Country"
           ("CountryId","CountryISO3","CountryName","CountryISO2","RegionId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 'SWE', 'Sweden', 'SE', 1, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Country"
           ("CountryId","CountryISO3","CountryName","CountryISO2","RegionId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (5, 'GBR', 'United Kingdom', 'GB', 1, 1, NOW(), '9999-12-31 00:00:00', NULL);
--------------
INSERT INTO "Sales"."Customer"
           ("CustomerId","CustomerName","CustomerAddress1","CustomerAddress2","CustomerTown","CustomerPostalCode","IsCustomerReseller","IsCustomerCreditRisk","CustomerSpendCapacity","CountryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1,  'Sondra Horowitz', '10040 Great Western Road', NULL, 'Los Angeles','11345', 0, 0, NULL, 1, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Sales"."Customer"
           ("CustomerId","CustomerName","CustomerAddress1","CustomerAddress2","CustomerTown","CustomerPostalCode","IsCustomerReseller","IsCustomerCreditRisk","CustomerSpendCapacity","CountryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (88, 'Jimmy McFiddler', '57, Smile Square', NULL, 'Glasgow', 'G151AA', 1, 1, NULL, 1, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Sales"."Customer"
           ("CustomerId","CustomerName","CustomerAddress1","CustomerAddress2","CustomerTown","CustomerPostalCode","IsCustomerReseller","IsCustomerCreditRisk","CustomerSpendCapacity","CountryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (87, 'Andy Cheshire', '7, Wedgewood Steet', NULL, 'Stoke', 'ST4 2OZ', 0, 0, NULL, 2, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Sales"."Customer"
           ("CustomerId","CustomerName","CustomerAddress1","CustomerAddress2","CustomerTown","CustomerPostalCode","IsCustomerReseller","IsCustomerCreditRisk","CustomerSpendCapacity","CountryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (86, 'Francois Chirac', '2, Quai de l''Enfer', NULL, 'Paris', 'NE1 7DH', 0, 0, NULL, 2, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Sales"."Customer"
           ("CustomerId","CustomerName","CustomerAddress1","CustomerAddress2","CustomerTown","CustomerPostalCode","IsCustomerReseller","IsCustomerCreditRisk","CustomerSpendCapacity","CountryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (85, 'Alex McWhirter', '89, Harlequin Road', NULL, 'Newcastle', 'NE1 7DH', 0, 0, NULL, 3, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Sales"."Customer"
           ("CustomerId","CustomerName","CustomerAddress1","CustomerAddress2","CustomerTown","CustomerPostalCode","IsCustomerReseller","IsCustomerCreditRisk","CustomerSpendCapacity","CountryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (84, 'Francoise LeBru', '56, Rue Verte', NULL, 'Lausanne', '11234', 0, 0, NULL, 3, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Sales"."Customer"
           ("CustomerId","CustomerName","CustomerAddress1","CustomerAddress2","CustomerTown","CustomerPostalCode","IsCustomerReseller","IsCustomerCreditRisk","CustomerSpendCapacity","CountryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (83, 'Jacques Mitterand', '1 Quai des Pertes', NULL, 'Paris', '00000', 0, 0, NULL, 4, 1, NOW(), '9999-12-31 00:00:00', NULL);

INSERT INTO "Sales"."Customer"
           ("CustomerId","CustomerName","CustomerAddress1","CustomerAddress2","CustomerTown","CustomerPostalCode","IsCustomerReseller","IsCustomerCreditRisk","CustomerSpendCapacity","CountryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (82, 'Khader El Ghannam', '10, rue de Jemappes', '4eme etage', 'Paris', '00000', 0, 0, NULL, 4, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Sales"."Customer"
           ("CustomerId","CustomerName","CustomerAddress1","CustomerAddress2","CustomerTown","CustomerPostalCode","IsCustomerReseller","IsCustomerCreditRisk","CustomerSpendCapacity","CountryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (81, 'Pete Spring', '53, Pimlico Square', NULL, 'Manchester', 'M3 4WR', 0, 1, NULL, 4, 1, NOW(), '9999-12-31 00:00:00', NULL);

-----------

INSERT INTO "Sales"."Order"
           ("OrderId","InvoiceNumber","TotalPrice","Date","CustomerId","StaffId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 1, 38384.45, '2022-10-21 19:00:00', 88, 9, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Sales"."Order"
           ("OrderId","InvoiceNumber","TotalPrice","Date","CustomerId","StaffId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 2, 138384.45, '2022-09-21 19:00:00', 88, 9, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Sales"."Order"
           ("OrderId","InvoiceNumber","TotalPrice","Date","CustomerId","StaffId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 3, 70000.45, '2021-09-21 19:00:00', 84, 9, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Sales"."Order"
           ("OrderId","InvoiceNumber","TotalPrice","Date","CustomerId","StaffId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 3, 99999.45, '2021-09-21 19:10:00', 84, 2, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Sales"."Order"
           ("OrderId","InvoiceNumber","TotalPrice","Date","CustomerId","StaffId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (5, 4, 10000.00, '2016-09-21 19:10:00', 1, 2, 1, NOW(), '9999-12-31 00:00:00', NULL);
------------------
INSERT INTO "Manufacturer"."Category"
           ("CategoryName","CategoryId","UpperThreshold","LowerThreshold","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           ('Sports', 1, NULL, NULL, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Category"
           ("CategoryName","CategoryId","UpperThreshold","LowerThreshold","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           ('Luxury', 2, NULL, NULL, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Category"
           ("CategoryName","CategoryId","UpperThreshold","LowerThreshold","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           ('Family', 3, NULL, NULL, 1, NOW(), '9999-12-31 00:00:00', NULL);
----------------
INSERT INTO "Manufacturer"."Color"
           ("ColorId","ColorName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'White', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Color"
           ("ColorId","ColorName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'Black', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Color"
           ("ColorId","ColorName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 'Red', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Color"
           ("ColorId","ColorName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 'Yellow', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Color"
           ("ColorId","ColorName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (5, 'Grey', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Color"
           ("ColorId","ColorName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (6, 'Green', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Color"
           ("ColorId","ColorName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (7, 'Blue', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Color"
           ("ColorId","ColorName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (9, 'Pink', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Color"
           ("ColorId","ColorName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (10, 'Beige', 1, NOW(), '9999-12-31 00:00:00', NULL);

------------
INSERT INTO "Manufacturer"."FuelType"
           ("FuelTypeId","FuelType","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'Gasoline', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."FuelType"
           ("FuelTypeId","FuelType","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'Diesel', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."FuelType"
           ("FuelTypeId","FuelType","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 'Electric', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."FuelType"
           ("FuelTypeId","FuelType","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 'Hybrid', 1, NOW(), '9999-12-31 00:00:00', NULL);
------------------
INSERT INTO "Manufacturer"."DriveTrain"
           ("DriveTrainId","DriveTrainCode","DriveTrainDescription","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'AWD', 'all-wheel drive', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."DriveTrain"
           ("DriveTrainId","DriveTrainCode","DriveTrainDescription","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, '4WD', 'four-wheel drive', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."DriveTrain"
           ("DriveTrainId","DriveTrainCode","DriveTrainDescription","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'FWD', 'front-wheel drive', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."DriveTrain"
           ("DriveTrainId","DriveTrainCode","DriveTrainDescription","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'RWD', 'read-wheel drive', 1, NOW(), '9999-12-31 00:00:00', NULL);
-----------
INSERT INTO "Manufacturer"."Feature"
           ("FeatureId","FeatureName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'Leather Seats', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Feature"
           ("FeatureId","FeatureName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'Sunroof/Moonroof', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Feature"
           ("FeatureId","FeatureName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 'Heated Seats', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Feature"
           ("FeatureId","FeatureName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 'Backup Camera', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Feature"
           ("FeatureId","FeatureName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (5, 'Navigation System', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Feature"
           ("FeatureId","FeatureName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (6, 'Bluetooth', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Feature"
           ("FeatureId","FeatureName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (7, 'Remote Start', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Feature"
           ("FeatureId","FeatureName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (8, 'Blind Spot Monitoring', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Feature"
           ("FeatureId","FeatureName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (9, 'Third Row Seating', 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Feature"
           ("FeatureId","FeatureName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (10, 'USB Outlets', 1, NOW(), '9999-12-31 00:00:00', NULL);

----------------
INSERT INTO "Manufacturer"."Make"
           ("VehicleMakeId","VehicleMakeName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'Mercedes-Benz',1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Make"
           ("VehicleMakeId","VehicleMakeName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'Audi',1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Make"
           ("VehicleMakeId","VehicleMakeName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 'Hyundai',1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Make"
           ("VehicleMakeId","VehicleMakeName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 'Honda',1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Make"
           ("VehicleMakeId","VehicleMakeName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (5, 'Lucid',1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Make"
           ("VehicleMakeId","VehicleMakeName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (6, 'Nissan',1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Make"
           ("VehicleMakeId","VehicleMakeName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (7, 'Volkswagen',1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Make"
           ("VehicleMakeId","VehicleMakeName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (8, 'Subaru',1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Make"
           ("VehicleMakeId","VehicleMakeName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (9, 'Toyota',1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Make"
           ("VehicleMakeId","VehicleMakeName","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (10, 'Lamborghini',1, NOW(), '9999-12-31 00:00:00', NULL);
--------------------
INSERT INTO "Manufacturer"."Model"
           ("ModelId","ModelName","ModelVariant","BodyName","MakeId","CategoryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'A-Class', 'A220', 'Convertible', 1, 1, 1, NOW(), '9999-12-31 00:00:00', NULL);

INSERT INTO "Manufacturer"."Model"
           ("ModelId","ModelName","ModelVariant","BodyName","MakeId","CategoryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'A3', 'S4', 'SUV', 2, 2, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Model"
           ("ModelId","ModelName","ModelVariant","BodyName","MakeId","CategoryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 'A4', 'S5', 'SUV', 2, 2, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Model"
           ("ModelId","ModelName","ModelVariant","BodyName","MakeId","CategoryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 'A5', 'RS5', 'Wagon', 2, 4, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Model"
           ("ModelId","ModelName","ModelVariant","BodyName","MakeId","CategoryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (5, 'A7', 'S3', 'Coupe', 2, 4, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Model"
           ("ModelId","ModelName","ModelVariant","BodyName","MakeId","CategoryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (6, 'A8', 'RS5', 'Hatchback', 2, 4, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Model"
           ("ModelId","ModelName","ModelVariant","BodyName","MakeId","CategoryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (7, 'A6', 'S3', 'Sedan', 2, 1, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Model"
           ("ModelId","ModelName","ModelVariant","BodyName","MakeId","CategoryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (8, 'Accent', 'SEL', 'Crew Cab', 3, 3, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Model"
           ("ModelId","ModelName","ModelVariant","BodyName","MakeId","CategoryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (9, 'Ariya', 'Proto Spec Automatic', 'Coupe', 6, 1, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Model"
           ("ModelId","ModelName","ModelVariant","BodyName","MakeId","CategoryId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (10, 'Armada', 'Proto Spec Automatic', 'Convertible', 6, 1, 1, NOW(), '9999-12-31 00:00:00', NULL);
--------------
INSERT INTO "Manufacturer"."Trim"
           ("TrimId","TrimName","TrimLevel","ModelId","MakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'Premium', 3, 1, 1,1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Trim"
           ("TrimId","TrimName","TrimLevel","ModelId","MakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'Exclusive', 2, 1, 1,1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Trim"
           ("TrimId","TrimName","TrimLevel","ModelId","MakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 'Pinnacle', 1, 1, 1,1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Trim"
           ("TrimId","TrimName","TrimLevel","ModelId","MakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 'Premium', 1, 2, 2,1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Trim"
           ("TrimId","TrimName","TrimLevel","ModelId","MakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 'Premium Plus', 2, 2, 2,1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Trim"
           ("TrimId","TrimName","TrimLevel","ModelId","MakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 'Prestige', 3, 2, 2,1, NOW(), '9999-12-31 00:00:00', NULL);
------------------
INSERT INTO "Manufacturer"."Engine"
           ("EngineId","EngineDisplacement","EngineCylinderCount","EngineMaxHorsepower","EngineMaxTorque","VehicleMakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 2.0, 4, 209, 207,1 ,1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Engine"
           ("EngineId","EngineDisplacement","EngineCylinderCount","EngineMaxHorsepower","EngineMaxTorque","VehicleMakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 1.2, 4, 200, 200,2, 1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Engine"
           ("EngineId","EngineDisplacement","EngineCylinderCount","EngineMaxHorsepower","EngineMaxTorque","VehicleMakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 1.4, 3, 190, 200,2 ,1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Engine"
           ("EngineId","EngineDisplacement","EngineCylinderCount","EngineMaxHorsepower","EngineMaxTorque","VehicleMakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 1.5, 3, 190, 200,2 ,1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."Engine"
           ("EngineId","EngineDisplacement","EngineCylinderCount","EngineMaxHorsepower","EngineMaxTorque","VehicleMakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (5, 1.5, 3, 190, 300,2 ,1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."TransmissionType"
           ("TransmissionTypeId","TransmissionType","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'Automatic',1, NOW(), '9999-12-31 00:00:00', NULL);
INSERT INTO "Manufacturer"."TransmissionType"
           ("TransmissionTypeId","TransmissionType","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'Manual',1, NOW(), '9999-12-31 00:00:00', NULL);
-----------
INSERT INTO "Manufacturer"."Transmission"
           ("TransmissionId","TransmissionName","Transmission GearCount","TransmissionTypeId","VehicleMakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'Dual Clutch', 6, 1, 2,1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Transmission"
           ("TransmissionId","TransmissionName","Transmission GearCount","TransmissionTypeId","VehicleMakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'Dual Clutch', 7, 1, 2,1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Transmission"
           ("TransmissionId","TransmissionName","Transmission GearCount","TransmissionTypeId","VehicleMakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 'Dual Clutch', 8, 1, 2,1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Transmission"
           ("TransmissionId","TransmissionName","Transmission GearCount","TransmissionTypeId","VehicleMakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (4, 'Dual Clutch', 6, 1, 1,1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Transmission"
           ("TransmissionId","TransmissionName","Transmission GearCount","TransmissionTypeId","VehicleMakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (5, 'Dual Clutch', 7, 1, 1,1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Transmission"
           ("TransmissionId","TransmissionName","Transmission GearCount","TransmissionTypeId","VehicleMakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (6, 'Dual Clutch', 8, 1, 1,1, NOW(), '9999-12-31 00:00:00', NULL );

----------------

INSERT INTO "Manufacturer"."Vehicle"
("VinNumber","VehicleId","VehicleYear","ModelId","MakeId","VehicleMakeId","ManufacturerCountryId","EngineId","DriveTrainId","FuelTypeId","TransmissionId","ColorId","TrimId","MSRP","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
		('WAUDNAF48KA0495', 1, '2020', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 150000.00, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Vehicle"
("VinNumber","VehicleId","VehicleYear","ModelId","MakeId","VehicleMakeId","ManufacturerCountryId","EngineId","DriveTrainId","FuelTypeId","TransmissionId","ColorId","TrimId","MSRP","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
		('WAUDNAF48KA0497', 2, '2021', 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 110000.00, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Vehicle"
("VinNumber","VehicleId","VehicleYear","ModelId","MakeId","VehicleMakeId","ManufacturerCountryId","EngineId","DriveTrainId","FuelTypeId","TransmissionId","ColorId","TrimId","MSRP","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
		('WAUDNAF48KA0097', 3, '2021', 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 170000.00, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Vehicle"
("VinNumber","VehicleId","VehicleYear","ModelId","MakeId","VehicleMakeId","ManufacturerCountryId","EngineId","DriveTrainId","FuelTypeId","TransmissionId","ColorId","TrimId","MSRP","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
		('WAUDNAF48QA0000', 4, '2022', 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 140000.00, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Vehicle"
("VinNumber","VehicleId","VehicleYear","ModelId","MakeId","VehicleMakeId","ManufacturerCountryId","EngineId","DriveTrainId","FuelTypeId","TransmissionId","ColorId","TrimId","MSRP","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
		('WAUDNAF48FQ000q', 5, '2022', 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 140000.00, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Vehicle"
("VinNumber","VehicleId","VehicleYear","ModelId","MakeId","VehicleMakeId","ManufacturerCountryId","EngineId","DriveTrainId","FuelTypeId","TransmissionId","ColorId","TrimId","MSRP","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
		('WAUDNAF48FQ0009', 6, '2022', 2, 2, 2, 1, 1, 1, 1, 1, 3, 1, 240000.00, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Vehicle"
("VinNumber","VehicleId","VehicleYear","ModelId","MakeId","VehicleMakeId","ManufacturerCountryId","EngineId","DriveTrainId","FuelTypeId","TransmissionId","ColorId","TrimId","MSRP","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
		('FAUDNAF48FQ0009', 7, '2022', 2, 2, 2, 1, 1, 1, 1, 1, 4, 1, 100000.00, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."Vehicle"
("VinNumber","VehicleId","VehicleYear","ModelId","MakeId","VehicleMakeId","ManufacturerCountryId","EngineId","DriveTrainId","FuelTypeId","TransmissionId","ColorId","TrimId","MSRP","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
		('FQUDNAF48FQ0009', 8, '2022', 2, 3, 3, 2, 1, 1, 1, 1, 2, 1, 100000.00, 1, NOW(), '9999-12-31 00:00:00', NULL );

-----------
INSERT INTO "Manufacturer"."FeatureVehicle"
           ("Feature_Id","VehicleId","Feature_Vehicle_Id","TrimId","ModelId","MakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 1, 1, 1, 1, 1, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."FeatureVehicle"
           ("Feature_Id","VehicleId","Feature_Vehicle_Id","TrimId","ModelId","MakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 1, 2, 1, 1, 1, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."FeatureVehicle"
           ("Feature_Id","VehicleId","Feature_Vehicle_Id","TrimId","ModelId","MakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 1, 3, 1, 1, 1, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."FeatureVehicle"
           ("Feature_Id","VehicleId","Feature_Vehicle_Id","TrimId","ModelId","MakeId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 2, 4, 1, 1, 1, 1, NOW(), '9999-12-31 00:00:00', NULL );

-----------
INSERT INTO "Manufacturer"."VehicleStock"
           ("StockId","StockCode","MakeId","TrimId","RepairsCharge","PartsCharge","DeliveryCharge","CusomerComments","PurchaseDate","VehicleId","ModelId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 'SC1', 1, 1, 2333.00, 1233.33, 334.33, NULL, '2016-10-11 19:00:00', 1, 1, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."VehicleStock"
           ("StockId","StockCode","MakeId","TrimId","RepairsCharge","PartsCharge","DeliveryCharge","CusomerComments","PurchaseDate","VehicleId","ModelId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 'SC2', 2, 2, 2000.00, 2233.33, 1334.33, NULL, '2018-10-11 19:00:00', 1, 1, 1, NOW(), '9999-12-31 00:00:00', NULL );
INSERT INTO "Manufacturer"."VehicleStock"
           ("StockId","StockCode","MakeId","TrimId","RepairsCharge","PartsCharge","DeliveryCharge","CusomerComments","PurchaseDate","VehicleId","ModelId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (3, 'SC3', 2, 2, 12000.00, 2233.33, 6334.33, NULL, '2022-10-11 19:00:00', 2, 2, 1, NOW(), '9999-12-31 00:00:00', NULL );
----------------
INSERT INTO "Sales"."OrderVehicle"
           ("OrderId","VehicleId","ModelId","MakeId","TrimId","CustomerId","OrderVehicleId","LineItemNumber","Price","Discount","StaffId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (1, 1, 1, 1, 1, 1, 1, 1,150000.00, 20, 9, 1, NOW(), '9999-12-31 00:00:00' ,NULL)
;
INSERT INTO "Sales"."OrderVehicle"
           ("OrderId","VehicleId","ModelId","MakeId","TrimId","CustomerId","OrderVehicleId","LineItemNumber","Price","Discount","StaffId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 1, 1, 1, 1, 1, 2,1, 210000.00, 10, 9, 1, NOW(), '9999-12-31 00:00:00' ,NULL)
;
INSERT INTO "Sales"."OrderVehicle"
           ("OrderId","VehicleId","ModelId","MakeId","TrimId","CustomerId","OrderVehicleId","LineItemNumber","Price","Discount","StaffId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 1, 1, 1, 1, 1, 3,1, 210000.00, 10, 9, 1, NOW(), '9999-12-31 00:00:00' ,NULL)
;
INSERT INTO "Sales"."OrderVehicle"
           ("OrderId","VehicleId","ModelId","MakeId","TrimId","CustomerId","OrderVehicleId","LineItemNumber","Price","Discount","StaffId","UserAuthorizationId","SysStartTime","SysEndTime","RowLevelHashKey")
     VALUES
           (2, 1, 1, 1, 1, 1, 4,1, 110000.00, 10, 9, 1, NOW(), '9999-12-31 00:00:00' ,NULL)
;