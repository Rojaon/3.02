-- DROP SCHEMA IF EXISTS lab;
create schema lab;
use lab;

create table author(
id int auto_increment not null,
author VARCHAR(255),
title VARCHAR(255),
word_count int,
views int,
PRIMARY KEY (id)
);

INSERT INTO author (author,title,word_count,views) VALUES
('Maria Charlotte','Best Paint Colors',814,14),
('Juan Perez Small','Space Decorating Tips',1146,221),
('Maria Charlotte','Hot Accessories',986,105),
('Maria Charlotte','Mixing Textures',765,22),
('Juan Perez','Kitchen Refresh',1242,307),
('Maria Charlotte','Homemade Art Hacks',1002,193),
('Gemma Alcocer','Refinishing Wood Floors',1571,7542);

select * from author;
