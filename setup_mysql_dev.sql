-- Creates a MySQL server with database hbnb_dev.db
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
-- Create the user if user deosn't exit already.
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
-- Grant all benefits on hbnb_dev_db to hbnb_dev
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';
-- Grant SELECT privilege on performance_schema to hbnb_dev
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
-- Flush privileges to apply changes
FLUSH PRIVILEGES;
