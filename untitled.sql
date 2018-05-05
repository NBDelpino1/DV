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
