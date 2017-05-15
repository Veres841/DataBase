create database if not exists internetMarket; /* якщо база даних не існує */

use internetMarket; /* обрати базу даних */

create table if not exists customer(         /*створення таблиці*/
	id int primary key auto_increment,
    firstName varchar(50) not null,         /* створення обовязкового поля */
    lastName varchar(50) not null,
    email varchar(100) not null unique,     /* унікальне значення*/
    phone varchar(13) not null unique
);            

create table if not exists orders(
	id int primary key auto_increment,
    orderAmount float,
    orderDate datetime,
    fk_customer int
);

create table if not exists commodity(
	id int primary key auto_increment,
    commodityName varchar(200) not null,
    description text,
    price float not null
); 

alter table orders add constraint constraint_orders_customers foreign key(fk_customer) references customer(id);    /* додавання звязку з іменем*/


create table if not exists commodity_order(
	fk_commodity int,
    fk_order int
);


alter table commodity_order add constraint foreign key(fk_commodity) references commodity(id);
alter table commodity_order add constraint foreign key(fk_order) references orders(id);



/*alter table commodity rename to goods;    /* редагуємо таблицю*/ 

/*alter table goods rename to  commodity;

alter table commodity add column temp int not null unique;

alter table commodity change column temp temp varchar(1);*/

/*alter table commodity drop column temp;    /* видаляємо колонку*/

/*drop table if exists commodity;*/

/*drop database if exists internetMarket;*/