-- Count the number of sellers who sell items in more than 10 categories

SELECT COUNT(*)
FROM (SELECT DISTINCT SELLER, COUNT(*) AS NUM
		FROM (SELECT DISTINCT Item.userID as SELLER, Category.category as CATEGORY
			FROM Item, Category
			WHERE Item.itemID = Category.itemID) sortA
		GROUP BY SELLER) sortB
WHERE NUM > 10

-- 234




