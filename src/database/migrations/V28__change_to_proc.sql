CREATE OR REPLACE PROCEDURE GetPrescriptionsByUserIdProcedure(
    IN userId bigint
)
LANGUAGE plpgsql
AS $$
DECLARE
    prescriptionRecord RECORD;
BEGIN
    FOR prescriptionRecord IN (
        SELECT
            p."PrescriptionID",
            p."CustomerID",
            p."DoctorID",
            c."Name" as "CustomerName",
            d."Name" as "DoctorName",
            p."IssueDate",
            p."ExpiryDate",
            p."ExpiryDate" >= CURRENT_DATE AS "IsValid"
        FROM
            "Prescriptions" p
        JOIN
            "Customers" c ON p."CustomerID" = c."CustomerID"
        JOIN
            "Doctors" d ON p."DoctorID" = d."DoctorID"
        WHERE
            p."CustomerID" = userId
    ) 
    LOOP
        RAISE NOTICE 'Prescription ID: %, Customer Name: %, Doctor Name: %, IsValid: %',
                     prescriptionRecord."PrescriptionID",
                     prescriptionRecord."CustomerName",
                     prescriptionRecord."DoctorName",
                     prescriptionRecord."IsValid";
    END LOOP;
END;
$$;
