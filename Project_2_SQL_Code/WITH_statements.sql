--Individual quarters of 2014 to use in WITH statements

--Q1
SELECT 
  * 
FROM 
  sales 
WHERE 
  date >= '2014-01-01' 
  AND date <= '2014-03-31' 

--Q2
SELECT 
  * 
FROM 
  sales 
WHERE 
  date >= '2014-04-01' 
  AND date <= '2014-06-30' 

--Q3
SELECT 
  * 
FROM 
  sales 
WHERE 
  date >= '2014-07-01' 
  AND date <= '2014-09-30' 
  
--Q4
SELECT 
  * 
FROM 
  sales 
WHERE 
  date >= '2014-10-01' 
  AND date <= '2014-12-31'

