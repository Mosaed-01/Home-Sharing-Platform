USE HOME_SHARING_PLATFORM;
GO

CREATE OR ALTER PROC dbo.usp_AvailableProperties
  @CheckIn  DATE,
  @CheckOut DATE
AS
BEGIN
  SET NOCOUNT ON;

  IF (@CheckIn IS NULL OR @CheckOut IS NULL OR @CheckOut <= @CheckIn)
  BEGIN
    RAISERROR('Error: CheckOut date must be after CheckIn date (and both dates must be provided).', 16, 1);
    RETURN;
  END

  SELECT p.Property_ID, p.Title, p.Price_Per_Day, p.Capacity, l.City
  FROM Properties p
  JOIN Locations l ON l.Location_ID = p.Location_ID
  WHERE NOT EXISTS (
        SELECT 1 FROM Property_Availability a
        WHERE a.Property_ID = p.Property_ID
          AND a.Unavailable_Date >= @CheckIn
          AND a.Unavailable_Date <  @CheckOut
    )
    AND NOT EXISTS (
        SELECT 1 FROM Bookings b
        WHERE b.Property_ID = p.Property_ID
          AND b.Status <> 'Cancelled'
          AND b.Check_In  < @CheckOut
          AND b.Check_Out > @CheckIn
    );
END;
GO
