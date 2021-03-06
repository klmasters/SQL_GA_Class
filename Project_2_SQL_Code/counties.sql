
-- Sales from new products in the last quarter (ran for Clarke and Crawford) 
SELECT 
  DISTINCT p.list_date, 
  p.category_name, 
  sl.county, 
  SUM(sl.total) 
FROM 
  sales sl 
  RIGHT JOIN products p ON sl.item = p.item_no 
WHERE 
  date >= '2014-10-01' 
  AND date <= '2014-12-31' 
  AND sl.county ILIKE 'crawford' 
  AND p.list_date BETWEEN '2014-04-01' 
  AND '2014-09-30' 
GROUP BY 
  p.list_date, 
  p.category_name, 
  sl.county
