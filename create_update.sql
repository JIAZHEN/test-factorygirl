
1.table

CREATE TABLE `gradereports` (
  `studentid` varchar(20) NOT NULL,
  `studentname` varchar(25) NOT NULL,
  `courseid` varchar(30) NOT NULL,
  `grade` number(10) NOT NULL,
  `lecture` varchar(20) NOT NULL,
  `room` char(1) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`studentid`)
);


2.
CREATE TABLE `courseinformations` (
  `studentid` varchar(20) NOT NULL,
  `courseid` varchar(30) NOT NULL,
  `grade` number(10) NOT NULL,
  `lecture` varchar(20) NOT NULL,
  `room` char(1) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`courseid`)
);

3.
CREATE TABLE `rooms` (
  `lecture` varchar(20) NOT NULL,
  `room` char(1) NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`room`)
);


4.
CREATE TABLE `coursegrades` (
  `studentid` varchar(20) NOT NULL,
  `courseid` varchar(30) NOT NULL,
  `grade` number(10) NOT NULL,
  PRIMARY KEY (`studentid`)
);


