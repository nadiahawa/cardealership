create table car_dealership(
dealership_id serial primary key,
dealership_name varchar(150)
);



create table cars(
serial_number serial primary key, 
service_history varchar(1000),
model varchar(50),
make varchar(50),
color varchar(50),
year integer
);


create table salesperson(
salesperson_id serial primary key,
first_name varchar(50),
last_name varchar(50),
total_sales numeric(8,2),
dealership_id integer, 
foreign key (dealership_id) references car_dealership(dealership_id)
);

create table mechanic(
mechanic_id serial primary key, 
dealership_id integer,
first_name varchar(150),
last_name varchar(150),
foreign key (dealership_id) references car_dealership(dealership_id)
);


create table customer(
customer_id serial primary key,
first_name varchar(150),
last_name varchar(150),
serial_number integer, 
foreign key(serial_number) references cars(serial_number)
);
 

create table invoice(
invoice_id serial primary key, 
amount numeric(8,2),
date_id date,
serial_number integer, 
foreign key(serial_number) references cars(serial_number)
);


create table services(
service_id serial primary key, 
service_ticket varchar(1000),
hourly_rate numeric(5,2),
serial_number integer, 
foreign key(serial_number) references cars(serial_number),
mechanic_id integer, 
foreign key(mechanic_id) references mechanic(mechanic_id)
);






insert into car_dealership(dealership_name)
values ('Japanese Cars dealership');
insert into car_dealership(dealership_name)
values ('German Cars dealership');


insert into cars(service_history, model, make, color, year)
values('Tire replacement 1999, oil change 2006, dead battery change 2018', 'accord', 'honda', 'black', 1996);
insert into cars(service_history, model, make, color, year)
values('no significant service history, very new car', '330i', 'bmw', 'white', 2021);



insert into salesperson(first_name, last_name, total_sales)
values('Johnny', 'Salesman', 888888.00);
insert into salesperson(first_name, last_name, total_sales)
values('Melissa', 'Seller', 900000.00);



insert into mechanic(first_name, last_name)
values('danny', 'tran');
insert into mechanic(first_name, last_name)
values( 'michelle', 'addison');





insert into customer(first_name, last_name)
values('julia', 'ali');
insert into customer(first_name, last_name)
values('sarah', 'armani');





insert into invoice(amount)
values(45550.00);
insert into invoice(amounT)
values(88888.00);




insert into services(service_ticket, hourly_rate)
values('Car crash, car needs all new detailing and bumpers', 40.00);
insert into services(service_ticket, hourly_rate)
values('New windows needed, as well as new mirror and paint', 60.00);



select *
from car_dealership cd 

select *
from cars c 

select *
from salesperson s 

select *
from mechanic m 


select *
from customer c 

select *
from invoice i 

select *
from services s 
















