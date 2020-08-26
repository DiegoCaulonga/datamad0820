SELECT authors.au_id AS "AUTHOR ID", authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", sum(sales.qty) AS "TOTAL"
FROM authors 
LEFT JOIN store ON authors.city=stores.city
LEFT JOIN sales ON sales.stor_id=stores.stor_id
GROUP BY authors.au_id,authors.au_lname,authors.au_fname
ORDER BY "TOTAL" DESC 
limit 3