--@block
CREATE TABLE "PrescriptionDetails" (
  "PrescriptionDetailID" SERIAL PRIMARY KEY NOT NULL,
  "PrescriptionID" bigint NOT NULL,
  "ProductID" bigint NOT NULL,
  "Quantity" int NOT NULL
);