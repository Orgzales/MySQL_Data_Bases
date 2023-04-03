use adventureworks;

select * from salesorderheader;

select * from salesorderdetail;

select COUNT(*) from product;

select distinct productID from salesorderdetail;

select distinct p.ProductID, p.Name, s.ProductID
From product p
Left Join salesorderdetail s on p.productID = s.ProductID
where s.productID is null;