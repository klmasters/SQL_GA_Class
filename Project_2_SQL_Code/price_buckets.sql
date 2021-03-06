SELECT 
  DISTINCT CASE 
  WHEN btl_price > '$300' THEN 'Over 300' 
  WHEN btl_price > '$150' THEN 'Over 150' 
  WHEN btl_price > '$100' THEN 'Over 100' WHEN btl_price > '$50' THEN 'Over 50' 
  WHEN btl_price > '$20' THEN 'Over 20' WHEN btl_price > '$10' THEN 'Over 10' 
  ELSE 'Cheap' END as price_buckets, 
  count(item) as total_items, 
  sum(total) as total_sales 
FROM 
  sales 
WHERE 
  date < '2015-01-01' 
GROUP BY 
  1 
ORDER BY 
  3
