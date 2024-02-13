--@block
CREATE TABLE "Payments" (
  "PaymentID" bigint PRIMARY KEY NOT NULL,
  "OrderID" bigint NOT NULL,
  "Amount" decimal(8,2) NOT NULL,
  "PaymentDate" date NOT NULL,
  "PaymentMethod" varchar(255) NOT NULL
);