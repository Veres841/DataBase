drop database if exists Test;
create database Test;
use Test;

create table Employees (
		ID int,
        Name varchar(30),
        Birthday date,
        Email varchar(30),
        Position varchar(30),
        Departmen varchar(30)
)
