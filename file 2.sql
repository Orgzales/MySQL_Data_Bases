SELECT Code, Name, region, Population, LifeExpectancy, Continent
FROM country 
WHERE Continent like '%America' AND Population between 95000 AND 105000
-- WHERE Continent IN ('Asia', 'Africa') -- or use NOT IN
-- Where Population BETWEEN 5000000 AND 1000000
ORDER BY 2,3,4;
-- ORDER BY LifeExpectancy DESC;
