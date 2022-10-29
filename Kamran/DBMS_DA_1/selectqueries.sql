--zoom out to take better screenshots

set linesize 500
set wrap off

COLUMN SNAME HEADING 'STUDENT|NAME' FORMAT A20

COLUMN EMAIL HEADING 'STUDENT|EMAIL'FORMAT A20

COLUMN ADDRESS HEADING 'STUDENT|ADDRESS' FORMAT A40

COLUMN REG_NO HEADING 'STUDENT|REG NO' FORMAT A10

COLUMN PROF_NAME HEADING 'PROFESSOR|NAME' FORMAT A10

COLUMN SPECIALITY HEADING 'PROFESSOR|SPECIALITY' FORMAT A20

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

COLUMN SCL_NAME HEADING 'SCHOOL|NAME' FORMAT A30

COLUMN CRS_NAME HEADING 'COURSE|NAME' FORMAT A30

COLUMN PROG_PREAMBLE FORMAT A30

COLUMN ENROLL_TIME FORMAT A20

COLUMN SEM_CODE FORMAT A10

COLUMN DAY_OF_WEEK FORMAT A15

COLUMN TERM FORMAT A10

COLUMN LOCATION FORMAT A10


-- SELECT
--     *
-- FROM
--     PROFESSOR_DEPARTMENT;

SELECT
    *
FROM
    PROGRAMME;

SELECT
    *
FROM
    STUDENT_VISA;

SELECT
    *
FROM
    ENROLL;

SELECT
    *
FROM
    STUDENT;

SELECT
    *
FROM
    CLASS;

SELECT
    *
FROM
    SEMESTER;

SELECT
    *
FROM
    COURSE;

SELECT
    *
FROM
    DEPARTMENT;

SELECT
    *
FROM
    SCHOOL;

SELECT
    *
FROM
    PROFESSOR;

-- SELECT
--     *
-- FROM
--     CUSTOMER;