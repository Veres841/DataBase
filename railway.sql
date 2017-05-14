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
 email varchar (15)
);

create table Schedules (
	id int primary key auto_increment,
    place_of_arrive varchar (15),
    departure_time varchar (6),
    arrival_time varchar (6)
);

create table Ticket (
	cost varchar (8),
    number int (10)
);

create table Users_comuniti (
	id_users int,
    id_railway int,
    id_schedules int,
    constraint fk_2 foreign key(id_users) references Users(id),
    constraint fk_1 foreign key(id_railway) references Railway(id),
    constraint fk_3 foreign key(id_schedules) references Schedules(id)
);

create table Users_order (
	id_users int,
    id_tickets int,
    constraint fk_5 foreign key(id_users) references Users(id),
    constraint fk_4 foreign key(id_tickets) references Ticket(id)
);

insert into Railway (
	train,
    phone,
    email,
    website
) values (
	"Expres",
    "+33432902",
    "reilw@ukr.com",
    "ukr.com"
);











