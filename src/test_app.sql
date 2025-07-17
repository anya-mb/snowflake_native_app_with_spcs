-- Grant the CREATE COMPUTE POOL privilege to the app 
USE ROLE ACCOUNTADMIN;
GRANT CREATE COMPUTE POOL ON ACCOUNT TO APPLICATION na_spcs_tutorial_app;
GRANT BIND SERVICE ENDPOINT ON ACCOUNT TO APPLICATION na_spcs_tutorial_app;

-- Run the app_public.start_app procedure we defined in the setup_script.sql file
-- This procedure creates the compute pool, instantiate the service, and creates the service function.
CALL na_spcs_tutorial_app.app_public.start_app();

-- Confirm the function was created
SHOW FUNCTIONS LIKE '%my_echo_udf%' IN APPLICATION na_spcs_tutorial_app;

-- Consumers cannot see the running service because it runs as part of the Snowflake Native App. 
--For example, running SHOW SERVICES IN APPLICATION na_spcs_tutorial_app; does not return anything.

-- To verify that the service has been created and healthy
CALL na_spcs_tutorial_app.app_public.service_status();

-- If the value in the status column is not READY, execute the statement again, until the status of the service container is READY.

-- To call the service function to send a request to the service and verify the response
SELECT na_spcs_tutorial_app.core.my_echo_udf('hello');
