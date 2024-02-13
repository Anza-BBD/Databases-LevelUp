--@block
CREATE TABLE `Products`(
    `ProductID` BIGINT NOT NULL,
    `Name` VARCHAR(255) NOT NULL,
    `Description` VARCHAR(255) NOT NULL,
    `Price` DECIMAL(8, 2) NOT NULL,
    `ProductQuantity` BIGINT NOT NULL,
    `SupplierID` BIGINT NOT NULL
);
--@block
ALTER TABLE
    `Products` ADD PRIMARY KEY(`ProductID`);