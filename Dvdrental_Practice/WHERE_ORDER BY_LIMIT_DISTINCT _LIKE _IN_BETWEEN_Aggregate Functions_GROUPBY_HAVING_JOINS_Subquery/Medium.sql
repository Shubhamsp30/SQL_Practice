--     ✅ MEDIUM LEVEL (20 Questions)
-- (JOINS + GROUP + HAVING + Subquery start)

-- Show film title with category name (JOIN)
select * FROM film;
select * from film_category;
select * from category

select f.film_id,f.title,fc.category_id,c.name 
from 
film as f join film_category as fc on f.film_id=fc.film_id
join category as c on fc.category_id=c.category_id 

-- Show customer first_name with payment amount
select * from customer;
select * from payment 
select c.customer_id,c.first_name,p.amount from customer as c join payment as p on c.customer_id=p.customer_id

-- Show actor name with film title
select *from actor;
select *from film_actor;
select *from film;
select a.first_name as actor_name,f.title from actor as a join film_actor as fa on a.actor_id=fa.actor_id join film as f on fa.film_id=f.film_id

-- Show total payment per customer HAVING total > 100
select * from customer;
select * from payment 
select c.customer_id,c.first_name,sum(amount) as total from 
customer as c join 
payment as p on 
c.customer_id=p.customer_id 
group by c.customer_id having sum(amount)>100

-- Show number of films per category HAVING count > 5
select fc.category_id,c.name,count(f.film_id)
from 
film as f join film_category as fc on f.film_id=fc.film_id
join category as c on fc.category_id=c.category_id 
group by fc.category_id,c.name having count(f.film_id)>5
order by category_id 

-- Show films with rental_rate greater than average rental_rate (subquery)
select *from film where rental_rate>(select avg(rental_rate) from film)


-- Show payments greater than average payment
select * from payment where amount>(SELECT avg(amount)from payment)

-- Show customers who made more than 5 payments
select customer_id,count(*) from payment group by customer_id having count(*)>5

-- Show films with length greater than average length
select *from film where length>(select avg(length)from film)

-- Show category with max films
select * from film_category;
select * from film
select fc.category_id,c.name,count(f.film_id) as max 
from 
film as f join film_category as fc on f.film_id=fc.film_id
join category as c on fc.category_id=c.category_id 
group by fc.category_id,c.name order by max desc limit 1

-- Show customer with highest payment
select * from payment;
select * from customer
SELECT *
FROM payment
WHERE amount = (
    SELECT MAX(amount)
    FROM payment
);

-- Show film title and language name
select * from film
select * from language
select f.title,l.name from film as f join LANGUAGE as l on f.LANGUAGE_id=l.LANGUAGE_id  

-- Show staff name with store id
select * from staff;
select * from store;
select s.store_id,st.first_name from staff as st join store as s on st.store_id=s.store_id

-- Show city with country name
select * from city;
select * from country
select c.country,cc.city from city as cc join country as c on cc.country_id=c.country_id 

-- Show customers with total payment > 150
select * from customer;
select * from payment
select customer_id,sum(amount) as total_payment from payment 
group by customer_id having sum(amount)>150 
order by total_payment desc

-- Show films where rental_rate = max rental_rate
select * from film where rental_rate=(select max(rental_rate)from film)

-- Show payments where amount = max amount
select * from payment where amount=(select max(amount)from payment) 

-- Show films per rating HAVING count > 10
select * from film 
SELECT rating,
       COUNT(*) AS film_count
FROM film
GROUP BY rating
HAVING COUNT(*) > 10;

-- Show actors who acted in more than 5 films
select * from actor; 
select * from film_actor;
select * from film;
select a.actor_id,a.first_name,count(fa.film_id) as film_count from actor as a join film_actor as fa on a.actor_id=fa.actor_id 
group by a.actor_id having count(fa.film_id)>5

-- Show film with highest replacement_cost
select * from film 
select DISTINCT replacement_cost from film
select * from film where replacement_cost=(select max(replacement_cost)from film)