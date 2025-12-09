CREATE PROCEDURE ConvertTemperature
    @Degrees FLOAT,
    @Scale CHAR(1)
AS
BEGIN
    IF @Scale = 'C'
        SELECT @Degrees * 9.0 / 5.0 + 32 AS Fahrenheit;
    ELSE
        SELECT (@Degrees - 32) * 5.0 / 9.0 AS Celsius;
END
