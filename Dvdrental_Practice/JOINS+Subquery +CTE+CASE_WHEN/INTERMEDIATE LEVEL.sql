-- ✅ INTERMEDIATE LEVEL (15 Questions)


-- Show customer name with total payment (JOIN + GROUP)
select * from payment;
select * from customer
select c.first_name,sum(p.amount) as total_payment from payment as p join customer as c on p.customer_id=c.customer_id GROUP by c.first_name

-- Show film title with total rentals


-- Show category name with number of films


-- Show staff with total payment handled


-- Show customers who made more than 5 payments


-- Show films rented more than 10 times


-- Show customers with CASE → 'High Spender' if total > 150


-- Show films with CASE → 'Long Movie' if length > 120


-- Show films where rental_rate > avg rental_rate (subquery)


-- Show payments greater than avg payment per customer


-- Show customers whose total payment is greater than customer_id = 10


-- Show films with max length per rating


-- Show actors with number of films they acted in


-- Show customers with number of rentals


-- Show film title with category name using JOIN