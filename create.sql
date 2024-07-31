
CREATE DATABASE IF NOT EXISTS lab_mysql;
	
USE lab_mysql;
    
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (vin char(50) primary key,
										manufacturer varchar(50),
										model varchar(30),
										year int,
										color varchar (30) default 'black'
										);
                                        
DROP TABLE IF EXISTS salespersons;
create table salespersons (staff_ID int primary key,
										name varchar(50),
										Store varchar(30)
										);

DROP TABLE IF EXISTS invoices;
create table invoices(invoice_number int primary key,
										Inv_date date,
										vin char(50),
										customer_ID int,
										staff_ID int);
DROP TABLE IF EXISTS customers;
create table if not exists customers(customer_ID int primary key,
										    name varchar(50),
											phone_number varchar(50),
                                            email varchar (100),
                                            address varchar (70),
                                            city varchar (30),
                                            state_province varchar (30),
                                            country varchar (30),
                                            zipcode varchar (30));