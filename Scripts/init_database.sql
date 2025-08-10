/*
=============================================================
Create Database and Schemas - Data Warehouse Project
=============================================================
WARNING:
    Running this script will DROP the 'DataWarehouse' database if it exists.
    All existing data will be lost. Take backups before running.
=============================================================
*/

USE master;
GO

-- Drop existing database if it exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END
GO

-- Create database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
GO

