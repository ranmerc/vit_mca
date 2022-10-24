SET UNDERLINE =

COLUMN SNAME HEADING 'STUDENT|NAME' FORMAT A20

COLUMN EMAIL HEADING 'STUDENT|EMAIL'FORMAT A20

COLUMN ADDRESS HEADING 'STUDENT|ADDRESS' FORMAT A30

COLUMN PROF_NAME HEADING 'PROFESSOR|NAME' FORMAT A20

COLUMN SPECIALITY HEADING 'PROFESSOR|SPECIALITY' FORMAT A30

COLUMN CRS_CODE HEADING 'COURSE|CODE' FORMAT A10

COLUMN CRS_NAME HEADING 'COURSE|NAME' FORMAT A20

COLUMN DESCRIPTION HEADING 'COURSE|DESCRIPTION' FORMAT A30

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
    MOBILE='1145322234'
WHERE
    REG_NO='22002';