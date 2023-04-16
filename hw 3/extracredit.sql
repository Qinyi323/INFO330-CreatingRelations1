-Create timeslots table-
CREATE TABLE timeslots (
start TIME,
end TIME,
id INTEGER PRIMARY KEY
);

-Modify room to have a id primary key-
ALTER TABLE rooms ADD COLUMN id INTEGER PRIMARY KEY AUTOINCREMENT;
*comment: the code looks ok but it does not run... I‘m not so sure why
ALTER TABLE rooms ADD COLUMN id; 
*comment: this one worked but I did not know if it is primary key.

-create schedule table-
CREATE TABLE schedule (
  coursecode,
  roomid INTEGER,
  timeslotid INTEGER,
  UNIQUE (roomid, timeslotid),
  FOREIGN KEY (coursecode) REFERENCES courses(code),
  FOREIGN KEY (roomid) REFERENCES rooms(id),
  FOREIGN KEY (timeslotid) REFERENCES timeslots(id)
);
