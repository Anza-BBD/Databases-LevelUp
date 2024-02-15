CREATE OR REPLACE VIEW PrescriptionsView AS
SELECT
    p."CustomerID",
    p."DoctorID",
    c."Name" AS "Customer Name",
    d."Name" AS "Doctor Name",
    p."IssueDate" AS "Issue Date",
    p."ExpiryDate" AS "Expiry Date"
FROM
    "Prescriptions" p
JOIN
    "Customers" c ON p."CustomerID" = c."CustomerID"
JOIN
    "Doctors" d ON p."PrescriptionID" = d."DoctorID";

CREATE OR REPLACE VIEW TransactionsView AS
SELECT 
    p."PaymentID",
    c."Name" AS "Customer Name",
    c."CustomerID" AS CustomerID,
    p."Amount",
    p."PaymentMethod" AS "Payment Method",
    p."PaymentDate"  AS "Transaction Date"
FROM "Payments" p
JOIN "Orders" o ON p."OrderID" = o."OrderID"
JOIN "Customers" c ON o."CustomerID" = c."CustomerID";
