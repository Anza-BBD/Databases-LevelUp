ALTER TABLE "Products" ADD CONSTRAINT FK_supplier FOREIGN KEY ("SupplierID") REFERENCES "Supplier" ("SupplierID");

ALTER TABLE "Prescriptions" ADD CONSTRAINT FK_doctor FOREIGN KEY ("DoctorID") REFERENCES "Doctors" ("DoctorID");

ALTER TABLE "Prescriptions" ADD CONSTRAINT FK_customer FOREIGN KEY ("CustomerID") REFERENCES "Customers" ("CustomerID");

ALTER TABLE "PrescriptionDetails" ADD CONSTRAINT FK_Prescription FOREIGN KEY ("PrescriptionID") REFERENCES "Prescriptions" ("PrescriptionID");

ALTER TABLE "PrescriptionDetails" ADD CONSTRAINT FK_Product FOREIGN KEY ("ProductID") REFERENCES "Products" ("ProductID");

ALTER TABLE "Orders" ADD CONSTRAINT FK_Customer FOREIGN KEY ("CustomerID") REFERENCES "Customers" ("CustomerID");

ALTER TABLE "OrderDetails" ADD CONSTRAINT FK_Order FOREIGN KEY ("OrderID") REFERENCES "Orders" ("OrderID");

ALTER TABLE "OrderDetails" ADD CONSTRAINT FK_Product FOREIGN KEY ("ProductID") REFERENCES "Products" ("ProductID");

ALTER TABLE "Payments" ADD CONSTRAINT FK_Order FOREIGN KEY ("OrderID") REFERENCES "Orders" ("OrderID");
