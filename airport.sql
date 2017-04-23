drop database if exists airport;
create database airport;
use airport;

create table Customer (
	id int primary key auto_increment,
    user_name varchar(20),
    user_surname varchar(20),
    age int,
    phone_number varchar(11),
    email varchar(20)
);

create table Airport (
		id int primary key auto_increment,
        email varchar(25),
        phone varchar(11),
        website varchar(20)
);

create table Tickets (
	id int primary key auto_increment,
    country varchar(20),
	days int,
	season varchar(15),
    price int
);

create table Customer_orders (
	id_customer int,
    id_airport int,
    id_tickets int,
    constraint fk_2 foreign key(id_customer) references Customer(id),
    constraint fk_3 foreign key(id_airport) references Airport(id),
    constraint fk_4 foreign key(id_tickets) references Tickets(id)
);


insert into Customer (
	user_name,
    user_surname,
    age,
    phone_number,
    email
) values (
	"Mukola",
    "Ivanov",
    30,
    "+3789878832",
    "sdsd@ukr.net"
),(
	"Vanya",
    "Pushkin",
    28,
    "+267879800",
    "pushlin@gmail.com"
),(
	"Masha",
    "Bobo",
    28,
    "+4876856769",
    "boboshka@i.ua"
);

insert into Airport (
	email,
    phone,
    website
) values (
	"fly@airport.ua",
    "+380937882",
    "www.airport.ua"
);

insert into Tickets (
	country,
    days,
    season,
    price
) values (
	"Poland",
    5,
    "summer",
    150
),(
	"France",
    3,
    "winter",
    200
)
















