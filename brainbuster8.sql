# Revenue for store 1 where film is rated R or PG-13 between 2005-06-08 and 2005-07-19

SELECT
	i.store_id AS Store, f.rating AS Movie_Rating, SUM(p.amount) AS Store_Revenue
FROM
	payment p, rental r, inventory i, film f
WHERE
	p.rental_id = r.rental_id
	AND 	
		r.inventory_id = i.inventory_id
	AND
		i.film_id = f.film_id
	AND 
		i.store_id = 1
	AND  	
		f.rating IN ('R', 'PG-13')
	AND r.rental_date BETWEEN '2005-06-08' AND '2005-07-19'
GROUP BY
	1, 2
ORDER BY
	3 DESC
;

