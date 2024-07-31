## Challenge 1 - Design the Database

## Design an **Entity-Relationship (E-R) diagram** for your database.

## The database should have at least four tables: `cars`, `customers`, `salespersons` and `invoices`.

DROP DATABASE IF EXISTS dealership;

CREATE database IF NOT exists dealership;

use dealership;

# drop table dealership.cars if exists; 
create table if not exists customers (customer_ID int primary key,
										    name varchar(50),
											phone_number varchar(50),
                                            email varchar (100),
                                            address varchar (70),
                                            city varchar (30),
                                            state_province varchar (30),
                                            country varchar (30),
                                            zipcode int(50);


create table if not exists cars (vin int primary key,
										    manufacturer varchar(50),
											model varchar(30),
                                            year int,
                                            color varchar (30) default 'black');

                                            
create table if not exists salespersons (staff_ID int primary key,
										    name varchar(50),
											Store varchar(10);

create table if not exists invoices (invoice_number int primary key,
										    Inv_date date,
											vin int,
                                            customer_ID int,
                                            staff_ID int,;