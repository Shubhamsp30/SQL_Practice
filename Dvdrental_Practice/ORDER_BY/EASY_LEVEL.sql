-- Show all actors with first_name = 'Nick'
select first_name from actor where first_name='Nick'

-- Show films with rental_rate > 2
select * from film
select * from film where rental_rate>2

-- Show customers with customer_id < 10
select * from customer
select * from customer where customer_id<10

-- Show payments where amount = 0.99
select * from payment
select * from payment where amount=0.99

-- Show films where length > 100
select * from film
select * from film where length > 100

-- Show actors ordered by first_name
select * from actor
select * from actor ORDER by first_name

-- Show actors ordered by last_name DESC
select * from actor ORDER by last_name desc

-- Show first 5 actors
select * from actor limit 5

-- Show first 10 films
select * from film limit 10

-- Show distinct rating from film
select distinct rating from film

-- Show distinct rental_rate from film
select DISTINCT rental_rate from film

-- Show films where title LIKE 'A%'
select * from film where title like 'A%'

-- Show actors where first_name LIKE 'J%'
select * from actor where first_name like 'J%'

-- Show films where length BETWEEN 60 AND 120
select * from film where length BETWEEN 60 and 120 

-- Show payments where amount BETWEEN 1 AND 5
select * from payment
select * from payment where amount BETWEEN 1 and 5

-- Show customers where customer_id IN (1,2,3,4,5)
select * from customer 
select * from customer where customer_id in(1,2,3,4,5)

-- Show films where rating IN ('PG', 'G')
select * from film 
select * from film where rating in ('PG','G')

-- Count all actors
select * from actor
select count(*) from actor

-- Count all films
select count(*) from film

-- Show average rental_rate from film
select avg(rental_rate) from film 