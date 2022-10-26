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

INSERT INTO PROFESSOR VALUES(
    'PR004',
    'PROFESSOR_4',
    'prof_4@email.com',
    1245120566,
    'Oncology'
);

INSERT INTO PROFESSOR VALUES(
    'PR005',
    'PROFESSOR_5',
    'prof_5@email.com',
    2353415125,
    'Computer Science'
);

INSERT INTO PROFESSOR VALUES(
    'PR006',
    'O''Brien',
    'obrien@email.com',
    6782392334,
    'Lobotomy'
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

INSERT INTO DEPARTMENT VALUES(
    'DEPT003',
    'BURN',
    'SCH003'
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

INSERT INTO STUDENT VALUES(
    '22004',
    'Mike Hunt',
    'Vidhigaon, Bhopal, Madhya Pradesh',
    '04-FEB-1998',
    'mike@email.com',
    2345345829,
    'DEPT003',
    'PR004'
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

INSERT INTO COURSE VALUES(
    'DBMS',
    'Database Systems',
    'This is database systems',
    8,
    60
);

INSERT INTO COURSE VALUES(
    'OS',
    'Operating Systems',
    'This is operating systems',
    10,
    100
);

--- SEMESTER ---
-- 8.
INSERT INTO SEMESTER VALUES(
    'WIN22',
    'Winter',
    2022,
    '01-NOV-2022',
    '01-MAR-2023'
);

INSERT INTO SEMESTER VALUES(
    'FALL22',
    'Fall',
    2022,
    '01-APR-2022',
    '20-SEP-2022'
);

INSERT INTO SEMESTER VALUES(
    'FALL17',
    'Fall',
    2017,
    '01-APR-2017',
    '20-SEP-2017'
);

INSERT INTO SEMESTER VALUES(
    'FALL16',
    'Fall',
    2016,
    '01-APR-2016',
    '20-SEP-2016'
);

INSERT INTO SEMESTER VALUES(
    'WIN18',
    'Winter',
    2018,
    '01-NOV-2017',
    '01-MAR-2018'
);

--- CLASS ---
-- 1. (ii) Use timestamp data type without
-- fractional parts of seconds for start
-- time and end time column of
-- class table
ALTER SESSION SET NLS_TIMESTAMP_FORMAT = "HH24:MI:SS";

INSERT INTO CLASS VALUES(
    'CLS002',
    'C2/G1',
    '10:00:00',
    '12:00:00',
    'CRS002',
    'PR002',
    104,
    'FALL22',
    'Wednesday'
);

INSERT INTO CLASS VALUES(
    'CLS001',
    'A1/B1',
    '14:00:00',
    '17:00:00',
    'CRS001',
    'PR001',
    101,
    'WIN22',
    'Wednesday'
);

INSERT INTO CLASS VALUES(
    'CLS003',
    'T1/A1',
    '08:00:00',
    '10:00:00',
    'CRS003',
    'PR004',
    105,
    'FALL17',
    'Friday'
);

INSERT INTO CLASS VALUES(
    'CLS004',
    'B1/A1',
    '12:00:00',
    '14:00:00',
    'DBMS',
    'PR005',
    113,
    'FALL16',
    'Tuesday'
);

INSERT INTO CLASS VALUES(
    'CLS005',
    'F2/G1',
    '17:00:00',
    '19:00:00',
    'OS',
    'PR005',
    120,
    'FALL16',
    'Saturday'
);

INSERT INTO CLASS VALUES(
    'CLS006',
    'E2/A1',
    '13:00:00',
    '14:00:00',
    'DBMS',
    'PR006',
    124,
    'WIN18',
    'Tuesday'
);

--- ENROLL ---
INSERT INTO ENROLL VALUES(
    'CLS001',
    '22002',
    '10:31:50',
    'C'
);

INSERT INTO ENROLL VALUES(
    'CLS002',
    '22001',
    '14:31:25',
    'A'
);

INSERT INTO ENROLL VALUES(
    'CLS003',
    '22002',
    '02:35:00',
    'D'
);

INSERT INTO ENROLL VALUES(
    'CLS004',
    '22003',
    '02:35:00',
    'F'
);

INSERT INTO ENROLL VALUES(
    'CLS005',
    '22003',
    '06:00:00',
    'A'
);

INSERT INTO ENROLL VALUES(
    'CLS006',
    '22004',
    '12:00:37',
    'B'
);