--@block
CREATE TABLE `Orders`(
    `OrderID` BIGINT NOT NULL,
    `CustomerID` BIGINT NOT NULL,
    `OrderDate` DATE NOT NULL,
    `TotalAmount` DECIMAL(8, 2) NOT NULL,
    `Status` INT NOT NULL
);
--@block
ALTER TABLE
    `Orders` ADD PRIMARY KEY(`OrderID`);