--@block
CREATE TABLE `Customers`(
    `CustomerID` BIGINT NOT NULL,
    `Name` VARCHAR(255) NOT NULL,
    `Email` VARCHAR(255) NOT NULL,
    `Address` VARCHAR(255) NOT NULL,
    `PhoneNumber` VARCHAR(255) NOT NULL
);
--@block
ALTER TABLE
    `Customers` ADD PRIMARY KEY(`CustomerID`);
--@block
ALTER TABLE
    `Customers` ADD UNIQUE `customers_email_unique`(`Email`);