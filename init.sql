-- Description: Initialize the database
CREATE DATABASE prod;

-- Switch to the database
USE prod;

-- Create table
CREATE TABLE employee
  (
     id   INT NOT NULL auto_increment,
     name VARCHAR(255) NOT NULL,
     age  INT NOT NULL,
     PRIMARY KEY (id)
  );

-- Insert data
INSERT INTO employee (name, age) VALUES ('zhangsan', 20);
INSERT INTO employee (name, age) VALUES ('lisi', 21);

-- Create table
CREATE TABLE employee_csv
(
   id   INT NOT NULL auto_increment,
   name VARCHAR(255) NOT NULL,
   age  INT NOT NULL,
   PRIMARY KEY (id)
);

-- Load data from CSV file
LOAD DATA INFILE '/var/lib/mysql-files/data.csv'
INTO TABLE employee_csv
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
(name, age);