-- ✅ HARD LEVEL (30 Questions)
-- Show top 5 highest payment amount
select * from payment ORDER by amount desc limit 5

-- Show lowest 5 payment amount
select * from payment ORDER by amount limit 5

-- Show films with highest rental_rate
SELECT * from film order by rental_rate desc limit 1

-- Show films with lowest rental_rate
select * from film order by rental_rate limit 1

-- Show films where length > 120 ORDER BY length DESC LIMIT 10
select * from film where length > 120 ORDER BY length DESC LIMIT 10 

-- Show payments > 5 ORDER BY amount DESC LIMIT 5
select * from payment where amount>5 ORDER BY amount DESC LIMIT 5  

-- Show distinct rental_rate ORDER BY rental_rate DESC
select DISTINCT rental_rate from film ORDER BY rental_rate DESC

-- Show films where title LIKE '%ER%'
select * from film where title LIKE '%ER%'

-- Show actors where first_name LIKE '%A%'
select * from actor where first_name LIKE '%A%'

-- Show films where length BETWEEN 50 AND 200 ORDER BY length DESC
select * from film where length BETWEEN 50 AND 200 ORDER BY length DESC

-- Show payments where amount BETWEEN 2 AND 10 ORDER BY amount DESC
select * from payment where amount BETWEEN 2 AND 10 ORDER BY amount DESC

-- Show films where rating IN ('R','PG-13') ORDER BY rating
select * from film where rating IN ('R','PG-13') ORDER BY rating

-- Show count of films where rental_rate > 2
select count(*)from film where rental_rate > 2

-- Show avg length of films
select avg(length) from film

-- Show max replacement_cost
select max(replacement_cost) from film

-- Show min replacement_cost
select min(replacement_cost) from film

-- Show sum of payment amount
select sum(amount)from payment

-- Show count distinct customer_id from payment
select count(DISTINCT customer_id)from payment

-- Show films ordered by title LIMIT 20
select * from film order by title LIMIT 20

-- Show actors ordered by last_name LIMIT 15
select * from actor order by last_name LIMIT 15

-- Show films where rental_rate > 2 AND length > 100
select * from film where rental_rate > 2 AND length > 100

-- Show films where rental_rate > 2 OR length > 150
select * from film where rental_rate > 2 OR length > 150

-- Show payments where amount > 3 AND amount < 8
select * from payment where amount > 3 AND amount < 8

-- Show films where title LIKE 'C%' LIMIT 5
select * from film where title LIKE 'C%' LIMIT 5

-- Show films where title LIKE '%T%' ORDER BY title
select * from film where title LIKE '%T%' ORDER BY title

-- Show customers ordered by first_name LIMIT 20
select * from customer order by first_name LIMIT 20

-- Show films ordered by length DESC LIMIT 3
select * from film order by length DESC LIMIT 3

-- Show payments ordered by payment_date DESC LIMIT 5
select *from payment order by payment_date DESC LIMIT 5

-- Show films where replacement_cost BETWEEN 10 AND 25
select * from film where replacement_cost BETWEEN 10 AND 25

-- Show films where rental_rate IN (0.99, 2.99, 4.99)
select * from film where rental_rate IN (0.99, 2.99, 4.99)