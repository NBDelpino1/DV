#Number of times each film has been rented out

SELECT
	f.title, COUNT(r.rental_id)
FROM
	film f, rental r, inventory i
WHERE
	f.film_id = i.film_id
	AND 
	i.inventory_id = r.inventory_id
GROUP BY
	1
;