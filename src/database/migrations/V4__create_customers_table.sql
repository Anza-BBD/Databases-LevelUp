CREATE TABLE "Customers" (
  "CustomerID" SERIAL PRIMARY KEY,
  "Name" varchar(255),
  "Email" varchar(255) UNIQUE,
  "PhoneNumber" varchar(255)
);