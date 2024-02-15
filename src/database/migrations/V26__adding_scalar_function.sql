CREATE OR REPLACE FUNCTION CalculateDaysUntilExpiration(
    prescriptionID bigint
)
RETURNS INT AS $$
DECLARE
    expirationDate DATE;
    daysUntilExpiration INT;
BEGIN
    SELECT "ExpiryDate" INTO expirationDate
    FROM "Prescriptions"
    WHERE "PrescriptionID" = prescriptionID;

    daysUntilExpiration := expirationDate - CURRENT_DATE;

    RETURN daysUntilExpiration;
END;
$$ LANGUAGE plpgsql;
