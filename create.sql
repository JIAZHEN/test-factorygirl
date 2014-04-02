
1.table

CREATE TABLE   Gradereport
   (
    studentID      VARCHAR(20) NOT NULL PRIMARY KEY,
    STUDENTNAME    VARCHAR(25) NOT NULL,
    CourseID       VARCHAR(30) NOT NULL,
    Grade          NUMBER(10) NOT NULL,
    Lecture        VARCHAR(20) NOT NULL,
    Room           CHAR,
    Title          VARCHAR(20)
)
   -- UNIQUE(studentID),
   --  FOREIGN KEY(studentID)REFERENCE Courseinformation(studentID)



2.
CREATE TABLE   Courseinformation
   (
    studentID      VARCHAR(20) NOT NULL,
    CourseID       VARCHAR(30) NOT NULL PRIMARY KEY,
    Grade          NUMBER(10) NOT NULL,
    Lecture        VARCHAR(20) NOT NULL,
    Room           CHAR,
    Title          VARCHAR(20)
)
-- UNIQUE(CourseID),
--     FOREIGN KEY (StudentID)REFERENCE(Gradereport)

3.ROOM
  CREATE TABLE   ROOM
   (
    Lecture        VARCHAR(20) NOT NULL,
    Room           CHAR,
    Title          VARCHAR(20) NOT NULL,
    PRIMARY KEY(ROOM)
)


4.
CREATE TABLE   Coursegrade
   (studentID      VARCHAR(20) NOT NULL,
    CourseID       VARCHAR(30) NOT NULL,
    Grade          NUMBER(10) NOT NULL,

    
    PRIMARY KEY(studentID)
)


