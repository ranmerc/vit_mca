DELETE FROM PROFESSOR_DEPARTMENT;

DELETE FROM PROGRAMME;

DELETE FROM STUDENT_VISA;

DELETE FROM ENROLL;

DELETE FROM STUDENT;

DELETE FROM CLASS;

DELETE FROM SEMESTER;

DELETE FROM COURSE;

DELETE FROM DEPARTMENT;

DELETE FROM SCHOOL;

DELETE FROM PROFESSOR;

--- PROFESSOR ---
INSERT INTO PROFESSOR VALUES(
    'PR001',
    'PROFESSOR_1',
    'prof_1@email.com',
    2228332282,
    'Statistical Methods'
);

INSERT INTO PROFESSOR VALUES(
    'PR002',
    'PROFESSOR_2',
    'prof_2@email.com',
    2345187509,
    'Magnet Networks'
);

INSERT INTO PROFESSOR VALUES(
    'PR003',
    'PROFESSOR_3',
    'prof_3@email.com',
    1321115090,
    'Neurosurgery'
);

--- SCHOOL ---
INSERT INTO SCHOOL VALUES(
    'SCH001',
    'School of Statistics',
    'PR001',
    'SJT'
);

INSERT INTO SCHOOL VALUES(
    'SCH002',
    'School of Computer Science',
    'PR002',
    'TT'
);

INSERT INTO SCHOOL VALUES(
    'SCH003',
    'School of Medicine',
    'PR003',
    'SMV'
);

--- DEPARTMENT ---
INSERT INTO DEPARTMENT VALUES(
    'DEPT001',
    'STATISTICS',
    'SCH001'
);

INSERT INTO DEPARTMENT VALUES(
    'DEPT002',
    'NETWORKS',
    'SCH002'
);

--- STUDENT ---
-- 1.
INSERT INTO STUDENT VALUES(
    '22001',
    'Sulaj Kepir',
    'VIT University, Katpadi, Vellore, Tamil Nadu',
    '24-DEC-2001',
    'sulaj@email.com',
    9988776655,
    'DEPT001',
    'PR001'
);

-- 2.
INSERT INTO STUDENT VALUES(
    '22002',
    'Sukon Deese',
    'Sukhi Nagar, Kanpur, Uttar Pradesh',
    '02-FEB-1999',
    'sukon@email.com',
    4628967566,
    'DEPT001',
    'PR001'
);

-- 3.
INSERT INTO STUDENT VALUES(
    '22003',
    'Timon Zwanpa',
    'Astit Colony, Johanes, Zambia',
    '31-JAN-2001',
    'timon@email.com',
    2359108490,
    'DEPT002',
    'PR002'
);

--- STUDENT_VISA ---
-- 3.
INSERT INTO STUDENT_VISA VALUES(
    '22003',
    'ACCEPTED'
);

--- COURSE ---
-- 4.
INSERT INTO COURSE VALUES(
    'CRS002',
    'COURSE_2',
    'THIS IS THE COURSE 2',
    4,
    60
);

INSERT INTO COURSE VALUES(
    'CRS003',
    'COURSE_3',
    'THIS IS THE COURSE 3',
    5,
    150
);

INSERT INTO COURSE VALUES(
    'CRS001',
    'COURSE_1',
    'THIS IS THE COURSE 1',
    2,
    40
);

--- SEMESTER ---
-- 8.
INSERT INTO SEMESTER VALUES(
    'WIN001',
    'Winter',
    2022,
    '01-NOV-2022',
    '01-MAR-2023'
);

--- CLASS ---

-- 1. (ii) Use timestamp data type without
-- fractional parts of seconds for start
-- time and end time column of
-- class table
ALTER SESSION SET NLS_TIMESTAMP_FORMAT = "DD-MM-YYYY HH24:MI:SS";

INSERT INTO CLASS VALUES(
    'CLS001',
    'A1/B1',
    '01-11-2022 14:00:00',
    '05-12-2022 17:00:00',
    'CRS001',
    'PR001',
    '101',
    'WIN001',
    '5'
);

--- ENROLL ---
INSERT INTO ENROLL VALUES(
    'CLS001',
    '22002',
    '29-10-2022 10:31:50',
    'C'
);