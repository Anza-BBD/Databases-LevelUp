--@block
CREATE TABLE "Prescriptions" (
  "PrescriptionID" bigint PRIMARY KEY NOT NULL,
  "CustomerID" bigint NOT NULL,
  "DoctorID" bigint NOT NULL,
  "IssueDate" date NOT NULL,
  "ExpiryDate" date NOT NULL
);