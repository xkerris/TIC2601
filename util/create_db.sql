-- Create database 'tic2601'
CREATE DATABASE IF NOT EXISTS tic2601;

-- Create user 'user1' with password 'password1'
CREATE USER IF NOT EXISTS 'user1'@'localhost' IDENTIFIED BY 'password1';

-- Grant user all privilege
GRANT ALL PRIVILEGES ON tic2601.* TO 'user1'@'localhost';