WITH q1_sales AS (
  SELECT 
    DISTINCT category_name, 
    description, 
    COUNT(item) as total_items, 
    SUM(total) as q1_total_sales 
  FROM 
    sales 
  WHERE 
    date >= '2014-01-01' 
    AND date <= '2014-03-31' 
    AND btl_price < '$50' 
    AND category_name ILIKE '80 proof vodka' 
  GROUP BY 
    category_name, 
    description
), 
q2_sales AS (
  SELECT 
    DISTINCT category_name, 
    description, 
    COUNT(item) as total_items, 
    SUM(total) as q2_total_sales 
  FROM 
    sales 
  WHERE 
    date >= '2014-04-01' 
    AND date <= '2014-06-30' 
    AND btl_price < '$50' 
    AND category_name ILIKE '80 proof vodka' 
  GROUP BY 
    category_name, 
    description
), 
q3_sales AS (
  SELECT 
    DISTINCT category_name, 
    description, 
    COUNT(item) as total_items, 
    SUM(total) as q3_total_sales 
  FROM 
    sales 
  WHERE 
    date >= '2014-07-01' 
    AND date <= '2014-09-30' 
    AND btl_price < '$50' 
    AND category_name ILIKE '80 proof vodka' 
  GROUP BY 
    category_name, 
    description
), 
q4_sales AS (
  SELECT 
    DISTINCT category_name, 
    description, 
    COUNT(item) as total_items, 
    SUM(total) as q4_total_sales 
  FROM 
    sales 
  WHERE 
    date >= '2014-10-01' 
    AND date <= '2014-12-31' 
    AND btl_price < '$50' 
    AND category_name ILIKE '80 proof vodka' 
  GROUP BY 
    category_name, 
    description
) 
SELECT 
  DISTINCT q1.category_name, 
  q1.description, 
  q1.q1_total_sales, 
  q2.q2_total_sales, 
  q3.q3_total_sales, 
  q4.description, 
  q4.q4_total_sales 
FROM 
  q1_sales q1 
  FULL OUTER JOIN q2_sales q2 ON q1.description = q2.description 
  FULL OUTER JOIN q3_sales q3 ON q3.description = q2.description 
  FULL OUTER JOIN q4_sales q4 ON q4.description = q3.description
