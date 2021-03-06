--Total sales for categories from q1 
--(ended up running this 4 times changing the date and joined the columns in excel to get all 4 quarters)
WITH q1_data AS (
  SELECT 
    * 
  FROM 
    sales 
  WHERE 
    date >= '2014-01-01' 
    AND date <= '2014-03-31'
) 
SELECT 
  DISTINCT category_name, 
  SUM(total) AS total_sales 
FROM 
  q1_data 
GROUP BY 
  category_name 
ORDER BY 
  SUM(total) DESC
