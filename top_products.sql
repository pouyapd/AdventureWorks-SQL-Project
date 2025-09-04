SELECT TOP 10
    P.Name AS ProductName,
    SUM(SOD.OrderQty) AS TotalQuantity
FROM Sales.SalesOrderDetail SOD
JOIN Production.Product P ON SOD.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY TotalQuantity DESC;
