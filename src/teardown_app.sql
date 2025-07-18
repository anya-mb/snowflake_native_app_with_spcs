-- https://docs.snowflake.com/en/developer-guide/native-apps/tutorials/na-spcs-tutorial#learn-more
-- Run in terminal

USE ROLE ACCOUNTADMIN;
DROP COMPUTE POOL IF EXISTS my_echo_service_pool;
DROP SERVICE IF EXISTS tutorial_image_database.tutorial_image_schema.my_echo_service;
DROP FUNCTION IF EXISTS tutorial_image_database.tutorial_image_schema.my_echo_udf(string);
DROP APPLICATION IF EXISTS na_spcs_tutorial_app;
DROP IMAGE REPOSITORY IF EXISTS tutorial_image_database.tutorial_image_schema.tutorial_image_repo;  
DROP SCHEMA IF EXISTS tutorial_image_database.tutorial_image_schema;
DROP DATABASE IF EXISTS tutorial_image_database;
DROP ROLE IF EXISTS tutorial_role;
DROP WAREHOUSE IF EXISTS tutorial_warehouse;