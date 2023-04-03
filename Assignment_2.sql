USE adventureworks;

-- 1. What is the ratio of male to female employees at this company?
SELECT gender, COUNT(gender) as NumberofEmployees
FROM employee
GROUP BY gender;

-- 2. What are the departments (sort alphabetically) and how many employees work in each?
SELECT d.Name, COUNT(e.EmployeeID) AS NumberofEmployees
FROM department d
JOIN employeedepartmenthistory edp ON edp.DepartmentID = d.DepartmentID
JOIN employee e ON e.EmployeeID = edp.EmployeeID
GROUP BY d.name
ORDER BY name;

-- 3. Which employees have changed departments?
SELECT edp.EmployeeID, CONCAT(c.FirstName, " ", c.LastName) AS Name
FROM employee e
JOIN employeedepartmenthistory edp ON edp.EmployeeID = e.EmployeeID
JOIN contact c ON c.ContactID = e.ContactID
WHERE edp.EndDate IS NOT NULL
GROUP BY e.EmployeeID;

-- 4. Despite the fact that the ”base of operations” is in Bothel, WA, where do most of the employees actually live (city)?
SELECT CONCAT(s.StateProvinceCode, " - " , a.City ) AS State_City, COUNT(v.vendorID) AS Num_Employees
FROM Vendorcontact v
JOIN Vendoraddress va ON va.VendorID = v.VendorID
JOIN address a ON a.AddressID = va.AddressID
JOIN stateprovince s ON s.StateProvinceID = a.stateprovinceID
GROUP BY a.city
ORDER BY Num_Employees DESC;


-- 5. Which products have never sold? Sort alphabetically.
SELECT p.ProductID, p.Name, v.LastReceiptCost
FROM product p
LEFT JOIN productvendor v ON v.ProductID = p.ProductID
WHERE v.ProductID IS NULL
GROUP BY p.name
ORDER BY p.name;


-- 6. Find the top 10 selling products (product with highest sales earned). Show product id, name, list
-- price, total quantity sold, total sales earned, subcategory and category. Limit results to only the top 10.
select distinct sd.ProductID, p.name, sd.OrderQty, sd.LineTotal, sc.name, pc.name 
from salesorderdetail sd 
join Product p on p.productId = sd.ProductID
join productsubcategory sc on sc.ProductSubcategoryID = p.ProductsubcategoryID
join productcategory pc on pc.ProductCategoryID = sc.ProductCategoryID
group by sd.LineTotal
order by sd.LineTotal DESC
limit 10;

-- 7. Insert yourself as the newest employee to the company. This involves inserting once into the
-- following tables: EmployeeDepartmentHistory, Employee, and Contact. WARNING! There are
-- no constraints on this database schema as configured for MySQL, so be careful not to overwrite
-- an existing employee, contact, or add yourself multiple times! If you add yourself multiple times,
-- delete the duplicates.

INSERT INTO employee(EmployeeID, NationalIDNumber, ContactID, LoginID, ManagerID, Title, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
				, currentFlag, rowguid, ModifiedDate)
VALUES(550, 60003124, 2750, "adventure-works/OrionRG", 4, "student", DATE("2002-06-02 00:00:00"), "S", "M", CURRENT_DATE(), 0, 24, 48, 1, cast(5 AS BINARY), CURRENT_DATE());

INSERT INTO employeedepartmenthistory(EmployeeId, DepartmentID, shiftID, StartDate, EndDate, ModifiedDate)
 VALUES(550, 7, 1, CURRENT_DATE(), NULL, CURRENT_DATE());

INSERT INTO contact(ContactID, NameStyle, Title, FirstName, MiddleName, LastName, Suffix, Emailaddress, EmailPromotion, Phone, PasswordHash, PasswordSalt, 
					AdditionalContactInfo, Rowguid, ModifiedDate)
VALUES(2750, 0, NULL, "Orion", "R.", "Gonzales", NULL, "ORG@adventure-works.com", 0, "200-403-2940", "KIVBSKN83Y6I9VB2IVB9B3UIBF", "Nekn29=", NULL, cast(5 AS BINARY), CURRENT_DATE());

--  delete from contact where contactid = 2750;
--  delete from EmployeeDepartmentHistory where EmployeeID = 550;
--  delete from employee where employeeid = 550;

SELECT * 
FROM Employee e
LEFT JOIN contact c ON c.Contactid = e.Contactid
LEFT JOIN EmployeeDepartmentHistory epd ON epd.Employeeid = e.employeeid
WHERE e.employeeid = 550;


-- 8. Show all employees hired in the last 20 years sorted from highest to lowest seniority.
SELECT CONCAT(c.FirstName, " ", c.LastName) AS Name, e.title, c.emailaddress, e.hiredate, round(datediff(curdate(), e.hiredate) /365) as Years
FROM employee e
JOIN contact c ON c.contactID = e.contactID
WHERE e.hiredate > DATE("2002-1-1")
ORDER BY e.hiredate;
