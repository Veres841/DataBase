drop database if exists railway;
create database railway;
use railway;

create table Railway (
	id int primary key auto_increment,
    train varchar(20),
    phone varchar(20),
    email varchar(30),
    website varchar(20)
);
