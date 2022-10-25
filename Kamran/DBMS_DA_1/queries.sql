SET UNDERLINE =

COLUMN SNAME HEADING 'STUDENT|NAME' FORMAT A20

COLUMN EMAIL HEADING 'STUDENT|EMAIL'FORMAT A20

COLUMN ADDRESS HEADING 'STUDENT|ADDRESS' FORMAT A30

COLUMN REG_NO HEADING 'STUDENT|REG NO' FORMAT A10

COLUMN PROF_NAME HEADING 'PROFESSOR|NAME' FORMAT A20

COLUMN SPECIALITY HEADING 'PROFESSOR|SPECIALITY' FORMAT A30

COLUMN CLS_CODE HEADING 'CLASS|CODE' FORMAT A10

COLUMN ROOM_NO HEADING 'ROOM NO' FORMAT 9999

COLUMN SLOT FORMAT A10

COLUMN DURATION FORMAT 99

COLUMN STIME HEADING 'STARTING|TIME' FORMAT A10

COLUMN ETIME HEADING 'END|TIME' FORMAT A10

COLUMN CRS_CODE HEADING 'COURSE|CODE' FORMAT A10

COLUMN CRS_NAME HEADING 'COURSE|NAME' FORMAT A20

COLUMN DESCRIPTION HEADING 'COURSE|DESCRIPTION' FORMAT A30

COLUMN GRADE FORMAT A10

-- 3. (i) Display name, email address and
-- address for those students who live in
-- Katpadi area and whose name has an l as
-- the third character
SELECT
    SNAME,
    EMAIL,
    ADDRESS
FROM
    STUDENT
WHERE
    ADDRESS LIKE '%Katpadi%'
    AND SNAME LIKE '%l%';

-- 3. (ii) Display name, email address and
-- address for those students who are not
-- from Tamil Nadu.
SELECT
    SNAME,
    EMAIL,
    ADDRESS
FROM
    STUDENT
WHERE
    ADDRESS NOT LIKE '%Tamil Nadu%';

-- 3. (iii) Display name, email address
-- and address of foreign students only.
SELECT
    STUDENT.SNAME,
    STUDENT.EMAIL,
    STUDENT.ADDRESS
FROM
    STUDENT
    INNER JOIN STUDENT_VISA
    ON STUDENT.REG_NO = STUDENT_VISA.REG_NO;

-- 3. (iv) List the name of professors
-- along with their specialty who belong
-- to School of Medicine.

SELECT
    PROFESSOR.PROF_NAME,
    PROFESSOR.SPECIALITY
FROM
    PROFESSOR
    INNER JOIN SCHOOL
    ON SCHOOL.SCL_NAME = 'School of Medicine'
    AND SCHOOL.PROF_ID = PROFESSOR.PROF_ID;

-- 3. (v) Display name of the school and
-- name of professor who chairs the school.

SELECT
    SCHOOL.SCL_NAME,
    PROFESSOR.PROF_NAME
FROM
    PROFESSOR
    INNER JOIN SCHOOL
    ON SCHOOL.PROF_ID = PROFESSOR.PROF_ID;

-- 3. (vi) List course code, course name and
-- course description in alphabetic order of
-- course code.

SELECT
    CRS_CODE,
    CRS_NAME,
    DESCRIPTION
FROM
    COURSE
ORDER BY
    CRS_CODE;

-- 3. (vii) Change the mobile number of a student
-- interactively.
UPDATE STUDENT
SET
    MOBILE='&MOBILE'
WHERE
    REG_NO='&REG_NO';

-- 3. (viii) Remove enrollment information of a
-- student from a particular course interactively.
-- How would you recover the data?
-- By creating a savepoint and rollbacking to it.
SAVEPOINT BEFORE_VIII;

DELETE FROM ENROLL
WHERE
    REG_NO='&REG_NO';

ROLLBACK TO BEFORE_VIII;

-- (ix) Create a duplicate of course table
-- Drop table in case it exists
DROP TABLE COURSE_DUPLICATE;

CREATE TABLE COURSE_DUPLICATE AS
    SELECT
        *
    FROM
        COURSE;

-- (x)  Create a view for list of students
-- (Reg_no, Sname) and the courses they
-- have registered along with name of
-- professors teaching the course
DROP VIEW STUDENT_COURSE_VIEW;

CREATE VIEW STUDENT_COURSE_VIEW AS
    SELECT
        STUDENT.REG_NO,
        STUDENT.SNAME,
        COURSE.CRS_NAME,
        PROFESSOR.PROF_NAME
    FROM
        STUDENT
        INNER JOIN ENROLL
        ON ENROLL.REG_NO = STUDENT.REG_NO
        INNER JOIN CLASS
        ON ENROLL.CLS_CODE = CLASS.CLS_CODE
        INNER JOIN COURSE
        ON COURSE.CRS_CODE = CLASS.CRS_CODE
        INNER JOIN PROFESSOR
        ON PROFESSOR.PROF_ID = CLASS.PROF_ID;

SELECT
    *
FROM
    STUDENT_COURSE_VIEW;

-- (xi) List the room number, slot, start time,
-- end time and duration of every class held on
-- Wednesdays in descending order of room number
SELECT
    ROOM_NO,
    SLOT,
    STIME,
    ETIME,
    EXTRACT (HOUR
FROM
    ETIME - STIME) AS "DURATION"
FROM
    CLASS
WHERE
    DAY_OF_WEEK = 'Wednesday'
ORDER BY
    ROOM_NO DESC;

--3. (xii) Display the name and grade of a
-- student in different courses underwent
-- in fall semester 2017 – 18 (Fall 2017)
SELECT
    STUDENT.SNAME,
    COURSE.CRS_NAME,
    ENROLL.GRADE
FROM
    STUDENT
    INNER JOIN ENROLL
    ON ENROLL.REG_NO = STUDENT.REG_NO
    INNER JOIN CLASS
    ON CLASS.CLS_CODE = ENROLL.CLS_CODE
    INNER JOIN COURSE
    ON COURSE.CRS_CODE = CLASS.CRS_CODE
    INNER JOIN SEMESTER
    ON SEMESTER.SEM_CODE = CLASS.SEM_CODE
    AND SEMESTER.TERM = 'Fall'
    AND SEMESTER.YEAR = 2017;