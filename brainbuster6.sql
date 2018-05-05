#Every customer's last rental date

SELECT
	CONCAT(c.first_name, " ", c.last_name) AS "Customer Name", c.email AS "Email", MAX(LEFT(r.rental_date,10)) AS "Last Rental Date"
FROM
	customer c, rental r 
WHERE 
	c.customer_id = r.customer_id
GROUP BY
	c.customer_id
;

#Revenue by month

SELECT
	 LEFT(p.payment_date,7) AS Month, SUM(p.amount) AS "Monthly Revenue"
FROM
	payment p
GROUP BY
	1
;	