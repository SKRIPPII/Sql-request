CREATE TABLE Products (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Products
VALUES
	(1, 'bacon'),
	(2, 'pike'),
	(3, 'computer');

CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Categories
VALUES
	(1, 'meat'),
	(2, 'fish'),
	(3, 'eat');

CREATE TABLE ProductsCategories (
	ProductsId INT FOREIGN KEY REFERENCES Products(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	PRIMARY KEY (ProductsId, CategoryId)
);

INSERT INTO ProductsCategories
VALUES
	(1, 1),
	(1, 3),
	(2, 2);

SELECT P."Name", C."Name"
FROM Products P
LEFT JOIN ProductsCategories PC
	ON P.Id = PC.ProductsId
LEFT JOIN Categories C
	ON PC.CategoryId = C.Id;