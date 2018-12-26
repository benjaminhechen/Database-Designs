-- Count the number of users who are both sellers and bidders

SELECT count(distinct Item.userID)
FROM Item, Bid 
WHERE Item.userID like Bid.userID;

- 6717