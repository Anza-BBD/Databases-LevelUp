CREATE TABLE "Supplier" (
  "SupplierID" bigint PRIMARY KEY NOT NULL,
  "Name" varchar(255) NOT NULL,
  "Email" varchar(255) UNIQUE NOT NULL,
  "PhoneNumber" varchar(255) NOT NULL
);