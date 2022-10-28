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

COLUMN PROF_NAME HEADING 'PROFESSOR|NAME' FORMAT A30

COLUMN DNAME HEADING 'DEPARTMENT|NAME' FORMAT A30

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

-- 3. (xiii) Find out name of students who have
-- taken Database Systems course as well as
-- Operating Systems course in fall semester
-- 2016 – 17 (Fall 2016)
SELECT
    STUDENT.SNAME
FROM
    STUDENT
    INNER JOIN ENROLL
    ON ENROLL.REG_NO = STUDENT.REG_NO
    INNER JOIN CLASS
    ON CLASS.CLS_CODE = ENROLL.CLS_CODE
    INNER JOIN COURSE
    ON CLASS.CRS_CODE = COURSE.CRS_CODE
    AND COURSE.CRS_CODE IN ('OS',
    'DBMS')
    INNER JOIN SEMESTER
    ON SEMESTER.SEM_CODE = CLASS.SEM_CODE
    AND SEMESTER.TERM = 'Fall'
    AND SEMESTER.YEAR = 2016
GROUP BY
    STUDENT.SNAME
HAVING
    COUNT(DISTINCT COURSE.CRS_CODE) = 2;

-- 3. (xiv) Find out name of students who have
-- taken Database Systems course but have not
-- taken Operating Systems course in winter
-- semester 2017 – 18 (Winter 2018).
SELECT
    STUDENT.SNAME,
    COURSE.CRS_CODE
FROM
    STUDENT
    INNER JOIN ENROLL
    ON ENROLL.REG_NO = STUDENT.REG_NO
    INNER JOIN CLASS
    ON ENROLL.CLS_CODE = CLASS.CLS_CODE
    INNER JOIN COURSE
    ON COURSE.CRS_CODE = CLASS.CRS_CODE
    AND COURSE.CRS_CODE IN ('DBMS',
    'OS')
    INNER JOIN SEMESTER
    ON SEMESTER.SEM_CODE = CLASS.SEM_CODE
    AND SEMESTER.YEAR = 2018
    AND SEMESTER.TERM = 'Winter' MINUS
    SELECT
        STUDENT.SNAME,
        COURSE.CRS_CODE
    FROM
        STUDENT
        INNER JOIN ENROLL
        ON ENROLL.REG_NO = STUDENT.REG_NO
        INNER JOIN CLASS
        ON ENROLL.CLS_CODE = CLASS.CLS_CODE
        INNER JOIN COURSE
        ON COURSE.CRS_CODE = CLASS.CRS_CODE
        AND COURSE.CRS_CODE = 'OS'
        INNER JOIN SEMESTER
        ON SEMESTER.SEM_CODE = CLASS.SEM_CODE
        AND SEMESTER.YEAR = 2018
        AND SEMESTER.TERM = 'Winter';

-- 3. (xv) List the registration number and name of
-- the students who have registered for maximum
-- number of credits in Winter 17-18 (Winter 2018)
-- semester. (Assume that the maximum number of
-- credits = 26)
SELECT
    STUDENT.REG_NO,
    STUDENT.SNAME
FROM
    STUDENT,
    ENROLL,
    CLASS,
    COURSE
WHERE
    STUDENT.REG_NO = ENROLL.REG_NO
    AND CLASS.CLS_CODE = ENROLL.CLS_CODE
    AND CLASS.CRS_CODE = COURSE.CRS_CODE
GROUP BY
    STUDENT.REG_NO,
    STUDENT.SNAME
HAVING
    SUM(COURSE.CREDITS) = 26;

-- 3. (xvi) List the name of the course and the number
-- of students registered in each slot for course under
-- different faculty members.
SELECT
    COURSE.CRS_NAME,
    COUNT(ENROLL.REG_NO),
    SLOT
FROM
    COURSE,
    ENROLL,
    CLASS
WHERE
    ENROLL.CLS_CODE = CLASS.CLS_CODE
    AND CLASS.CRS_CODE = COURSE.CRS_CODE
