CREATE TABLE OrderDetails(
    OrdetID INT NOT NULL AUTO_INCREMENT,
    OrderID INT NOT NULL,
    ProductCode VARCHAR(5) NOT NULL,
    Quantity INT NOT NULL,
    Discount FLOAT,
    TotalPrice DOUBLE NOT NULL,
    
    PRIMARY KEY(OrdetID),
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY(ProductCode) REFERENCES Products(ProductCode)
)ENGINE = InnoDB;

