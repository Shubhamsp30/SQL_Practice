-- ✅ MEDIUM LEVEL (20 Questions)

-- (🔥 JOIN + GROUP BY + HAVING + CASE + Subquery)

-- Show customer name with total payment (JOIN + GROUP BY)
select * from payment;
select * from customer;

select c.first_name,sum(p.amount) as total_payment from 
payment as p join customer as c on p.customer_id=c.customer_id 
GROUP by first_name, c.customer_id

-- Show film title with number of rentals
select * from film; 
select *from inventory;
select * from rental;

select f.title,count(r.rental_id) as num_of_rental from film as f 
left join inventory as i on f.film_id=i.film_id 
left join rental as r on i.inventory_id=r.inventory_id 
GROUP by f.title  order by num_of_rental desc


-- Show category name with number of films
select  * from film_category;
select * from category;

select c.name as category,count(fc.film_id) as no_films from 
film_category as fc join category as c on fc.category_id=c.category_id 
group by c.NAME, c.category_id


-- Show customers HAVING total payment > 200
select * from payment;
select * from customer;

select c.first_name,sum(p.amount) as total_payment from 
payment as p join customer as c on p.customer_id=c.customer_id 
GROUP by c.first_name having sum(p.amount)>200  


-- Show films HAVING rental count > 15

select f.title,count(r.rental_id) as num_of_rental from film as f 
left join inventory as i on f.film_id=i.film_id 
left join rental as r on i.inventory_id=r.inventory_id 
GROUP by f.title  having count(r.rental_id)>15 order by num_of_rental desc


-- Show films with rental_rate greater than overall avg (subquery)
select * from film 
select avg(rental_rate)from film 
select * from film where rental_rate>(select avg(rental_rate)from film)


-- Show customers with more than 20 rentals
select * from customer;
select * from rental;
select customer_id,count(rental_id)from rental 
group by customer_id having count(rental_id)>20


-- Show film title and category using JOIN
select * from film;
select * from film_category
select * from category;
select f.title,c.NAME from film as f join 
film_category as fc on f.film_id=fc.film_id join 
category as c on fc.category_id=c.category_id 


-- Show city with number of customers
select * from customer; 
select * from address;
select * from city;

select c.city,count(cs.customer_id)as Num_customer from 
customer as cs join address as a on cs.address_id=a.address_id join 
city as c on a.city_id=c.city_id 
group by c.city order by Num_customer desc


-- Show customers with CASE → 'High' if payment > 100 else 'Low'
select customer_id,
case 
    when sum(amount)>100 then 'High'
    else 'low'
end 
from payment
GROUP by customer_id


-- Show films with CASE → 'Long' if length > 120 else 'Short'
select f.length,
case 
    when f.length>120 then 'Long'
    else 'short'
END as film_type
from film as f


-- Show customers with total payment between 100 and 200
select * from customer;
select * from payment; 
select customer_id,sum(amount) as total_payment from 
payment group by customer_id HAVING sum(amount) BETWEEN 100 and 200 


-- Show films with max length per rating
select * from film;
select rating, max(length) from film group by rating

-- Show actors with total films count
select * from film;
select * from film_actor;

SELECT actor_id,
       COUNT(film_id) AS total_films
FROM film_actor
GROUP BY actor_id;

-- Show films where replacement_cost > avg replacement_cost
select * from film
select avg(replacement_cost) from film
select * from film where replacement_cost>(select avg(replacement_cost) from film)


-- Show films grouped by rating HAVING avg length > 100
select * from film 

select avg(length) from film group by rating HAVING AVG(length) > 100; 