/* creating the new table */
create database customer;

/* using the customer table */
use customer;

/* creating table customer */
/* primary key, not null, and default values. */
create table customer(
id int not null auto_increment,
customer_name varchar(50) not null,
email varchar(50) not null default 'No email provided',
amount int,
primary key (id)
);

/* inserting the values to the customer table. */
insert into customer(customer_name, email, amount) values
("keshav", "keshavhlkesh@gmailcom", 50000);

/* displaying the customer table */
select * from customer;

/* inseting some more values to the customer table */
/* also we can test the customer table. */
insert into customer(email, amount) values
("k@gmil.com", 20000);
/* we have set the not null for the customer_name so it will display the error. */

/* checking the email default value is working or not. */
insert into customer(customer_name, amount) values
("pramod", 300000);

/* displaying the table. */
select * from customer;