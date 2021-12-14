SELECT PhoneNumberTypeID, Count(PhoneNumberTypeID) as Count
FROM Person.PersonPhone
WHERE LEFT(PhoneNumber, 3) LIKE '819'
GROUP BY PhoneNumberTypeID
ORDER BY PhoneNumberTypeID;