/*-------First task------*/
SELECT DEPID FROM PEOP 
GROUP BY DEPID 
HAVING AVG(CURRENT_DATE()-DATE_PR) >(SELECT AVG(CURRENT_DATE()-DATE_PR) FROM PEOP) ;

SELECT AVG(CURRENT_DATE()-DATE_PR) FROM PEOP GROUP BY DEPID; 

/*-------Second task------*/

SELECT sub_table.card_id, sub_table.shop_id, main_table.sale_date_id, main_table.sale_time_id
FROM ( SELECT card_id, sale_date_id, sale_time_id
		FROM dbo 
		WHERE (sale_date_id, sale_time_id) IN 
			(SELECT MIN(sale_date_id), MIN(sale_time_id) FROM dbo GROUP BY card_id)) main_table
INNER JOIN dbo sub_table 
ON sub_table.card_id = main_table.card_id AND sub_table.sale_date_id = main_table.sale_date_id AND sub_table.sale_time_id = main_table.sale_time_id;


	
	
	
	
	
	
	
	
	
	
	
