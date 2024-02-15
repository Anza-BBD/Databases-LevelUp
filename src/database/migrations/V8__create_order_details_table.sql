CREATE TABLE "OrderDetails" (
  "OrderDetailID" SERIAL PRIMARY KEY NOT NULL,
  "OrderID" bigint NOT NULL,
  "ProductID" bigint NOT NULL,
  "Quantity" int NOT NULL,
  "Price" decimal(8,2) NOT NULL
);