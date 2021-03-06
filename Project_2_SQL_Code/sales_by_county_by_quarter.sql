WITH q1_data AS (
  SELECT 
    county, 
    SUM(total) as q1_sales 
  FROM 
    sales 
  WHERE 
    date >= '2014-01-01' 
    AND date <= '2014-03-31' 
  GROUP BY 
    county
), 
q2_data AS (
  SELECT 
    county, 
    SUM(total) as q2_sales 
  FROM 
    sales 
  WHERE 
    date >= '2014-04-01' 
    AND date <= '2014-06-30' 
  GROUP BY 
    county
), 
q3_data AS (
  SELECT 
    county, 
    SUM(total) as q3_sales 
  FROM 
    sales 
  WHERE 
    date >= '2014-07-01' 
    AND date <= '2014-09-30' 
  GROUP BY 
    county
), 
q4_data AS (
  SELECT 
    county, 
    SUM(total) as q4_sales 
  FROM 
    sales 
  WHERE 
    date >= '2014-10-01' 
    AND date <= '2014-12-31' 
  GROUP BY 
    county
) 
SELECT 
  DISTINCT q1.county, 
  q1.q1_sales, 
  q2.q2_sales, 
  q3.q3_sales, 
  q4.q4_sales 
FROM 
  q1_data q1 
  FULL OUTER JOIN q2_data q2 on q1.county = q2.county 
  FULL OUTER JOIN q3_data q3 on q2.county = q3.county 
  FULL OUTER JOIN q4_data q4 ON q3.county = q4.county
;

