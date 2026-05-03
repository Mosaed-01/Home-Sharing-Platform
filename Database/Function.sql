USE HOME_SHARING_PLATFORM;
GO

CREATE OR ALTER FUNCTION dbo.fn_AvailablePropertiesOnDate
(
    @TargetDate DATE
)
RETURNS TABLE
AS
RETURN
(
    SELECT p.Property_ID, p.Title, p.Price_Per_Day, p.Capacity, l.City
    FROM Properties p
    INNER JOIN Locations l ON l.Location_ID = p.Location_ID
    WHERE NOT EXISTS (
        SELECT 1
        FROM Property_Availability a
        WHERE a.Property_ID = p.Property_ID
          AND a.Unavailable_Date = @TargetDate
    )
    AND NOT EXISTS (
        SELECT 1
        FROM Bookings b
        WHERE b.Property_ID = p.Property_ID
          AND b.Check_In <= @TargetDate
          AND b.Check_Out >  @TargetDate
          AND b.Status <> 'Cancelled'
    )
);
GO
