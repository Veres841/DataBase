drop database if exists railway;
create database railway;
use railway;

create table Railway (
	id int primary key auto_increment,
    train varchar (20),
    phone varchar (20),
    email varchar (30),
    website varchar( 20)
);

create table Users (
id int primary key auto_increment,
 name varchar (20),
 surname varchar( 25),
 age int (2),
 phone varchar (15),
 email varchar (15),
)