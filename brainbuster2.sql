#Films by rating

SELECT 
	rating, COUNT(film_id)
FROM 
	film
GROUP BY 1
;

#Films by rating & rental price

SELECT 
	rating, rental_rate, COUNT(film_id)
FROM 
	film
GROUP BY 1,2
;