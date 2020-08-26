SELECT authors.au_id AS "AUTHOR ID", authors.au_lname AS "LAST NAME", authors.au_fname AS "FIRST NAME", sum(sales.qty) AS "TOTAL"
	FROM authors
		LEFT JOIN stores ON stores.city = authors.city
		LEFT JOIN sales ON sales.stor_id = stores.stor_id
				GROUP BY authors.au_id, authors.au_lname, authors.au_fname
                ORDER BY ASC limit 3;
					
            
        
 
