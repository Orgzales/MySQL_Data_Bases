use dndarmory;

-- update item_versatile
-- set crit_boost = "+2"
-- where id_item = 2;

--  DELETE FROM items WHERE id_item = 28;

-- insert into items(id_item, name, id_item_type, damage, id_dmg_type, description, gold_cost)
-- values(19, "Fire Bolt", 1, "2d6", 6, "A Arrow that's on fire? Nice", "10gp");

-- insert into item_ammunition(id_item, name, id_item_type, damage, id_dmg_type, weapon_ammo , description, gold_cost)
-- values(19, "Fire Bolt", 1, "2d6", 6, "Any CrossBow" ,"A Arrow that's on fire? Nice", "10gp");

-- select i.id_item, i.name, ty.item_category ,concat(i.damage, " ", dmg.damage_element) as dmg, i.description, i.gold_cost
-- from items i
-- join dmg_type dmg on dmg.id_dmg_type = i.id_dmg_type
-- join item_type ty on ty.id_item_type = i.id_item_type
-- where i.damage = "1d4";

select * from items;
select * from item_type;
select * from dmg_type;

-- select * 
-- from items i
-- join dmg_type dmg on dmg.id_dmg_type = i.id_dmg_type
-- join item_type ty on ty.id_item_type = i.id_item_type
-- order by id_item;

select * from componet_element;
select * from componet_weapon;

-- select * from componet_element  ;
-- select * from componet_weapon w
-- join item_type i on i.id_item_type = w.id_item_type;

-- select * from componet_element e
-- join dmg_type d on d.id_dmg_type = e.id_dmg_type
-- where id_elements = 2;

-- select * from item_ammunition; 

-- select * from items i
-- join item_versatile x on x.id_item = i.id_item;

--  select * from item_cosmetic;
--    select * from item_finesse;
--   select * from item_improvised;
--    select * from item_light;
--    select * from item_loading;
--   select * from item_magic;
--   select * from item_range;
--  select * from item_reach;
--  select * from item_thrown;
--  select * from item_type;
-- select * from item_versatile;
 -- select * from items_legendary;
