-- ✅ MEDIUM LEVEL (20 Questions)

-- 🔥 Logic building starts here


-- Show top 5 customers by total payment (CTE)
with customerss as (
    select customer_id,sum(amount) toatl_payment from payment
    group by customer_id
    order by toatl_payment desc
)
select * from customerss limit 5

-- Show second highest payment using subquery
SELECT *
FROM payment
WHERE amount = (
    SELECT MAX(amount)
    FROM payment
    WHERE amount < (
        SELECT MAX(amount)
        FROM payment
    )
)limit 1

-- Show films longer than avg length per rating
select * from film where length>(select avg(length)from film)

-- Show customers who never made payment (LEFT JOIN)
select * from customer;
select * from payment
select * from customer as c left JOIN payment as p on c.customer_id=p.customer_id where p.customer_id is NULL


-- Show actors not assigned to any film
select * from film;
select * from film_actor;
select * from actor;
select * from film as f left join film_actor as fa on f.film_id=fa.film_id left join actor as a 

-- Show customers whose payment > overall avg payment


-- Show category with highest number of films


-- Show customers with more rentals than average rentals


-- Show films rented more than average rental count


-- Show staff with highest total payment handled


-- Show films where rental_rate > avg of their category


-- Show customers categorized using CASE → VIP / Regular / Low


-- Show films categorized using CASE → Long / Medium / Short


-- Show customers whose total payment between 100 and 200


-- Show film with highest rental count


-- Show customers with max payment per store


-- Show actors who worked in more than 5 films


-- Show films with replacement_cost above avg


-- Show customers whose rental count > 10