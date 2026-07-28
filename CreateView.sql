CREATE VIEW orders_view AS
    SELECT 
        orders.OrderID,
        clients.ClientID,
        clients.FullName,
        products.ProductName,
        orders.Quantity,
        orders.TotalCost,
        delivery.DeliveryStatus,
        delivery.DeliveryDate,
        address.Street
    FROM
        clients
            INNER JOIN
        orders USING (ClientID)
            INNER JOIN
        products USING (ProductID)
            INNER JOIN
        delivery USING (OrderID)
            INNER JOIN
        address USING (AddressID);