ALTER TABLE "Prescriptions" ADD FOREIGN KEY ("PrescriptionID") REFERENCES "Doctors" ("DoctorID");

ALTER TABLE "Prescriptions" ADD FOREIGN KEY ("PrescriptionID") REFERENCES "Customers" ("CustomerID");

ALTER TABLE "PrescriptionDetails" ADD FOREIGN KEY ("PrescriptionDetailID") REFERENCES "Prescriptions" ("PrescriptionID");

ALTER TABLE "OrderDetails" ADD FOREIGN KEY ("OrderDetailID") REFERENCES "Orders" ("OrderID");

ALTER TABLE "OrderDetails" ADD FOREIGN KEY ("OrderDetailID") REFERENCES "Products" ("ProductID");

ALTER TABLE "Products" ADD FOREIGN KEY ("ProductID") REFERENCES "Supplier" ("SupplierID");

ALTER TABLE "Customers" ADD FOREIGN KEY ("CustomerID") REFERENCES "Orders" ("OrderID");

ALTER TABLE "PrescriptionDetails" ADD FOREIGN KEY ("PrescriptionDetailID") REFERENCES "Products" ("ProductID");

ALTER TABLE "Orders" ADD FOREIGN KEY ("OrderID") REFERENCES "Payments" ("PaymentID");