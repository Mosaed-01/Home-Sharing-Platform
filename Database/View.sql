USE HOME_SHARING_PLATFORM;
GO

CREATE OR ALTER VIEW dbo.vw_AvailablePropertiesToday
AS
SELECT
    p.Title,
    p.Description,
    p.Price_Per_Day,
    p.Capacity,
    l.Country,
    l.City,
    l.Street,
    u.User_ID   AS Owner_ID,
    (u.First_Name + ' ' + u.Last_Name) AS Owner_Name
FROM Properties p
INNER JOIN Locations l ON l.Location_ID = p.Location_ID
INNER JOIN Users u ON u.User_ID = p.Owner_ID
WHERE NOT EXISTS (
    SELECT 1
    FROM Property_Availability a
    WHERE a.Property_ID = p.Property_ID
      AND a.Unavailable_Date = CAST(GETDATE() AS DATE)
);
GO