GROUP BY
    ENROLL.REG_NO,
    COURSE.CRS_NAME,
    SLOT;

-- 3. (xvii) Find out the name of the students who have
-- registered in all the courses being taught by
-- Prof. O'Brien in Winter 17-18 (Winter 2018).
SELECT
    STUDENT.SNAME
FROM
    STUDENT,
    PROFESSOR,
    CLASS,
    ENROLL
WHERE
    ENROLL.CLS_CODE = CLASS.CLS_CODE
    AND ENROLL.REG_NO = STUDENT.REG_NO
    AND CLASS.PROF_ID = PROFESSOR.PROF_ID
    AND PROFESSOR.PROF_NAME = 'O''Brien';

-- only works on vscode
-- 3. (xviii) List the registration number of the students
-- who registered in Database Systems course on
-- November 17, 2017
SELECT
    STUDENT.REG_NO
FROM
    STUDENT,
    ENROLL,
    CLASS
WHERE
    ENROLL.REG_NO = STUDENT.REG_NO
    AND ENROLL.CLS_CODE = CLASS.CLS_CODE
    AND ENROLL.ENROLL_TIME >= '17-NOV-2017'
    AND ENROLL.ENROLL_TIME < '18-NOV-2017'
    AND CLASS.CRS_CODE = 'DBMS';

-- 3. (xix) Write a query to display the grade of a student
-- given his/her registration number and the course name
-- for Fall semester 17–18 (Fall 2017).
SELECT
    ENROLL.GRADE
FROM
    ENROLL,
    CLASS
WHERE
    ENROLL.CLS_CODE = CLASS.CLS_CODE
    AND CLASS.SEM_CODE = 'FALL17'
    AND ENROLL.REG_NO = '22002'
    AND CLASS.CRS_CODE = 'CRS003';

-- 3. (xx) List the name of departments and the name
-- professors who is in charge of the department.
SELECT
    PROFESSOR.PROF_NAME,
    DEPARTMENT.DNAME
FROM
    PROFESSOR,
    DEPARTMENT,
    PROFESSOR_DEPARTMENT
WHERE
    PROFESSOR_DEPARTMENT.PROF_ID = PROFESSOR.PROF_ID
    AND PROFESSOR_DEPARTMENT.DEPT_ID = DEPARTMENT.DEPT_ID
    AND PROFESSOR_DEPARTMENT.IS_HOD = 'T';

-- 3. (xxi) List the name of schools with students
-- strength higher than 7000.
SELECT
    SCHOOL.SCL_NAME
FROM
    SCHOOL,
    STUDENT,
    DEPARTMENT
WHERE
    STUDENT.DEPT_ID = DEPARTMENT.DEPT_ID
    AND DEPARTMENT.SCODE = SCHOOL.SCODE
GROUP BY
    SCHOOL.SCL_NAME
HAVING
    COUNT(STUDENT.REG_NO) > 7000;

-- 3. (xxii) List the name of the department(s) under
-- school of medicine with student strength higher than the
-- average students of all the departments in the school.
SELECT
    DEPARTMENT.DNAME
FROM
    DEPARTMENT,
    SCHOOL,
    STUDENT
WHERE
    STUDENT.DEPT_ID = DEPARTMENT.DEPT_ID
    AND DEPARTMENT.SCODE = SCHOOL.SCODE
    AND SCHOOL.SCL_NAME = 'School of Medicine'
GROUP BY
    DEPARTMENT.DNAME
HAVING
    COUNT(STUDENT.REG_NO) > (
        SELECT
            COUNT(DISTINCT STUDENT.REG_NO) / COUNT(DISTINCT DEPARTMENT.DEPT_ID)
        FROM
            STUDENT,
            DEPARTMENT
    );

-- 3. (xxiii) Given the registration number of a student,
-- display the total credits registered by him/her in
-- Winter 17-18 (Winter 2018).
SELECT
    SUM(COURSE.CREDITS)
