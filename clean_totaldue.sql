SELECT 
    SalesOrderID,
    CustomerID,
    COALESCE(TotalDue, 0) AS CleanTotalDue,
    CASE 
        WHEN TotalDue > 100000 THEN 'Outlier'
        WHEN TotalDue IS NULL OR TotalDue < 0 THEN 'Invalid'
        ELSE 'Valid'
    END AS DataQualityFlag
FROM Sales.SalesOrderHeader;
