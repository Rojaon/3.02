-- DROP SCHEMA IF EXISTS lab;
create schema lab;
use lab;

create table customer(
id int auto_increment not null,
name VARCHAR(255),
status VARCHAR(255),
flight_number VARCHAR(255),
total_customer_mileage int,
PRIMARY KEY (id)
);

create table flight(
flight_number VARCHAR(255) not null,
flight_mileage int,
aircraft VARCHAR(255),
total_aircraft_seats int,
PRIMARY KEY (flight_number)
);

INSERT INTO customer (name,status,flight_number,total_customer_mileage) VALUES
('Agustine Riviera','Silver','DL143',115235),
('Agustine Riviera','Silver','DL122',115235),
('Alaina Sepulvida','None','DL122',6008),
('Tom Jones','Gold','DL122',205767),
('Tom Jones','Gold','DL53',205767),
('Sam Rio','None','DL143',2653),
('Tom Jones','Gold','DL222',205767),
('Jessica James','Silver','DL143',127656),
('Ana Janco','Silver','DL222',136773),
('Jennifer Cortez','Gold','DL222',300582),
('Jessica James','Silver','DL122',127656),
('Sam Rio','None','DL37',2653),
('Christian Janco','Silver','DL222',14642);

INSERT INTO flight (flight_number,flight_mileage,aircraft,total_aircraft_seats) VALUES
('DL143',135,'Boeing 747',400),
('DL122',4370,'Airbus A330',236),
('DL53',2078,'Boeing 777',264),
('DL222',1765,'Boeing 777',264),
('DL37',531,'Boeing 747',400);

select count(flight_number) as total_flights_number
from flight;

select avg(flight_mileage) as avg_flight_distance
from flight;

select avg(total_aircraft_seats) as avg_aircraft_seats
from flight;

select status,avg(distinct total_customer_mileage) as avg_customer_mileage
from customer
group by status;

select status,MAX(total_customer_mileage) AS max_customer_mileage
from customer
group by status;

SELECT count(distinct aircraft)
FROM flight
WHERE aircraft LIKE '%Boeing%';

SELECT flight_number,flight_mileage
FROM flight
WHERE flight_mileage BETWEEN 300 AND 2000;

select c.status ,avg(f.flight_mileage) as avg_flight_distance
from flight f
JOIN customer c ON f.flight_number = c.flight_number
group by c.status;

select f.aircraft ,count(c.name) as total_booked
from customer c
JOIN flight f ON c.flight_number = f.flight_number
where c.status = 'Gold'
group by f.aircraft ORDER BY count(c.name) DESC LIMIT 1;







