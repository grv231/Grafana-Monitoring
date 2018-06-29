CREATE TABLE Products 
(
 ProductId int,
 ProductName varchar(500)
 );
 
 CREATE TABLE Sales
 (
  ProductId int,
  Amount int,
  SalesDateTime DateTime
 );
 
 
 INSERT INTO Products (ProductId, ProductName) 
 VALUES (1, 'Jeans');
 
 INSERT INTO Products (ProductId, ProductName) 
 VALUES (2, 'Shirts');
 
 SELECT * FROM Products;
 SELECT * FROM Sales;
 
 
 