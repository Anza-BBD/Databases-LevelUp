CREATE OR REPLACE FUNCTION GetOrderDetailsWithPayment(order_id_param bigint)
RETURNS TABLE (
    order_id bigint,
    customer_id bigint,
    order_date date,
    total_amount decimal(8,2),
    payment_id bigint,
    payment_amount decimal(8,2),
    payment_date date,
    payment_method varchar(255)
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        o."OrderID",
        o."CustomerID",
        o."OrderDate",
        o."TotalAmount",
        p."PaymentID",
        p."Amount",
        p."PaymentDate",
        p."PaymentMethod"
    FROM
        "Orders" o
    LEFT JOIN
        "Payments" p ON o."OrderID" = p."OrderID"
    WHERE
        o."OrderID" = order_id;

    RETURN;
END;
$$ LANGUAGE plpgsql;
