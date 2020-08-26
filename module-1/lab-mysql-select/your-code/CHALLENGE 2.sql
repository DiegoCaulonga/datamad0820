SELECT authors.au_id AS "Author ID" , authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", publishers.pub_name AS "PUBLISHER", count(*) AS "TITLE COUNT"
	FROM authors
		LEFT JOIN publishers ON publishers.city = authors.city
        GROUP BY authors.au_id,authors.au_lname,authors.au_fname,publishers.pub_name
        ORDER BY "TITLE COUNT" DESC
        