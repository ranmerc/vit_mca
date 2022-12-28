-- @insertion.sql

DELETE FROM WORKS_ON;

DELETE FROM PROJECT;

DELETE FROM DEPT;

DELETE FROM EMPLOYEE;

INSERT INTO EMPLOYEE VALUES(
    1,
    'E1',
    'M',
    'A1',
    40000,
    1,
    'DE1',
    2
);

INSERT INTO EMPLOYEE VALUES(
    2,
    'E2A',
    'F',
    'A2',
    80000,
    2,
    'DE3',
    3
);

INSERT INTO EMPLOYEE VALUES(
    3,
    'E3',
    'F',
    'A23',
    30000,
    2,
    'DE44',
    1
);

INSERT INTO EMPLOYEE VALUES(
    4,
    'E4',
    'M',
    'A24',
    40000,
    2,
    'DE2',
    1
);

INSERT INTO EMPLOYEE VALUES(
    5,
    'E5',
    'F',
    'A25',
    10000,
    2,
    'DE1',
    2
);

INSERT INTO DEPT VALUES(
    1,
    'D1',
    1,
    '20-DEC-2001',
    'L2'
);

INSERT INTO DEPT VALUES(
    2,
    'D2',
    3,
    '24-DEC-2001',
    'L3'
);

INSERT INTO DEPT VALUES(
    3,
    'D3',
    null,
    '24-JAN-2001',
    'L4'
);

INSERT INTO DEPT VALUES(
    4,
    'D4',
    3,
    '24-FEB-2001',
    'L5'
);

INSERT INTO DEPT VALUES(
    5,
    'D5',
    2,
    '24-FEB-1999',
    'L6'
);

INSERT INTO PROJECT VALUES(
    1,
    'P1',
    'L1',
    1,
    6000
);

INSERT INTO PROJECT VALUES(
    2,
    'P2',
    'L2',
    2,
    7000
);

INSERT INTO PROJECT VALUES(
    3,
    'P3',
    'L3',
    1,
    1000
);

INSERT INTO PROJECT VALUES(
    4,
    'P4',
    'L4',
    1,
    8000
);

INSERT INTO PROJECT VALUES(
    5,
    'P5',
    'L5',
    2,
    5000
);

INSERT INTO WORKS_ON VALUES(
    1,
    2,
    33
);

INSERT INTO WORKS_ON VALUES(
    1,
    3,
    43
);

INSERT INTO WORKS_ON VALUES(
    2,
    1,
    50
);

INSERT INTO WORKS_ON VALUES(
    4,
    1,
    100
);

INSERT INTO WORKS_ON VALUES(
    5,
    2,
    40
);

ALTER TABLE 
    EMPLOYEE
DROP CONSTRAINT 
    EMPLOYEE_EMP_FK;

ALTER TABLE 
    EMPLOYEE 
ADD CONSTRAINT 
    EMPLOYEE_EMP_FK FOREIGN KEY(SSN) 
REFERENCES 
    EMPLOYEE(SSN);

ALTER TABLE 
    EMPLOYEE
DROP CONSTRAINT 
    EMPLOYEE_DEPT_FK;

ALTER TABLE 
    EMPLOYEE 
ADD CONSTRAINT 
    EMPLOYEE_DEPT_FK FOREIGN KEY(DEPT) 
REFERENCES 
    DEPT(DEPT_NUMBER);