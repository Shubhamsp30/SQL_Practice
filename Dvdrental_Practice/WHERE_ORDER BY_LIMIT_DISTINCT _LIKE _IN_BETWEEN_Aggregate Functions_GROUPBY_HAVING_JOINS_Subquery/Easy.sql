-- ✅ EASY LEVEL (15 Questions)
Show films where release_year = 2006
select * from film where release_year=2006

-- Show actors where actor_id > 50
select * from actor where actor_id>50

-- Show payments where amount < 2
select * from payment where amount<2

-- Show films ordered by title
select * from film order by title

-- Show customers ordered by last_name DESC
select * from customer order by last_name desc

-- Show first 7 customers using LIMIT
select * from customer limit 7

-- Show distinct language_id from film
select DISTINCT language_id from film

-- Show films where title LIKE 'M%'
select * from film where title like 'M%'

-- Show actors where last_name LIKE 'S%'
select * from actor where last_name LIKE 'S%'

-- Show films where length BETWEEN 70 AND 90
select * from film where length BETWEEN 70 and 90 

-- Show payments where amount IN (0.99, 1.99, 2.99)
select * from payment where amount IN (0.99, 1.99, 2.99)

-- Show total number of customers
select count(customer_id) from customer

-- Show max length from film
select max(length)from film

-- Show min amount from payment
select min(amount)from payment

-- Show average length from film
select avg(length)from film


