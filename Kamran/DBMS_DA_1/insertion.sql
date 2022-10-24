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

-- 3.
INSERT INTO STUDENT_VISA VALUES(
    '22003',
    'ACCEPTED'
);

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