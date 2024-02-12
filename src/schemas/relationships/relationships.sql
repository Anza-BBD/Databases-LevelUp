
--@block
ALTER TABLE
    `Products` ADD CONSTRAINT `products_supplierid_foreign` FOREIGN KEY(`SupplierID`) REFERENCES `Supplier`(`SupplierID`);
--@block
ALTER TABLE
    `Prescriptions` ADD CONSTRAINT `prescriptions_customerid_foreign` FOREIGN KEY(`CustomerID`) REFERENCES `Customers`(`CustomerID`);
--@block
ALTER TABLE
    `OrderDetails` ADD CONSTRAINT `orderdetails_orderid_foreign` FOREIGN KEY(`OrderID`) REFERENCES `Orders`(`OrderID`);
--@block
ALTER TABLE
    `ShippingInfo` ADD CONSTRAINT `shippinginfo_orderid_foreign` FOREIGN KEY(`OrderID`) REFERENCES `Orders`(`OrderID`);
--@block
ALTER TABLE
    `Prescriptions` ADD CONSTRAINT `prescriptions_customerid_foreign` FOREIGN KEY(`CustomerID`) REFERENCES `PrescriptionDetails`(`PrescriptionID`);
--@block
ALTER TABLE
    `Prescriptions` ADD CONSTRAINT `prescriptions_doctorid_foreign` FOREIGN KEY(`DoctorID`) REFERENCES `Doctors`(`DoctorID`);
--@block
ALTER TABLE
    `OrderDetails` ADD CONSTRAINT `orderdetails_productid_foreign` FOREIGN KEY(`ProductID`) REFERENCES `Products`(`ProductID`);
--@block
ALTER TABLE
    `Orders` ADD CONSTRAINT `orders_customerid_foreign` FOREIGN KEY(`CustomerID`) REFERENCES `Customers`(`CustomerID`);
--@block
ALTER TABLE
    `Payments` ADD CONSTRAINT `payments_orderid_foreign` FOREIGN KEY(`OrderID`) REFERENCES `Orders`(`OrderID`);
--@block
ALTER TABLE
    `PrescriptionDetails` ADD CONSTRAINT `prescriptiondetails_productid_foreign` FOREIGN KEY(`ProductID`) REFERENCES `Products`(`ProductID`);