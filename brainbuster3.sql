#Connect tables

#film name,category,language

SELECT
	f.title, c.name, l.name
FROM
	film f, film_category fc, category c, language l
WHERE
	f.film_id = fc.film_id 
	AND 
	c.category_id = fc.category_id
	AND
	f.language_id = l.language_id
;