FROM
    ENROLL,
    CLASS,
    COURSE,
    STUDENT
WHERE
    ENROLL.REG_NO = 22004
    AND STUDENT.REG_NO = ENROLL.REG_NO
    AND ENROLL.CLS_CODE = CLASS.CLS_CODE
    AND CLASS.CRS_CODE = COURSE.CRS_CODE
    AND CLASS.SEM_CODE = 'WIN18'
GROUP BY
    STUDENT.REG_NO;

-- 3. (xxiv) Given the registration number of a student,
-- display her/his grade in the course she/he registered
-- in Fall 17-18 (Fall 2017).
SELECT
    COURSE.CRS_NAME,
    ENROLL.GRADE
FROM
    ENROLL,
    COURSE,
    STUDENT,
    CLASS
WHERE
    ENROLL.REG_NO = STUDENT.REG_NO
    AND STUDENT.REG_NO = '22002'
    AND ENROLL.CLS_CODE = CLASS.CLS_CODE
    AND CLASS.CRS_CODE = COURSE.CRS_CODE
    AND CLASS.SEM_CODE = 'FALL17';

-- 3. (xxv) Display the name of the courses that are not
-- being offered in Winter 17-18 (Winter 2018).
SELECT
    COURSE.CRS_NAME
FROM
    COURSE
WHERE
    COURSE.CRS_CODE NOT IN(
        SELECT
            COURSE.CRS_CODE
        FROM
            CLASS,
            COURSE
        WHERE
            CLASS.SEM_CODE = 'WIN18'
            AND CLASS.CRS_CODE = COURSE.CRS_CODE
    );

-- 3. (xxvi) Write necessary SQL statement to advance the
-- start time and end time of every class by ten minutes
-- in Fall 18–19 (Fall 2017)

UPDATE CLASS
SET
    STIME = STIME + INTERVAL '10' MINUTE,
    ETIME = ETIME + INTERVAL '10' MINUTE
WHERE
    SEM_CODE = 'FALL17';

-- 3. (xxvii) Write necessary SQL statement
-- to advance the start date and end date of
-- Fall 18-19 semester by one week with
-- respect to Fall semester of 17-18(Fall 2017)
UPDATE CLASS
SET
    STIME = STIME + INTERVAL '7' DAY,
    ETIME = ETIME + INTERVAL '7' DAY
WHERE
    SEM_CODE = 'FALL18';

-- 3. (xxviii) Find out the name list of
-- students who had secured ‘S’ grade in
-- at least 50% of the courses cleared by
-- her/him.
SELECT
    STUDENT.SNAME
FROM
    STUDENT,
    ENROLL
WHERE
    STUDENT.REG_NO = ENROLL.REG_NO
    AND ENROLL.GRADE = 'S'
GROUP BY
    STUDENT.SNAME
HAVING
    COUNT(GRADE) >= 0.5 * (
        SELECT
            COUNT(GRADE)
        FROM
            STUDENT,
            ENROLL
        WHERE
            STUDENT.REG_NO = ENROLL.REG_NO
            AND ENROLL.GRADE IN ('S',
            'A',
            'B',
            'C',
            'D',
            'E')
        GROUP BY
            GRADE
    );

-- 3. (xxix) Given the registration number
-- of a student, find out his/her free slots.
SELECT
    CLASS.SLOT
FROM
    ENROLL,
    CLASS
WHERE
    ENROLL.CLS_CODE = CLASS.CLS_CODE
    AND CLASS.SLOT NOT IN (
        SELECT
            CLASS.SLOT
        FROM
            ENROLL,
            CLASS
        WHERE
            ENROLL.CLS_CODE = CLASS.CLS_CODE
            AND ENROLL.REG_NO = '22003'
    );

-- 3. (xxx) Find out the name list of students
-- who have classes in the afternoon session
-- only on a specific day of the week.
SELECT
    STUDENT.SNAME
FROM
    STUDENT,
    ENROLL,
    CLASS
