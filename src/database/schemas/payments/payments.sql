--@block
CREATE TABLE `Payments`(
    `PaymentID` BIGINT NOT NULL,
    `OrderID` BIGINT NOT NULL,
    `Amount` DECIMAL(8, 2) NOT NULL,
    `PaymentDate` DATE NOT NULL,
    `PaymentMethod` VARCHAR(255) NOT NULL
);
--@block
ALTER TABLE
    `Payments` ADD PRIMARY KEY(`PaymentID`);