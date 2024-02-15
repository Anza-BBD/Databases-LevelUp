CREATE OR REPLACE FUNCTION CalculateOrderTotal(order_id bigint)
RETURNS decimal(8,2) AS $$
DECLARE
    total_amount decimal(8,2);
BEGIN
    SELECT SUM(Quantity * Price) INTO total_amount
    FROM OrderDetails
    WHERE OrderID = order_id;

    RETURN COALESCE(total_amount, 0);
END;
$$ LANGUAGE plpgsql;
