-- ✅ MEDIUM LEVEL (25 Questions)
-- Show films where rental_rate > 2 ORDER BY rental_rate
select * from film where rental_rate>2 order by rental_rate

-- Show films where length > 100 ORDER BY length DESC
select * from film where length >100 order by length desc

-- Show top 5 longest films
select * from film
select title,max(length)from film GROUP by length,title order by length desc limit 5;
select max(length)from film GROUP by length order by length desc limit 5

-- Show top 10 payments ORDER BY amount DESC


-- Show distinct rating ORDER BY rating
-- Show films where title LIKE '%A%'
-- Show actors where last_name LIKE '%son'
-- Show films where length BETWEEN 80 AND 150 ORDER BY length
-- Show payments where amount BETWEEN 2 AND 7 ORDER BY amount
-- Show customers where customer_id IN (10,20,30,40)
-- Show films where rating IN ('PG','PG-13','R')
-- Show count of payments
-- Show sum of amount from payment
-- Show avg amount from payment
-- Show min amount from payment
-- Show max amount from payment
-- Show count distinct rating from film
-- Show films where rental_rate >= 3
-- Show films where replacement_cost > 20
-- Show films ordered by replacement_cost DESC LIMIT 5
-- Show actors ordered by actor_id DESC LIMIT 10
-- Show payments where amount > 5 ORDER BY amount
-- Show films where title LIKE 'B%' ORDER BY title
-- Show films where length > 90 LIMIT 10
-- Show customers where first_name LIKE 'A%'