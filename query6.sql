-- Count the number of categories that include at least one item with a bid of more than $1000.

SELECT count(distinct Category.category)
FROM Category, Bid 
WHERE Category.itemID like Bid.itemID
	AND Bid.amount > 1000;

-- 4