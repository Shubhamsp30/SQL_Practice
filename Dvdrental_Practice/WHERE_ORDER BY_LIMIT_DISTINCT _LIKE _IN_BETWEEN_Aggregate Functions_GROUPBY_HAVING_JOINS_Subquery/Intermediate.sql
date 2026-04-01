-- ✅ INTERMEDIATE LEVEL (15 Questions)
-- Show number of films for each rating
select rating,count(*) as Count_of_rating from film group by rating

-- Show average rental_rate for each rating
select rating, avg(rental_rate) avg_rate from film group by rating

-- Show total payment for each customer_id
select customer_id,sum(amount) total_payment from payment GROUP by customer_id

-- Show count of payments for each staff_id
select staff_id,count(payment_id) count_of_payment from payment group by staff_id

-- Show films where rental_rate > 2 ORDER BY length
select * from film where rental_rate>2 order by length 

-- Show customers where first_name LIKE '%a%'
select * from customer where first_name LIKE '%a%'

-- Show films where replacement_cost BETWEEN 15 AND 25
select * from film where replacement_cost BETWEEN 15 and 25

-- Show films ordered by length DESC LIMIT 8
select * from film order by length desc limit 8

-- Show distinct rating from film ORDER BY rating
select DISTINCT rating from film ORDER by rating 

-- Show total payment amount > 50 per customer (use GROUP BY)
select customer_id,sum(amount) total_payment from payment GROUP by customer_id having sum(amount)>50

-- Show number of rentals per inventory_id
select * from rental
select inventory_id,count(rental_id)from rental GROUP by inventory_id

-- Show max payment per customer
select customer_id,max(amount)from payment GROUP by customer_id

-- Show films where rating IN ('PG','R','G')
select * from film where rating in ('PG','R','G')

-- Show customers where customer_id BETWEEN 20 AND 40
select * from customer WHERE customer_id BETWEEN 20 AND 40

-- Show total films per language_id
select language_id,count(*)from film GROUP by language_id