-Create a table called "student_courses"-

CREATE TABLE student_courses (
  studentid INTEGER,
  course TEXT,
  grade REAL DEFAULT NULL,
 );

-Add registration information for students-
INSERT INTO student_courses (studentid, course)
VALUES
  (1, 'INFO330A'),
  (1, 'INFO448A'),
  (1, 'INFO314'),
  (3, 'BAW0100'),
  (3, 'BAW100A'),
  (4, 'BAW0100'),
  (2, 'INFO330A'),
  (2, 'INFO449A');
