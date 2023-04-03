use world;

 select * from country limit 10;
 
 select Code, Name, Continent from country limit 10;
 
 select distint Continent from country;
 
 select * from country where Continent = 'North America';
 
 select * from country where Continnet like '%America';
 
 select Code, Name, Continent, Population, LifeExpectancy from country where LifeExpectancy >= 80;
 
 select * from country where IndepYear is null;