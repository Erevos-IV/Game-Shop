CREATE TABLE Orders(
    OrderID INT NOT NULL AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    -- An order may not be shipped yet.
    -- OrderDate and ShipDate may be the same if the customer gets his order in the store.
    ShipDate DATE,
    Comments TEXT,
    
    PRIMARY KEY(OrderID),
    FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
    
)AUTO_INCREMENT = 1 ENGINE = InnoDB;
