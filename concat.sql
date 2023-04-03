use world;

-- select * from country;
-- select Name, code, LifeExpectancy as Life, GNP - GNPOld as GNP_Growth
-- From country
-- where Continent = "Europe"
-- Order by GNP_Growth desc;

-- select code, CONCAT(Name, " (", LocalName, ")") as Name
-- From country
-- where Continent LIke "%America";

-- get all the cities and states as a single colum, and the population, in the united states 

-- Select CountryCode, CONCAT(Name, " (", District, ")") as City, Population
-- from city 
-- where CountryCode like "USA"
-- Order by City;

-- select count(*), min(Population), max(Population), avg(Population), stddev(Population)
-- from country
-- where Continent = "Europe";

-- selecting indyear get the min and max one, as call them first and last. and not include null

-- select min(IndepYear) as first, max(IndepYear) as last
-- from country
-- where IndepYear is not null;

-- select count(*), Continent, Region
-- from country
-- group by Region
-- order by Continent, Region;

-- Continent that is aveger surface area that is grouped by Continent. Not antiartica
-- select Continent, avg(SurfaceArea)
-- from country
-- where Continent != "Antarctica"
-- group by Continent
-- order by Continent;

-- number of countries by the heads of states
-- select count(HeadOfState), HeadOfState, Name
-- from country
-- where HeadOfState is not null and HeadOfState != ""
-- group by HeadOfState
-- order by HeadOfState;









