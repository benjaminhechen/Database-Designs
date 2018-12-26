drop table if exists Bid ;
drop table if exists Category ;
drop table if exists Item ;
drop table if exists User ;


CREATE TABLE User (
	userID varchar(767) NOT NULL,
	rating int NOT NULL,
	location varchar (767),
	country varchar(767),
	PRIMARY KEY (userID)
) ;

CREATE TABLE Item (
	itemID int NOT NULL,
	name varchar(767) NOT NULL,
	currently decimal(15,2) NOT NULL, 
	buy_price decimal(15,2),
	first_bid decimal(15,2),
	started DATETIME NOT NULL,
	ends DATETIME NOT NULL,
	userID varchar(767) NOT NULL,
	description varchar(767),
	PRIMARY KEY (itemID),
	CONSTRAINT fk_item FOREIGN KEY(userID) REFERENCES User(userID)
) ;

CREATE TABLE Bid (
	itemID int NOT NULL,
	userID varchar(767) NOT NULL,
	timeOfBid DATETIME NOT NULL,
	amount decimal(15,2) NOT NULL,
	CONSTRAINT pk_bid PRIMARY KEY (itemID, userID, timeOfBid),
	CONSTRAINT fk_item1 FOREIGN KEY(userID) REFERENCES User(userID),
	CONSTRAINT fk_item2 FOREIGN KEY(itemID) REFERENCES Item(itemID)
) ;

CREATE TABLE Category (
	itemID int NOT NULL,
	category varchar(767) NOT NULL,
	CONSTRAINT pk_category PRIMARY KEY (itemID, category),
	CONSTRAINT fk_category FOREIGN KEY(itemID) REFERENCES Item(itemID)
) ;

