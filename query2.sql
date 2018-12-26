-- Count the number of Items (same as auctions) belonging to exactly four categories.

SELECT count(*) 
FROM (SELECT *
		FROM (SELECT itemID, count(category) as NumCat
				FROM Category
				GROUP BY itemID) as CatCount
		WHERE CatCount.NumCat = 4) as TotCount

-- 8365