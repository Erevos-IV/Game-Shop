CREATE TABLE Payments(
    PaymentID INT NOT NULL AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    TotalAmount DOUBLE NOT NULL,
    
    PRIMARY KEY(PaymentID),
    FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
)ENGINE = InnoDB;
