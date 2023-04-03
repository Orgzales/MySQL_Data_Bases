use sakila;
select * from store;

select * from staff;

insert into staff(staff_id, first_name, last_name, address_id, picture, email, store_id, active, username, password, last_update)
values(default, "Org", "Orion Gonzales", 4, null,"org@gmail.org", 2, true, "orgzales", "defaultpass", default);
select * from staff;

-- insert into store(store_id, manager_staff_id, address_id, last_update)
-- values(default, 3, 10, default);

-- update staff
-- set password = "abc123", address = 10
-- where staff_id = 3;

-- Delete from staff where staff_id = 4;

select * from store;
select * from staff;
