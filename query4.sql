-- Count the number of sellers whose rating is higher than 1000.

SELECT count(distinct User.userID)
FROM User, Item
WHERE User.userID like Item.userID 
	AND User.rating > 1000;

-- 3130