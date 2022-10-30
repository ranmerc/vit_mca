-- DELETE FROM PROFESSOR_DEPARTMENT;

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
    'ABHISHEK DAS',
    'abhi_d@email.com',
    9456128722,
    'Statistical Methods',
    'DEPT001'
);

INSERT INTO PROFESSOR VALUES(
    'PR002',
    'ANBARASA KUMAR',
    'anb_ku@email.com',
    7098529327,
    'Data Communication',
    'DEPT002'
);

INSERT INTO PROFESSOR VALUES(
    'PR003',
    'RAJIV S',
    'rajiv_s@email.com',
    8878239271,
    'Cardiology',
    'DEPT003'
);

INSERT INTO PROFESSOR VALUES(
    'PR004',
    'SENTIL KUMAR',
    'sentilk@email.com',
    8592385792,
    'Neurology',
    'DEPT003'
);

INSERT INTO PROFESSOR VALUES(
    'PR005',
    'VINAY M',
    'vinaym@email.com',
    8752938592,
    'DBMS',
    'DEPT002'
);

INSERT INTO PROFESSOR VALUES(
    'PR006',
    'NEELU KHARE',
    'neeluk@email.com',
    9838278265,
    'Lobotomy',
    'DEPT003'
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
    'SCH001',
    'PR001'
);

INSERT INTO DEPARTMENT VALUES(
    'DEPT002',
    'NETWORKS',
    'SCH002',
    'PR002'
);

INSERT INTO DEPARTMENT VALUES(
    'DEPT003',
    'PHYSIOLOGY',
    'SCH003',
    'PR003'
);

--- PROFESSOR_DEPARTMENT ---
-- INSERT INTO PROFESSOR_DEPARTMENT VALUES(
--     'PR001',
--     'DEPT001',
--     'T'
-- );

-- INSERT INTO PROFESSOR_DEPARTMENT VALUES(
--     'PR002',
--     'DEPT002',
--     'T'
-- );

-- INSERT INTO PROFESSOR_DEPARTMENT VALUES(
--     'PR003',
--     'DEPT003',
--     'T'
-- );

-- INSERT INTO PROFESSOR_DEPARTMENT VALUES(
--     'PR005',
--     'DEPT001',
--     'F'
-- );

-- INSERT INTO PROFESSOR_DEPARTMENT VALUES(
--     'PR006',
--     'DEPT003',
--     'F'
-- );

-- INSERT INTO PROFESSOR_DEPARTMENT VALUES(
--     'PR004',
--     'DEPT002',
--     'F'
-- );

--- STUDENT ---
-- 1.
INSERT INTO STUDENT VALUES(
    '22MCA0233',
    'Bhooshan Birje',
    'VIT University, Katpadi, Vellore, Tamil Nadu',
    '24-DEC-2001',
    'bhooshanb@email.com',
    9988776655,
    'DEPT001',
    'PR001'
);

-- 2.
INSERT INTO STUDENT VALUES(
    '22MCA0223',
    'Kamran Ansari',
    'Prabhat road, Pune',
    '06-JUL-2000',
    'ranmerc@email.com',
    8547492385,
    'DEPT001',
    'PR001'
);

-- 3.
INSERT INTO STUDENT VALUES(
    '22MCA018',
    'Timon Zwanpa',
    'Astit Colony, Johanes, Zambia',
    '31-JAN-2001',
    'timon@email.com',
    2359108490,
    'DEPT002',
    'PR002'
);

INSERT INTO STUDENT VALUES(
    '22MCA045',
    'Mike Hunt',
    'Vidhigaon, Bhopal, Madhya Pradesh',
    '04-FEB-1998',
    'mike@email.com',
    2345345829,
    'DEPT003',
    'PR004'
);

INSERT INTO STUDENT VALUES(
    '22MCA0455',
    'Kalpana Chawla',
    'Astit Colony, Katpadi, Tamil Nadu',
    '31-JUL-2001',
    'kalpana@email.com',
    8779273901,
    'DEPT003',
    'PR002'
);

--- STUDENT_VISA ---
-- 3.
INSERT INTO STUDENT_VISA VALUES(
    '22MCA018',
    'ACCEPTED'
);

--- COURSE ---
-- 4.
INSERT INTO COURSE VALUES(
    'CRS001',
    'Networking',
    'Computer Networks',
    4,
    60
);

INSERT INTO COURSE VALUES(
    'CRS002',
    'OOSE',
    'Object Oriented Software Engineering',
    5,
    150
);

INSERT INTO COURSE VALUES(
    'CRS003',
    'ML',
    'Machine learning for beginners',
    2,
    40
);

INSERT INTO COURSE VALUES(
    'CRS004',
    'Database Systems',
    'This is database systems',
    8,
    60
);

INSERT INTO COURSE VALUES(
    'CRS005',
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
    'CRS004',
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
    'CRS005',
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
    'CRS004',
    'PR006',
    124,
    'WIN18',
    'Tuesday'
);

--- ENROLL ---
ALTER SESSION SET NLS_TIMESTAMP_FORMAT = "DD-MM-YY HH24:MI:SS";

INSERT INTO ENROLL VALUES(
    'CLS001',
    '22MCA0233',
    '02-05-2019 10:31:50',
    'C'
);

INSERT INTO ENROLL VALUES(
    'CLS002',
    '22MCA0223',
    '20-05-2022 14:31:25',
    'A'
);

INSERT INTO ENROLL VALUES(
    'CLS003',
    '22MCA018',
    '21-07-2021 06:35:00',
    'D'
);

INSERT INTO ENROLL VALUES(
    'CLS004',
    '22MCA045',
    '17-11-2017 07:35:00',
    'F'
);

INSERT INTO ENROLL VALUES(
    'CLS005',
    '22MCA0233',
    '19-12-2020 06:00:00',
    'A'
);

INSERT INTO ENROLL VALUES(
    'CLS006',
    '22MCA018',
    '20-06-2017 12:00:37',
    'B'
);

ALTER SESSION SET NLS_TIMESTAMP_FORMAT = "HH24:MI:SS";

--- PROGRAMME ---
INSERT INTO PROGRAMME VALUES(
    'MCA',
    'Masters of Computer Application',
    'Strive For Excellency',
    'SCH002',
    'DEPT002'
);

INSERT INTO PROGRAMME VALUES(
    'MBS',
    'Master of Business Statistics',
    'Accuracy above all',
    'SCH001',
    'DEPT001'
);

commit;