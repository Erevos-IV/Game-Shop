CREATE TABLE Customers(
	CustomerID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Phone BIGINT NOT NULL,
    Email VARCHAR(40) NOT NULL,
    City VARCHAR(50) NOT NULL,
    
    CHECK (Age >= 18 AND Age <= 99),
    
    -- could be null.
    CreditLimit INT,
    -- Could be null.
    PersonalImage longblob,
    
    PRIMARY KEY(CustomerID)
    
)AUTO_INCREMENT = 100 ENGINE innoDB;
