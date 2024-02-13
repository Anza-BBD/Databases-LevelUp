--@block
CREATE TABLE `OrderDetails`(
    `OrderDetailID` BIGINT NOT NULL,
    `OrderID` BIGINT NOT NULL,
    `ProductID` BIGINT NOT NULL,
    `Quatity` INT NOT NULL,
    `Price` DECIMAL(8, 2) NOT NULL
);
--@block
ALTER TABLE
    `OrderDetails` ADD PRIMARY KEY(`OrderDetailID`);