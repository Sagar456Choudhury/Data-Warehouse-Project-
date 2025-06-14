/* 
===============================================================================
Create Database and Schemas
=========================================================================
Scripts Purpose:
  This scripts creates a new database named 'DataWarehouse' after checking if it already exists.
  If teh database exists, it will drop and recreate it. Addititonally, the scripts sets up the three schemas
  within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Running this scirpts will drop the enitre 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution 
  and insure you have proper backups before running this scripts. 
*/

USE master;
go

-- Drop and recreate the 'Datawarehouse' database
if exists (select 1 from sys.database where name = 'DataWarehouse')
begin 
  alter database DataWarehouse set single_user with rollback immediate;
  drop database DataWarehouse;
end;
go

-- Create The Database 'DataWarehouse' database
create database DataWarehouse;
go

use DataWarehouse;
go

-- Create Schemas:
Create Schema bronze;
go

create schema silver;
go

create schema gold;
go
















