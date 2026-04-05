-- ✅ EASY LEVEL (15 Questions)
-- Show film title with its language name (JOIN)
select * from film;
select * from LANGUAGE;
select f.title,l.name from film as f join LANGUAGE as l on f.LANGUAGE_id=l.LANGUAGE_id 

-- Show customer first_name with their store_id
select * from customer
select first_name,store_id from customer


-- Show payment amount with customer name


-- Show film title with rental_rate


-- Show city name with country_id


-- Show address with city_id


-- Show film title with category_id


-- Show actor name with actor_id


-- Show customer names using CASE → 'Active' or 'Inactive' based on active column
select * from customer
select *,
case 
when active=1 then 'Active'
else 'Inactive'
END
from customer

-- Show films using CASE → 'Expensive' if rental_rate > 2 else 'Cheap'
select *from film
select film_id,rental_rate,
case 
    when rental_rate>2 then'Expensive'
    else 'Cheap'
end 
from film

-- Show payments greater than average payment (subquery)
SELECT *
FROM payment
WHERE amount > (
    SELECT AVG(amount)
    FROM payment
);


-- Show films where length > average length (subquery)
select * from film where length>(select avg(length)from film)

-- Show customers whose id exists in payment table (subquery with IN)
select * from 