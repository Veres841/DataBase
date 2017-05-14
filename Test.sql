drop database if exists test;
create database test;
use test;

create table Employees (
		ID int primary key auto_increment,
        Name varchar(30),
        Birthday date,
        Email varchar(30),
        Departmen varchar(30)
);

insert into Employees(
		Name,
        Birthday,
        Email,
        Departmen
) values (
		"Mukola",
        null,
        "xxx@gmail.com",
        "IT"
),(
		"Mariya",
        null,
        "mariya@gmail.com",
        "bos"
)