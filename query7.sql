-- Count the number of pair of bidders, who bid for the same item.


SELECT COUNT(*)
FROM (SELECT Distinct Bid1.userID as Bid1user, Bid2.userID as Bid2user
		FROM Bid Bid1, Bid Bid2 where Bid1.itemID = Bid2.itemID 
		and Bid1.userID > Bid2.userID) pairs;

-- 24668