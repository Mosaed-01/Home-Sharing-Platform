USE HOME_SHARING_PLATFORM;
GO

SELECT
  u.First_Name + ' ' + u.Last_Name AS OwnerName,
  p.Title
FROM Users u
JOIN Roles r ON r.Role_ID = u.Role_ID
JOIN Properties p ON p.Owner_ID = u.User_ID
WHERE r.Role_Name = 'Owner'
FOR XML PATH('Row'), ROOT('OwnersProperties');
GO
