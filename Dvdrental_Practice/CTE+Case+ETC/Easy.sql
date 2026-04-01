-- ✅ EASY LEVEL (15 Questions)

-- Show films where rental_duration = 5
select * from film 
select * from film where rental_duration=5

-- Show customers where active = 1
select * from customer;
select * from customer where active=1

-- Show payments where staff_id = 1
select * from payment where staff_id=1

-- Show films ordered by release_year DESC
select * from film order by release_year desc 

-- Show first 3 cities
select * from city limit 3

-- Show distinct store_id from customer
select DISTINCT store_id from customer

-- Show films where title LIKE 'T%'
select * from film where title like 'T%'


-- Show actors where first_name LIKE 'K%'
select * from actor where first_name like 'K%'

-- Show films where length BETWEEN 90 AND 110
select * from film where length BETWEEN 90 and 110

-- Show payments where amount IN (3.99, 4.99)
select * from payment where amount in(3.99,4.99)

-- Show total number of rentals
select count(*) from rental 

-- Show average payment amount
select avg(amount) from payment

-- Show maximum rental_duration
select max(rental_duration)from film

-- Show minimum film length
select min(length)from film

-- Show count of distinct rating
select count(DISTINCT rating) from film