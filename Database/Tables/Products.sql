CREATE TABLE Products(
	ProductCode VARCHAR(5) NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    ProductLineID INT NOT NULL,
    QuantityInStock INT NOT NULL,
    SellingPrice DOUBLE NOT NULL,
    
    PRIMARY KEY(ProductCode),
    FOREIGN KEY(ProductLineID) REFERENCES ProductLines(LineID)
    
)ENGINE = InnoDB;
