-- The user must give the ID of the customer in order to get
-- all the payments from that particular customer.

DELIMITER //
CREATE PROCEDURE PaymentsByCustomer(IN CustID VARCHAR(5))
BEGIN 

SELECT cu.CustomerID, CONCAT(cu.FirstName, ' ', cu.LastName) AS FullName, cu.Phone, cu.City, pay.PaymentID, pay.PaymentDate
FROM customers AS cu INNER JOIN payments AS pay USING(CustomerID)
Where cu.CustomerID = CustID;

END //
DELIMITER ;
