--@block
CREATE TABLE `ShippingInfo`(
    `ShippingInfoID` BIGINT NOT NULL,
    `OrderID` BIGINT NOT NULL,
    `ShippingDate` DATE NOT NULL,
    `ShippingAddress` VARCHAR(255) NOT NULL
);
--@block
ALTER TABLE
    `ShippingInfo` ADD PRIMARY KEY(`ShippingInfoID`);