
DELIMITER //
CREATE PROCEDURE GetNotShippedOrders()
BEGIN

	SELECT cu.CustomerID, CONCAT(cu.FirstName, ' ', cu.LastName) AS FullName, ord.OrderID, ord.OrderDate, ordt.TotalPrice
    FROM orders AS ord
    INNER JOIN customers AS cu USING(CustomerID)
    INNER JOIN orderdetails AS ordt USING(OrderID)
    WHERE ord.ShipDate = NULL;
    
END //
DELIMITER ;
