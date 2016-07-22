create table publisher (
	code VARCHAR(6) PRIMARY KEY,
	name VARCHAR(64) NOT NULL,
	address VARCHAR(128) NOT NULL,
	UNIQUE(name)
);

create table BOOK (
	isbn VARCHAR(13) PRIMARY KEY,
	name VARCHAR(64) NOT NULL,
	publishDate DATE,
	price DECIMAL(8,2),
	publisherCode VARCHAR(6),
	FOREIGN KEY (publisher) REFERENCES publisher (code),
	UNIQUE(name)
);