create table TB_CHARACTERS (
	character_id INT,
	name VARCHAR(50),
	description VARCHAR(2000),
	curiosities VARCHAR(2000),
	photos VARCHAR(50)
);

create table TB_PHOTOS (
	photos_id INT,
	path VARCHAR(2000),
	year VARCHAR(4),
	descriptionOld VARCHAR(2000),
	descriptionActual VARCHAR(2000)
);

create table TB_EVENTS (
	events_id INT,
	title VARCHAR(50),
	link VARCHAR(2000),
	description VARCHAR(2000),
	characters INT,
	dateOfEvents DATE
);

create table TB_RELATION (
	relation_id INT,
	events INT,
	characters INT,
	description VARCHAR(2000)
);
