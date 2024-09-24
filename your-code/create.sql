DROP DATABASE IF EXISTS cars;
CREATE DATABASE cars; 
USE lab_mysql;

SHOW TABLES;

CREATE TABLE IF NOT EXISTS cars (
	car_id INT NOT NULL AUTO_INCREMENT,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(30) NOT NULL,
    model VARCHAR(30) NOT NULL,
    `year` INT NOT NULL,
	color VARCHAR(20) NOT NULL,
    PRIMARY KEY (car_id)
    );

 CREATE TABLE IF NOT EXISTS salesperson (
	staff_id INT NOT NULL AUTO_INCREMENT,
    staff_name VARCHAR(30) NOT NULL,
    store VARCHAR(30) NOT NULL,
    PRIMARY KEY (staff_id)
    );

 CREATE TABLE IF NOT EXISTS customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    phone VARCHAR(30),
    email VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    zip VARCHAR(100),
    PRIMARY KEY (customer_id)
    );

 CREATE TABLE IF NOT EXISTS invoices (
	invoice_id INT NOT NULL AUTO_INCREMENT,
	`date` DATE,
    car_id INT NOT NULL,
	customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    PRIMARY KEY (invoice_id),
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES salesperson(staff_id)
    );

