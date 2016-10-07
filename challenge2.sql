CREATE TABLE stadium(
	name varchar(50) NOT NULL,
	capacity int(7) NOT NULL,
	ticketprice float(5) NOT NULL,
	PRIMARY KEY(`name`)
) ENGINE=InnoDB;

CREATE TABLE team(
	city varchar(50) NOT NULL,
	name varchar(50) NOT NULL,
	stadiumName varchar(50) NOT NULL,
	PRIMARY KEY(name),
	FOREIGN KEY (stadiumName) REFERENCES stadium(name)
) ENGINE=InnoDB;

CREATE TABLE player(
	fname varchar(50) NOT NULL,
	lname varchar(50) NOT NULL,
	teamName varchar(50) NOT NULL,
	age int(4) NOT NULL,
	salary float(7) NOT NULL,
	PRIMARY KEY (fname, lname),
	FOREIGN KEY (teamName) REFERENCES team(name)
) ENGINE=InnoDB;