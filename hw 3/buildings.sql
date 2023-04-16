-Create a table called "buildings"-
CREATE TABLE buildings (
 name VARCHAR(80) NOT NULL,
 shortname VARCHAR(10) UNIQUE,
 id INTEGER PRIMARY KEY AUTOINCREMENT
 );

-create a second table, called "rooms"-
CREATE TABLE rooms (
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER,
  FOREIGN KEY (buildingid) REFERENCES buildings(id)
);

