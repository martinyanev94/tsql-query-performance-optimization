CREATE PROCEDURE GetCustomerDetails
    @Region NVARCHAR(50)
AS
BEGIN
    SELECT * FROM Customers WHERE Region = @Region;
END
