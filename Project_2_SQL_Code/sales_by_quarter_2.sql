
SELECT 
  DISTINCT COUNT(store) AS total_stores, 
  Extract(quarter from date) 
FROM 
  sales 
WHERE 
  date >= '2014-01-01' 
  AND date <= '2014-03-31' 
group by 
  Extract(quarter from date)
UNION 
SELECT 
  DISTINCT COUNT(store) AS total_stores, 
  Extract(quarter from date)
FROM 
  sales 
WHERE 
  date >= '2014-04-01' 
  AND date <= '2014-06-30' 
group by 
  Extract(quarter from date)
UNION 
SELECT 
  DISTINCT COUNT(store) AS total_stores, 
  Extract(quarter from date)
FROM 
  sales 
WHERE 
  date >= '2014-07-01' 
  AND date <= '2014-09-30' 
group by 
  Extract(quarter from date)
UNION 
SELECT 
  DISTINCT COUNT(store) AS total_stores, 
  Extract(quarter from date)
FROM 
  sales 
WHERE 
  date >= '2014-10-01' 
  AND date <= '2014-12-31' 
group by 
  Extract(quarter from date)
Order by 
  2
;
