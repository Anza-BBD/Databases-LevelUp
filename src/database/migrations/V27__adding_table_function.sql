CREATE OR REPLACE FUNCTION GetCustomerOrderTotals()
RETURNS TABLE (
    "CustomerID" integer,
    "CustomerName" varchar(255),
    "TotalOrderAmount" decimal(10, 2)
)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        c."CustomerID",
        c."Name" AS "CustomerName",
        COALESCE(SUM(o."TotalAmount"), 0) AS "TotalOrderAmount"
    FROM
        "Customers" c
    LEFT JOIN
        "Orders" o ON c."CustomerID" = o."CustomerID"
    GROUP BY
        c."CustomerID", c."Name";
END;
$$ LANGUAGE plpgsql;