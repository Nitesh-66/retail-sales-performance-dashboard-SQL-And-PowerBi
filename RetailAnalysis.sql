create Database RetailAnalysis;

Use RetailAnalysis;

CREATE TABLE RetailTransactions (
    TransactionID INT PRIMARY KEY,
    Date DATE,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Region VARCHAR(20),
    SalesChannel VARCHAR(20),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    TotalAmount DECIMAL(10,2),
    PaymentMode VARCHAR(30),
    CustomerID INT
);

Select * From RetailTransactions;


SELECT 
    Region,
    SUM(TotalAmount) AS TotalSales
FROM RetailTransactions
GROUP BY Region
ORDER BY TotalSales DESC;


SELECT 
    ProductName,
    SUM(TotalAmount) AS Revenue
FROM RetailTransactions
GROUP BY ProductName
ORDER BY Revenue DESC
LIMIT 5;


SELECT 
    MONTH(Date) AS MonthNo,
    MONTHNAME(Date) AS MonthName,
    SUM(TotalAmount) AS MonthlySales
FROM RetailTransactions
GROUP BY MonthNo, MonthName
ORDER BY MonthNo;


SELECT 
    Region,
    ROUND(
        SUM(TotalAmount) * 100 /
        (SELECT SUM(TotalAmount) FROM RetailTransactions),
    2) AS ContributionPercentage
FROM RetailTransactions
GROUP BY Region;


SELECT 
    SalesChannel,
    MONTHNAME(Date) AS MonthName,
    SUM(TotalAmount) AS Sales
FROM RetailTransactions
GROUP BY SalesChannel, MonthName;


SELECT 
    Category,
    SUM(TotalAmount) AS TotalSales
FROM RetailTransactions
GROUP BY Category
ORDER BY TotalSales DESC;

SELECT 
    CustomerID,
    COUNT(*) AS PurchaseCount
FROM RetailTransactions
GROUP BY CustomerID
HAVING COUNT(*) > 9;

