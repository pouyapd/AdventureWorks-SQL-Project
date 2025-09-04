SELECT 
    SOH.SalesOrderID,
    SOH.OrderDate,
    SOH.ShipDate,
    P.FirstName + ' ' + P.LastName AS CustomerName,
    COUNT(*) OVER (PARTITION BY P.FirstName, P.LastName) AS DuplicateCount,
    CASE 
        WHEN SOH.ShipDate < SOH.OrderDate THEN 'Inconsistent Date'
        ELSE 'OK'
    END AS DataIssue
FROM Sales.SalesOrderHeader SOH
JOIN Sales.Customer C ON SOH.CustomerID = C.CustomerID
JOIN Person.Person P ON C.PersonID = P.BusinessEntityID;
