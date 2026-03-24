-- ✅ MEDIUM LEVEL (25 Questions)
-- Show films where rental_rate > 2 ORDER BY rental_rate
select * from film where rental_rate>2 order by rental_rate

-- Show films where length > 100 ORDER BY length DESC
select * from film where length >100 order by length desc

-- Show top 5 longest films
select * from film
select title,max(length)from film GROUP by length,title order by length desc limit 5;
select max(length)from film GROUP by length order by length desc limit 5
SELECT * from film order by length desc limit 5

-- Show top 10 payments ORDER BY amount DESC
select * from payment ORDER by amount desc limit 10 

-- Show distinct rating ORDER BY rating
select DISTINCT rating from film order by rating

-- Show films where title LIKE '%A%'
select * from film where title like '%A%'

-- Show actors where last_name LIKE '%son'
select * from actor where last_name LIKE '%son'

-- Show films where length BETWEEN 80 AND 150 ORDER BY length
SELECT * from film where length BETWEEN 80 and 150 ORDER by length 

-- Show payments where amount BETWEEN 2 AND 7 ORDER BY amount
select * from payment where amount BETWEEN 2 AND 7 ORDER BY amount

-- Show customers where customer_id IN (10,20,30,40)
select * from customer where customer_id IN (10,20,30,40)

-- Show films where rating IN ('PG','PG-13','R')
select * from film where rating IN ('PG','PG-13','R')

-- Show count of payments
select count(*) from payment

-- Show sum of amount from payment
select sum(amount) from payment 

-- Show avg amount from payment
select avg(amount)from payment

-- Show min amount from payment
select min(amount)from payment

-- Show max amount from payment
select max(amount)from payment

-- Show count distinct rating from film
select count(distinct rating) from film

-- Show films where rental_rate >= 3
select * from film where rental_rate >= 3

-- Show films where replacement_cost > 20
select * from film where replacement_cost > 20

-- Show films ordered by replacement_cost DESC LIMIT 5
SELECT * from film order by replacement_cost desc limit 5 

-- Show actors ordered by actor_id DESC LIMIT 10
select * from actor order by actor_id DESC LIMIT 10

-- Show payments where amount > 5 ORDER BY amount
select * from payment where amount > 5 ORDER BY amount

-- Show films where title LIKE 'B%' ORDER BY title
select * from film where title LIKE 'B%' ORDER BY title

-- Show films where length > 90 LIMIT 10
select * from film where length > 90 LIMIT 10

-- Show customers where first_name LIKE 'A%'
select * from customer where first_name LIKE 'A%'