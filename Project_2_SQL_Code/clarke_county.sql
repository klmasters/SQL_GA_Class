--UNION for counties with growth count: Clarke
--The join to the county table didn’t have any effect on the numbers I got
SELECT 
  DISTINCT COUNT(sl.store) AS total_stores, 
  Extract(quarter FROM sl.date) 
FROM 
  sales sl 
  RIGHT JOIN stores st ON sl.store = st.store 
WHERE 
  date >= '2014-01-01' 
  AND date <= '2014-03-31' 
  AND st.store_status = 'A' -- A stands for active store
  AND sl.county ILIKE 'clarke' 
GROUP BY 
  Extract(quarter from date) 
UNION 
SELECT 
  DISTINCT COUNT(sl.store) AS total_stores, 
  Extract(quarter from sl.date) 
FROM 
  sales sl 
  RIGHT JOIN stores st ON sl.store = st.store 
WHERE 
  date >= '2014-04-01' 
  AND date <= '2014-06-30' 
  AND st.store_status = 'A' 
  AND sl.county ILIKE 'clarke' 
GROUP BY 
  Extract(quarter from date) 
UNION 
SELECT 
  DISTINCT COUNT(sl.store) AS total_stores, 
  Extract(quarter from sl.date) 
FROM 
  sales sl 
  RIGHT JOIN stores st ON sl.store = st.store 
WHERE 
  date >= '2014-07-01' 
  AND date <= '2014-09-30' 
  AND st.store_status = 'A' 
  AND sl.county ILIKE 'clarke' 
GROUP BY
  Extract(quarter from date) 
Union 
SELECT 
  DISTINCT COUNT(sl.store) AS total_stores, 
  Extract(quarter from sl.date) 
FROM 
  sales sl 
  RIGHT JOIN stores st ON sl.store = st.store 
WHERE 
  date >= '2014-10-01' 
  AND date <= '2014-12-31' 
  AND st.store_status = 'A' 
  AND sl.county ILIKE 'clarke' 
GROUP BY
  Extract(quarter from date) 
ORDER BY 
  2
