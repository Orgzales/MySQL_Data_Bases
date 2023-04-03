use sakila;
-- select * from film f
-- join film_actor fa on f.film_id = fa.film_id
-- join actor a on a.actor_id = fa.actor_id
-- where a.first_name = "zero" and a.last_name = "cage";

-- select 
-- concat( upper(left(f.title, 1)), lower(right(f.title, length(f.title)-1)) ) as film,
-- f.description, 
--  concat( upper(left(a.first_name, 1)), " ", lower(right(a.first_name + a.last_name, length(a.last_name)-1)) ) as actor
--  from film f
-- join film_actor fa on f.film_id = fa.film_id
-- join actor a on a.actor_id = fa.actor_id
-- where a.first_name = "zero" and a.last_name = "cage";

-- select concat(a.first_name, " ", a.last_name) as actor, 
-- c.name as category, 
-- count(f.film_id) as Number_of, f.title as example, 
-- f.description,
-- f.release_year
-- from film f
-- join film_actor fa on f.film_id = fa.film_id
-- join actor a on a.actor_id = fa.actor_id
-- join film_category fc on f.film_id = fc.film_id
-- join category c on c.category_id = fc.category_id
-- where a.first_name = "ED" and a.last_name = "GUINESS"
-- group by category
-- order by Number_of desc;


-- select concat(a.address, " ", a.district, " , ", cty.city, " ", a.postal_code, " ", ctry.country) as store_address
-- from store str
-- join address a on str.address_id = a.address_id
-- join city cty on cty.city_id = cty.city_id
-- join country ctry on ctry.country_id = cty.country_id
-- order by str.store_id;

-- finding out the amount of customers in the store
select str.store_id, count(c.customer_id) as Number_of_Customers
from store str
join customer c on c.store_id = str.store_id
where c.active = 0
group by str.store_id
order by str.store_id;

-- finding out which customers are inactive
select str.store_id, concat(c.first_name, " ", c.last_name) as inactive_person
from store str
join customer c on c.store_id = str.store_id
where c.active = 0
order by str.store_id;

-- which store has the largest inventory
select Concat(str.store_id, ": ", a.address) as Store, count(distinct inv.film_id) as stock
from store str
join inventory inv on inv.store_id = str.store_id
join address a on a.address_id = str.address_id
group by str.store_id
order by str.store_id;

-- list down the number of films per category per store of each state HOMEWORK
select inv.store_id as Store, Concat(cy.name, ": ", Count(fc.film_id)) as Films
from inventory inv
join store str on str.store_id = inv.store_id
join film_category fc on fc.film_id = inv.film_id
join category cy on cy.category_id = fc.category_id
group by inv.store_id, fc.category_id
order by inv.store_id;












