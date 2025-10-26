/* Creating the database */
create database dress_store;
use dress_store;

/* Cerating the tables */
create table shirts (
shirt_type varchar(50),
quantity int);

/* insert the values into the table */
insert into shirts(shirt_type, quantity) values
("T-shirt", 20),
("full-slives", 30),
("swit_shirt", 10);

/* View the table shirt */
select * from shirts;

/* insert some more valuse to table */
insert into shirts(shirt_type, quantity) values
("formals", 30);

/* select condition with where statement */
select * from shirts where quantity > 10;
select quantity from shirts where quantity < 20; 
select shirt_type from shirts where quantity <= 50;
select shirt_type from shirts where quantity = 20;

/* logical operater in the select condition (and, or, not)*/
select * from shirts where quantity >= 10 and quantity <= 30;
select * from shirts where quantity < 10 or quantity <= 30;

/* (not and between operaters */
select * from shirts where not(quantity < 10); 
select * from shirts where quantity between 10 and 20;

