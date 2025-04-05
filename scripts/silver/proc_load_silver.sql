DO $$
DECLARE
    start_time TIMESTAMP;
    end_time TIMESTAMP;
    batch_start_time TIMESTAMP := CURRENT_TIMESTAMP;
    batch_end_time TIMESTAMP;
BEGIN
    RAISE NOTICE '================================================';
    RAISE NOTICE 'Loading Silver Layer';
    RAISE NOTICE '================================================';

    RAISE NOTICE '------------------------------------------------';
    RAISE NOTICE 'Loading CRM Tables';
    RAISE NOTICE '------------------------------------------------';

    -- Load silver.crm_cust_info
    start_time := clock_timestamp();
    TRUNCATE TABLE silver.crm_cust_info;
    RAISE NOTICE '>> Truncating Table: silver.crm_cust_info';

    INSERT INTO silver.crm_cust_info (
        cst_id, cst_key, cst_firstname, cst_lastname,
        cst_marital_status, cst_gndr, cst_create_date
    )
    SELECT
        cst_id,
        cst_key,
        TRIM(cst_firstname),
        TRIM(cst_lastname),
        CASE 
            WHEN UPPER(TRIM(cst_marital_status)) = 'S' THEN 'Single'
            WHEN UPPER(TRIM(cst_marital_status)) = 'M' THEN 'Married'
            ELSE 'n/a'
        END,
        CASE 
            WHEN UPPER(TRIM(cst_gndr)) = 'F' THEN 'Female'
            WHEN UPPER(TRIM(cst_gndr)) = 'M' THEN 'Male'
            ELSE 'n/a'
        END,
        cst_create_date
    FROM (
        SELECT *, ROW_NUMBER() OVER (PARTITION BY cst_id ORDER BY cst_create_date DESC) AS flag_last
        FROM bronze.crm_cust_info
        WHERE cst_id IS NOT NULL
    ) t
    WHERE flag_last = 1;

    end_time := clock_timestamp();
    RAISE NOTICE '>> Load Duration: % seconds', EXTRACT(SECOND FROM end_time - start_time);

    -- Repeat similar block for all other tables
    -- Truncate + Insert logic for:
    -- silver.crm_prd_info
    -- silver.crm_sales_details
    -- silver.erp_cust_az12
    -- silver.erp_loc_a101
    -- silver.erp_px_cat_g1v2

    batch_end_time := clock_timestamp();
    RAISE NOTICE '==========================================';
    RAISE NOTICE 'Loading Silver Layer is Completed';
    RAISE NOTICE '   - Total Load Duration: % seconds', EXTRACT(SECOND FROM batch_end_time - batch_start_time);
    RAISE NOTICE '==========================================';

EXCEPTION WHEN OTHERS THEN
    RAISE NOTICE '==========================================';
    RAISE NOTICE 'ERROR OCCURRED DURING LOADING SILVER LAYER';
    RAISE NOTICE 'Error: %', SQLERRM;
    RAISE NOTICE '==========================================';
END
$$ LANGUAGE plpgsql;
