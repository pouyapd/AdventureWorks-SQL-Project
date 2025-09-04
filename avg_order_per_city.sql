SELECT 
    A.City,
    AVG(SOH.TotalDue) AS AvgOrderAmount
FROM Sales.SalesOrderHeader SOH
JOIN Person.Address A ON SOH.ShipToAddressID = A.AddressID
GROUP BY A.City
ORDER BY AvgOrderAmount DESC;
