SET LINESIZE 1000

COLUMN STUDENTID FORMAT A10;

COLUMN FIRSTNAME FORMAT A10;

COLUMN LASTNAME FORMAT A10;

COLUMN AGE FORMAT 99;

COLUMN BRANCH FORMAT A6;

COLUMN EMAILID FORMAT A15;

DELETE FROM STUDENT;

INSERT INTO STUDENT VALUES(
    '22001',
    'fn1',
    'ln1',
    21,
    'MCA',
    'fn1@gmail.com'
);

INSERT INTO STUDENT VALUES(
    '22002',
    'fn2',
    'ln2',
    20,
    'CSE',
    'fn2@gmail.com'
);

INSERT INTO STUDENT VALUES(
    '22003',
    'fn3',
    'ln3',
    18,
    'BCA',
    'fn3@gmail.com'
);

INSERT INTO STUDENT VALUES(
    '22004',
    'fn4',
    'ln4',
    22,
    'MCA',
    'fn4@gmail.com'
);

INSERT INTO STUDENT VALUES(
    '22005',
    'fn5',
    'ln5',
    18,
    'CSE',
    'fn5@gmail.com'
);

SELECT
    *
FROM
    STUDENT;