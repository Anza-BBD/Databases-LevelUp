--@block
CREATE TABLE `PrescriptionDetails`(
    `PrescriptionDetailID` BIGINT NOT NULL,
    `PrescriptionID` BIGINT NOT NULL,
    `ProductID` BIGINT NOT NULL,
    `Quantity` INT NOT NULL
);
--@block
ALTER TABLE
    `PrescriptionDetails` ADD PRIMARY KEY(`PrescriptionDetailID`);