use world;
select count(distinct Code) from country;
select count(distinct CountryCode) from city;

select c.Name, cy.District, cy.name
from country c
left join city cy
on c.Code = cy.CountryCode;
-- where cy.name is null;

select c.Name, cy.District, cy.name
from country c
left join city cy
on c.Capital = cy.ID;