#Revenue by store

SELECT
	i.store_id AS "Store ID", SUM(p.amount) AS Revenue
	
FROM
	inventory i, rental r, payment p
WHERE
	p.rental_id = r.rental_id
	AND 
	r.inventory_id = i.inventory_id
GROUP BY
	1
ORDER BY
	2 DESC
;

 
#payment - payment_id, rental_id, amount
#rental - rental_id, inventory_id
#inventory - store_id, inventory_id

