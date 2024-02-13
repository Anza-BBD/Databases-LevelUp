--@block
CREATE TABLE "PrescriptionDetails" (
  "PrescriptionDetailID" bigint PRIMARY KEY NOT NULL,
  "PrescriptionID" bigint NOT NULL,
  "ProductID" bigint NOT NULL,
  "Quantity" int NOT NULL
);