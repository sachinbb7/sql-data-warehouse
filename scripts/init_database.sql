/*
=============================================================
Create Database and Schemas in PostgreSQL
=============================================================
Script Purpose:
    - This script creates a new database named 'DataWarehouse'.
    - If the database already exists, it must be dropped manually before running this.
    - It also creates three schemas: 'bronze', 'silver', and 'gold'.
	
WARNING:
    - PostgreSQL does NOT support dropping and recreating a database in a single script.
    - If the database exists, manually drop it using: DROP DATABASE DataWarehouse;
*/

-- Step 1: Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

-- Step 2: Connect to 'DataWarehouse' (Manual in pgAdmin or use \c in psql)
-- \c DataWarehouse  (Use this in psql command line, but not in pgAdmin)

-- Step 3: Create Schemas within the 'DataWarehouse' database
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
