-- Create and use the database
CREATE DATABASE IF NOT EXISTS my_app_db;
USE DATABASE my_app_db;

-- Create a stage for your app files
CREATE OR REPLACE STAGE my_app_stage;

-- Upload files to the stage
PUT file://manifest.yml @my_app_stage;
PUT file://setup.sql @my_app_stage;

-- Create the application package
CREATE OR REPLACE APPLICATION PACKAGE my_app_package;

-- Add a version to your application package
ALTER APPLICATION PACKAGE my_app_package
  ADD VERSION v1
  USING '@my_app_stage'
  LABEL = 'Version 1';

-- Set the release directive
ALTER APPLICATION PACKAGE my_app_package
  SET DEFAULT RELEASE DIRECTIVE
  VERSION = v1;

-- Test the application (uncomment when ready to test)
-- USE APPLICATION PACKAGE my_streamlit_app_package;
-- ALTER APPLICATION PACKAGE my_streamlit_app_package SET DEVELOPMENT ON;
-- CALL DEPLOY_STREAMLIT_APP();
-- ALTER APPLICATION PACKAGE my_streamlit_app_package SET DEVELOPMENT OFF;