--@block
CREATE TABLE `Prescriptions`(
    `PescriptionID` BIGINT NOT NULL,
    `CustomerID` BIGINT NOT NULL,
    `DoctorID` BIGINT NOT NULL,
    `IssueDate` DATE NOT NULL,
    `ExpiryDate` DATE NOT NULL
);
--@block
ALTER TABLE
    `Prescriptions` ADD PRIMARY KEY(`PescriptionID`);