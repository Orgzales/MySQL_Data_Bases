use world;

 -- how many countries gained independacnec after 1990
 -- get the head of state of europoe without nulls or empty strings
 
 select * from country where Continent = 'Europe';
 select * from country where IndepYear > 1990;
 select Name, IndepYear, HeadOfState, Continent from country where IndepYear > 1990 and Continent = "Europe";