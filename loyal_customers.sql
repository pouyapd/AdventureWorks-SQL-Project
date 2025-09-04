SELECT 
    C.CustomerID,
    COUNT(SOH.SalesOrderID) AS OrderCount
FROM Sales.Customer C
JOIN Sales.SalesOrderHeader SOH ON C.CustomerID = SOH.CustomerID
GROUP BY C.CustomerID
HAVING COUNT(SOH.SalesOrderID) > 1
ORDER BY OrderCount DESC;
