-- Find the ID(s) of auction(s) with the maximum buy_price

SELECT itemID 
FROM Item
WHERE buy_price = (SELECT MAX(buy_price)
					FROM Item) ;

-- 1677348181