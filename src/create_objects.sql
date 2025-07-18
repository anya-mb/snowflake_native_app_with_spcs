USE ROLE tutorial_role;

CREATE OR REPLACE WAREHOUSE tutorial_warehouse WITH
  WAREHOUSE_SIZE = 'X-SMALL'
  AUTO_SUSPEND = 180
  AUTO_RESUME = true
  INITIALLY_SUSPENDED = false;

CREATE DATABASE tutorial_image_database;
CREATE SCHEMA tutorial_image_schema;
CREATE IMAGE REPOSITORY tutorial_image_repo;

