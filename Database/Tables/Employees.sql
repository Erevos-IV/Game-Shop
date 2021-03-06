CREATE TABLE Employees(
    EmployeeID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Phone BIGINT NOT NULL,
    Email VARCHAR(40) NOT NULL,
    StoreID INT NOT NULL,
    JobTitle VARCHAR(20) NOT NULL,
    ReportsTo VARCHAR(50) NOT NULL,
	
    CHECK (Age >= 18 AND Age <= 60),
    
    PRIMARY KEY(EmployeeID),
    FOREIGN KEY(StoreID) REFERENCES Stores(StoreID)
)AUTO_INCREMENT= 100 ENGINE = InnoDB;
