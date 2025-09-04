SELECT 
    YEAR(OrderDate) AS SaleYear,
    MONTH(OrderDate) AS SaleMonth,
    SUM(TotalDue) AS MonthlySales
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2014
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY SaleMonth;
