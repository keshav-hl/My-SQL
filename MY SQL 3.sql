/* displaying the customer table */
select * from customer;

/* delet the rows from the customer table */
delete from customer
where id = 2;
delete from customer
where id = 3;

/* display the table again */
select * from customer;

/* inserting the some more values into the customer table. */
insert into customer(customer_name, email, amount) values
("pramod", "p@gmail.com", 50000),
("shiva", "s@gamil.com", 30000),
("dilip", "d@gmail.com", 20000),
("vade", "v@gmail.com", 2000000),
("arjun", "a@gmail.com", 3000000);

/* displaying the customer table. */
select * from customer;

/* lets solve some questoions */
/* 1. To get the names of the customer. */
select customer_name from customer;

/* to get the customer_name and the email from the customer table. */
select customer_name, email from customer;

/* 2. To get their mail id. */
select email from customer;

/* 3. To get the purchase done by the customer. */
select amount as purchase from customer;

/* Displaying the customer table again. */
select * from customer;

/* 4. change the email of the keshav from the customer table. */
update customer set email='k@gmail.com' where id = 1;

/* 5. change shiva amount in the customer table. */
update customer set amount = 300000 where id = 5;

/* 6. Change shiva name into shivalinge gowda in customer table. */
update customer set customer_name = "shivalinge gowda" where id = 5;

/* display the table to test the updates. */
select * from customer;

/* Delete arjun information from the table. */
delete from customer where id = 8;
