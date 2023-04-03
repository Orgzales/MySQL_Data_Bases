use world;
select * from country;
select * from city;
select * from countrylanguage;

select c.Code, c.Name, c.Continent, c.region, l.Percentage
from country c
join countrylanguage l
on c.Code = l.CountryCode
where c.Continent = "Europe";

select c.Name, cy.District, cy.name
from country c
join city cy
on c.Code = cy.CountryCode
where c.Code = "USA";
