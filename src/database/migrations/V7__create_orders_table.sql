CREATE TABLE "Orders" (
  "OrderID" bigint PRIMARY KEY NOT NULL,
  "CustomerID" bigint NOT NULL,
  "OrderDate" date NOT NULL,
  "TotalAmount" decimal(8,2) NOT NULL,
  "Status" int NOT NULL
);