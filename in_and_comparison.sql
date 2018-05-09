# Number of rentals in the Comedy, Sports and Family category
SELECT
	c.name AS "Category", COUNT(r.rental_id) AS "Num Rentals"
FROM
	rental r, inventory i, film f, film_category fc, category c
WHERE
	r.inventory_id = i.inventory_id
	AND
	i.film_id = f.film_id
	AND
	f.film_id = fc.film_id
	AND
	fc.category_id = c.category_id
	AND c.name IN ("Comedy", "Sports", "Family")
GROUP BY
	1


# Number of user's who have rented at least 3 times
SELECT
	r.customer_id AS "Customer ID", CONCAT(c.first_name, " ", c.last_name) AS Customer, COUNT(r.rental_date) AS "Num Rentals"
FROM
	rental r, customer c
WHERE 
	r.customer_id = c.customer_id	
GROUP BY 
	1
HAVING COUNT(r.rental_date) >= 3


