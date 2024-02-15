CREATE OR REPLACE FUNCTION GetPrescriptionsByUserId(
    IN userId bigint
)
RETURNS TABLE (
    "PrescriptionID" integer,
    "CustomerID" bigint,
    "DoctorID" bigint,
    "CustomerName" varchar(255),
    "DoctorName" varchar(255),
    "IssueDate" date,
    "ExpiryDate" date,
    "IsExpired" boolean
)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        p."PrescriptionID",
        p."CustomerID",
        p."DoctorID",
        c."Name" as "CustomerName",
        d."Name" as "DoctorName",
        p."IssueDate",
        p."ExpiryDate",
        p."ExpiryDate" >= CURRENT_DATE AS "Is Valid"
    FROM
        "Prescriptions" p
    JOIN
        "Customers" c ON p."CustomerID" = c."CustomerID"
    JOIN
        "Doctors" d ON p."DoctorID" = d."DoctorID"
    WHERE
        p."CustomerID" = userId;
END;
$$ LANGUAGE plpgsql;