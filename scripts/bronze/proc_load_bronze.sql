/* 
=================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
=================================================================
Script Purpose:
    This stored procedure loads data into the bronze schema form external csv files.
    It performs the following actions:
    - Truncate the bronze tables before loading data.
    - Uses the 'Bulk Insert' command to load data form csv files to bronze tables.

Parameters:
  None. 
This stored procedure does not accept any parameters ro return any values.

Usage Example:
  Exec bronze.sp_load_all_source_data;
=====================================================================
*/

IF OBJECT_ID('bronze.sp_load_all_source_data', 'P') IS NOT NULL
    DROP PROCEDURE bronze.sp_load_all_source_data;
GO
create procedure bronze.sp_load_all_source_data as 
begin
	declare @start_time datetime, @end_time datetime, @batch_start_time datetime, @batch_end_time datetime;
	begin try
		set @batch_start_time = GETDATE();
		print'=============================================';
		print'Loading the Bronze Layer ';
		print'=============================================';


		print'---------------------------------------------';
		print'Loading crm tables';
		print'---------------------------------------------';
		if object_id('bronze.crm_cust_info', 'U') is not null
			drop table bronze.crm_cust_info;
		create table bronze.crm_cust_info(
			cst_id			int,
			cst_key			nvarchar(50),
			cst_firstname	nvarchar(50),
			cst_lastname	nvarchar(50),
			cst_marital_status varchar(10),
			cst_gndr	nvarchar (50),
			cst_create_date date
		);

		set @start_time = GETDATE();
		print 'Truncating table : bronze.crm_cust_info';
		truncate table bronze.crm_cust_info;

		print'Inserting data into table: bronze.crm_cust_info';
		bulk insert bronze.crm_cust_info
		from 'C:\Users\Sagu0\OneDrive\Desktop\NEW PROJECT\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
		with (
			firstrow = 2,
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n',
			TABLOCK
		);
		set @end_time = GETDATE();
		print '>> Load Duration:' + cast(datediff(second, @start_time, @end_time) as nvarchar) + 'seconds';
		print'-----------------------------------------';

		--select * from bronze.crm_cust_info;

		if object_id('bronze.crm_prd_info', 'U') is not null
			drop table bronze.crm_prd_info;
		create table bronze.crm_prd_info(
			prd_id			int,
			prd_key			nvarchar(50),
			prd_nm			nvarchar(50),
			prd_cost		nvarchar(50),
			prd_line		nvarchar(10),
			prd_start_dt	date,
			prd_end_date	date
		);

		set @start_time = getdate();
		print 'Truncating table : bronze.crm_prd_info';
		truncate table bronze.crm_prd_info;

		print'Inserting data into table: bronze.crm_prd_info';
		bulk insert bronze.crm_prd_info
		from 'C:\Users\Sagu0\OneDrive\Desktop\NEW PROJECT\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
		with (
			firstrow = 2,
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n',
			TABLOCK
		);
		set @end_time = getdate();
		print '>> Load Duration:' + cast(datediff(second, @start_time, @end_time) as nvarchar) + 'seconds';
		print'-----------------------------------------';

		--select * from bronze.crm_prd_info;

		if object_id('bronze.crm_sales_details', 'U') is not null
			drop table bronze.crm_sales_details;
		create table bronze.crm_sales_details(
			sls_ord_num		nvarchar(50),
			sls_prd_key		nvarchar(50),
			sls_cust_id		int,
			sls_order_dt	nvarchar(50),
			sls_ship_dt		nvarchar(50),
			sls_due_dt		nvarchar(50),
			sls_sale		nvarchar (50),
			sls_quantity	nvarchar(50),
			sls_price		nvarchar(50)
		);

		set @start_time = GETDATE();
		print 'Truncating table : bronze.crm_sales_details';
		truncate table bronze.crm_sales_details;

		print 'Inserting data into table : bronze.crm_sales_details';
		bulk insert bronze.crm_sales_details
		from 'C:\Users\Sagu0\OneDrive\Desktop\NEW PROJECT\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
		with (
			firstrow = 2,
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n',
			TABLOCK
		);
		set @end_time = getdate();
		print '>> Load Duration:' + cast(datediff(second, @start_time, @end_time) as nvarchar) + 'seconds';
		print'-----------------------------------------';

		--select * from bronze.crm_sales_details;


		print'---------------------------------------------';
		print'Loading erp tables';
		print'---------------------------------------------';
		if object_id('bronze.erp_CUST_AZ12', 'U') is not null
			drop table bronze.erp_CUST_AZ12;
		create table bronze.erp_CUST_AZ12(
			CID				NVARCHAR(50),
			BDATE			DATE,
			GEN				NVARCHAR(10)
		);

		set @start_time = GETDATE();
		print 'Truncating table : bronze.erp_CUST_AZ12';
		truncate table bronze.erp_CUST_AZ12;

		print 'Inserting data into table : bronze.erp_CUST_AZ12';
		bulk insert bronze.erp_CUST_AZ12
		from 'C:\Users\Sagu0\OneDrive\Desktop\NEW PROJECT\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
		with (
			firstrow = 2,
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n',
			TABLOCK
		);
		set @end_time = getdate();
		print '>> Load Duration:' + cast(datediff(second, @start_time, @end_time) as nvarchar) + 'seconds';
		print'-----------------------------------------';

		--select * from bronze.erp_CUST_AZ12;

		if object_id('bronze.erp_LOC_A101', 'U') is not null
			drop table bronze.erp_LOC_A101;
		CREATE TABLE bronze.erp_LOC_A101(
			CID				NVARCHAR(50),
			CNTRY			NVARCHAR(50)
		);

		set @start_time = GETDATE();
		print 'Truncating table : bronze.erp_LOC_A101';
		truncate table bronze.erp_LOC_A101;

		print 'Inserting data into table : bronze.erp_LOC_A101';
		bulk insert bronze.erp_LOC_A101
		from 'C:\Users\Sagu0\OneDrive\Desktop\NEW PROJECT\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
		with (
			firstrow = 2,
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n',
			TABLOCK
		);
		set @end_time = getdate();
		print '>> Load Duration:' + cast(datediff(second, @start_time, @end_time) as nvarchar) + 'seconds';
		print'-----------------------------------------';

		--select * from  bronze.erp_LOC_A101;

		if object_id('bronze.erp_PX_CAT_G1V2', 'U') is not null
			drop table bronze.erp_PX_CAT_G1V2;
		CREATE TABLE bronze.erp_PX_CAT_G1V2(
		ID					NVARCHAR(50),
		CAT					NVARCHAR(50),
		SUBCAT				NVARCHAR(50),
		MAINTENANCE			NVARCHAR(50)
		);

		set @start_time = GETDATE();
		print 'Truncating table : bronze.erp_PX_CAT_G1V2';
		truncate table bronze.erp_PX_CAT_G1V2;

		print 'Inserting data into table : bronze.erp_PX_CAT_G1V2';
		bulk insert bronze.erp_PX_CAT_G1V2
		from 'C:\Users\Sagu0\OneDrive\Desktop\NEW PROJECT\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
		with (
			firstrow = 2,
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n',
			TABLOCK
		);
		set @end_time = getdate();
		print '>> Load Duration:' + cast(datediff(second, @start_time, @end_time) as nvarchar) + 'seconds';
		print'-----------------------------------------';


		--select * from bronze.erp_PX_CAT_G1V2;

		set @batch_end_time = GETDATE();
		print'==========================================';
		print'Loading Bronze Laeyr is Completed:';
		print'	- Total Loading Duration:' + cast(datediff(second, @batch_start_time,@batch_end_time) as nvarchar) + 'seconds';
		print'==========================================';

		PRINT '✅ All source files loaded successfully into Bronze layer.';
		end try
		begin catch
		print'Error occured during loading bronze layer:';
		print'Error messagae' + error_message();
		print('Error message') + cast(error_number() as nvarchar);
		end catch
end;
go


exec bronze.sp_load_all_source_data;
