-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName
FROM Product as P
JOIN Category as C
ON P.categoryID = C.id
;

-- Display the [[[order Id]]] and shipper [[[CompanyName]]] for all orders placed before August 9 2012. Shows 429 records.
select Id, CompanyName
FROM [Order]
JOIN Shipper as S
ON [Order].shipvia = S.id
WHERE [Order].orderDate < "2012-08-09"
;

-- Display the [[[name]]] and [[[quantity]]] of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select QuantitY as Quant , ProductName
FROM orderdetail
JOIN product as p
on orderdetail.productId = p.id
WHERE orderid = "10251"
;

-- Display the [[[OrderID]]], [[[Customer's Company Name]]] and the [[[employee's LastName]]] for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT c.CompanyName, [order].id, e.lastname
FROM [order]
JOIN Customer as C
on [order].customerId = C.id
JOIN Employee as E
on E.id = [order].employeeId
;
