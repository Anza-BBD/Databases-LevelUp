
--@block
ALTER TABLE "Prescriptions" ADD FOREIGN KEY ("PrescriptionID") REFERENCES "Doctors" ("DoctorID");


--@block
ALTER TABLE "Prescriptions" ADD FOREIGN KEY ("PrescriptionID") REFERENCES "Customers" ("CustomerID");


--@block
ALTER TABLE "PrescriptionDetails" ADD FOREIGN KEY ("PrescriptionDetailID") REFERENCES "Prescriptions" ("PrescriptionID");


--@block
ALTER TABLE "OrderDetails" ADD FOREIGN KEY ("OrderDetailID") REFERENCES "Orders" ("OrderID");


--@block
ALTER TABLE "OrderDetails" ADD FOREIGN KEY ("OrderDetailID") REFERENCES "Products" ("ProductID");


--@block
ALTER TABLE "Products" ADD FOREIGN KEY ("ProductID") REFERENCES "Supplier" ("SupplierID");


--@block
ALTER TABLE "Customers" ADD FOREIGN KEY ("CustomerID") REFERENCES "Orders" ("OrderID");


--@block
ALTER TABLE "PrescriptionDetails" ADD FOREIGN KEY ("PrescriptionDetailID") REFERENCES "Products" ("ProductID");


--@block
ALTER TABLE "Orders" ADD FOREIGN KEY ("OrderID") REFERENCES "Payments" ("PaymentID");