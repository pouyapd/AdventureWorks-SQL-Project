SELECT TOP 10 
    C.CustomerID,
    P.FirstName + ' ' + P.LastName AS CustomerName,
    SUM(SOH.TotalDue) AS TotalSpent
FROM Sales.SalesOrderHeader SOH
JOIN Sales.Customer C ON SOH.CustomerID = C.CustomerID
JOIN Person.Person P ON C.PersonID = P.BusinessEntityID
GROUP BY C.CustomerID, P.FirstName, P.LastName
ORDER BY TotalSpent DESC;
