CREATE TABLE "Products" (
  "ProductID" bigint PRIMARY KEY NOT NULL,
  "Name" varchar(255) NOT NULL,
  "Description" varchar(255) NOT NULL,
  "Price" decimal(8,2) NOT NULL,
  "ProductQuantity" bigint NOT NULL,
  "SupplierID" bigint NOT NULL
);