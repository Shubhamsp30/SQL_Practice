-- ✅ INTERMEDIATE LEVEL (15 Questions)

-- Show total payment per staff_id
select staff_id,sum(amount) as total_payment from payment group by staff_id

-- Show average film length per rating
select rating,avg(length) from film group by rating

-- Show number of customers per store
select store_id, count(customer_id)from customer GROUP by store_id

-- Show films where rental_rate > 1.5 ORDER BY title
select * from film where rental_rate>1.5 ORDER by title

-- Show customers where email LIKE '%gmail%'
select * from customer where email like '%gmail%'


-- Show films where length BETWEEN 100 AND 140 ORDER BY length DESC
select * from film where length BETWEEN 100 and 140 order by length desc


-- Show payments ordered by amount DESC LIMIT 7
select * from payment order by amount desc limit 7

-- Show distinct replacement_cost ORDER BY replacement_cost
select DISTINCT replacement_cost from film ORDER by replacement_cost 

-- Show total rentals per customer

select customer_id,count(rental_id) as rental_count from rental GROUP by customer_id

-- Show max payment per staff_id

select staff_id,max(amount)from payment group by staff_id

-- Show films where rating IN ('PG','R')
select * from film where rating in ('PG','R')

-- Show customers where customer_id IN (15,25,35,45)
SELECT *from  customer where customer_id IN (15,25,35,45)

-- Show count of films per rental_duration
select rental_duration,count(film_id)from film GROUP by rental_duration

-- Show average replacement_cost per rating
select rating,avg(replacement_cost)from film GROUP by rating

-- Show films ordered by rental_rate LIMIT 12
select * from film order by rental_rate LIMIT 12
