
1.table

CREATE TABLE gradereports (
  studentid VARCHAR(20) NOT NULL,
  studentname VARCHAR(25) NOT NULL,
  courseid VARCHAR(30) NOT NULL,
  grade NUMBER(10) NOT NULL,
  lecture VARCHAR(20) NOT NULL,
  room CHAR(1) DEFAULT NULL,
  title VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (studentid)
);


2.
CREATE TABLE courseinformations (
  studentid VARCHAR(20) NOT NULL,
  courseid VARCHAR(30) NOT NULL,
  grade NUMBER(10) NOT NULL,
  lecture VARCHAR(20) NOT NULL,
  room CHAR(1) DEFAULT NULL,
  title VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (courseid)
);

3.
CREATE TABLE rooms (
  lecture VARCHAR(20) NOT NULL,
  room CHAR(1) NOT NULL,
  title VARCHAR(20) NOT NULL,
  PRIMARY KEY (room)
);


4.
CREATE TABLE coursegrades (
  studentid VARCHAR(20) NOT NULL,
  courseid VARCHAR(30) NOT NULL,
  grade NUMBER(10) NOT NULL,
  PRIMARY KEY (studentid)
);