WHERE
    ENROLL.REG_NO = STUDENT.REG_NO
    AND CLASS.CLS_CODE = ENROLL.CLS_CODE
    AND CLASS.DAY_OF_WEEK = 'Tuesday'
    AND EXTRACT(HOUR FROM CLASS.STIME) >= 12;

-- 3. (xxxi) Add a column named ‘Duration’
-- (to indicate duration of a class) with
-- appropriate data type to the CLASS
-- table and populate the column from values
-- of start time and end time columns.
ALTER TABLE CLASS ADD DURATION NUMBER;

UPDATE CLASS
SET
    DURATION = EXTRACT(
        HOUR FROM ETIME - STIME
    );

-- 3. (xxxii) Add a column named
-- 'SemesterDuration' (indicating duration
-- of a semester) with appropriate data type
-- to the SEMESTER table and populate the
-- column from values of start date and end
-- date columns.
ALTER TABLE SEMESTER ADD SEMESTERDURATION NUMBER;

UPDATE SEMESTER
SET
    SEMESTERDURATION = EDATE - SDATE;

-- 3. (xxxiii) Find out the list of students who
-- are undergoing MCA program.
SELECT
    STUDENT.SNAME
FROM
    STUDENT,
    PROGRAMME
WHERE
    STUDENT.DEPT_ID = PROGRAMME.DEPT_ID
    AND PROGRAMME.PROG_CODE = 'MCA';

-- 3. (xxxiv) Display the name of programs and the
-- name of school offering the program
SELECT
    PROGRAMME.PROG_NAME,
    SCHOOL.SCODE
FROM
    PROGRAMME,
    SCHOOL
WHERE
    PROGRAMME.SCODE = SCHOOL.SCODE;

-- 3. (xxxv) Display the name of the departments and
-- the name of the program controlled by the department.
SELECT
    PROGRAMME.PROG_NAME,
    DEPARTMENT.DNAME
FROM
    PROGRAMME,
    DEPARTMENT
WHERE
    PROGRAMME.DEPT_ID = DEPARTMENT.DEPT_ID;

-- 4. (i) Test the string manipulation functions –
-- UPPER, LOWER, INITCAP, LENGTH, LPAD, RPAD, LTRIM,
-- RTRIM and TRIM, using select queries on data
-- present in the tables. Use one query each for
-- demonstration of one function.
SELECT
    UPPER(STUDENT.SNAME)
FROM
    STUDENT;

SELECT
    LOWER(STUDENT.SNAME)
FROM
    STUDENT;

SELECT
    INITCAP(STUDENT.SNAME)
FROM
    STUDENT;

SELECT
    LENGTH(STUDENT.SNAME)
FROM
    STUDENT;

SELECT
    LPAD(STUDENT.SNAME,
    15,
    '@')
FROM
    STUDENT;

SELECT
    RPAD(STUDENT.SNAME,
    15,
    '@')
FROM
    STUDENT;

SELECT
    LTRIM('   hello')
FROM
    DUAL;

SELECT
    LTRIM('hello   ')
FROM
    DUAL;

SELECT
    TRIM('   hello    ')
FROM
    DUAL;

-- 4. (ii) Write query to illustrate usage of NVL
-- function and NULLIF function.
SELECT
    NVL('Not a null',
    'Some Value')
FROM
    DUAL;

SELECT
    NVL(NULL,
    'Some Value')
FROM
    DUAL;

SELECT
    NULLIF(5,
    4)
FROM
    DUAL;

SELECT
    NULLIF(4,
    4)
FROM
    DUAL;

-- 4. (iii) Display the name of the students who
-- were born on a specified month.
SELECT
    SNAME
FROM
    STUDENT
WHERE
    EXTRACT(MONTH FROM DOB) = 2;

-- 4. (iv) Display the name of the students with a 
-- specified date of birth.
SELECT
    SNAME
FROM
    STUDENT
WHERE
    DOB = '04-FEB-1998';