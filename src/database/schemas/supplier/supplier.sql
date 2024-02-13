--@block
CREATE TABLE `Supplier`(
    `SupplierID` BIGINT NOT NULL,
    `Name` VARCHAR(255) NOT NULL,
    `Email` VARCHAR(255) NOT NULL,
    `PhoneNumber` VARCHAR(255) NOT NULL
);
--@block
ALTER TABLE
    `Supplier` ADD PRIMARY KEY(`SupplierID`);
--@block
ALTER TABLE
    `Supplier` ADD UNIQUE `supplier_email_unique`(`Email`);