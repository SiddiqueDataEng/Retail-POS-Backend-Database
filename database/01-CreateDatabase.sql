/*
 * Retail POS Backend Database
 * Project #14 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, Index Optimization
 * Created: 2012
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'POS_DB')
BEGIN
    ALTER DATABASE POS_DB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE POS_DB;
END
GO

CREATE DATABASE POS_DB
ON PRIMARY
(
    NAME = 'POS_DB_Data',
    FILENAME = 'C:\SQLData\POS_DB_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'POS_DB_Log',
    FILENAME = 'C:\SQLData\POS_DB_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE POS_DB SET RECOVERY SIMPLE;
ALTER DATABASE POS_DB SET AUTO_UPDATE_STATISTICS ON;
GO

USE POS_DB;
GO

PRINT 'Database POS_DB created successfully';
PRINT 'Project: Retail POS Backend Database';
PRINT 'Description: High-volume point-of-sale transaction support';
GO
