CREATE VIEW OrderDetailsView AS
SELECT
    o.OrderID,
    o.CustomerID,
    o.OrderDate,
    p.Name AS ProductName,
    od.Quantity,
    od.Price
FROM
    Orders o
JOIN
    OrderDetails od ON o.OrderID = od.OrderID
JOIN
    Products p ON od.ProductID = p.ProductID;
