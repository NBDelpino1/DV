# Number of distinct films rented per month

SELECT
	LEFT(r.rental_date,7) AS Month, COUNT(r.rental_id) AS "Total Rentals", COUNT(distinct i.film_id) AS "Unique Films Rented", COUNT(r.rental_id) / COUNT(distinct i.film_id) AS "Rentals Per Film"

FROM	
	rental r, inventory i
WHERE 
	r.inventory_id = i.inventory_id
GROUP BY
	1
;