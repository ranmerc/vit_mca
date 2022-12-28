DELETE FROM LINE;

DELETE FROM PRODUCT;

DELETE FROM VENDOR;

DELETE FROM INVOICE;

DELETE FROM CUSTOMER;

INSERT INTO CUSTOMER VALUES(
    1,
    'C1',
    'L1',
    45000
);

INSERT INTO CUSTOMER VALUES(
    2,
    'C2',
    'L2',
    44500
);

INSERT INTO CUSTOMER VALUES(
    3,
    'C3',
    'L3',
    50000
);

INSERT INTO CUSTOMER VALUES(
    4,
    'C4',
    'L4',
    50000
);

INSERT INTO CUSTOMER VALUES(
    5,
    'C5',
    'L5',
    50000
);

INSERT INTO INVOICE VALUES(
    1,
    1,
    '22-FEB-22',
    1200
);

INSERT INTO INVOICE VALUES(
    2,
    2,
    '23-JUN-21',
    200
);

INSERT INTO INVOICE VALUES(
    3,
    3,
    '04-AUG-22',
    20000
);

INSERT INTO INVOICE VALUES(
    4,
    4,
    '04-JUL-22',
    5000
);

INSERT INTO INVOICE VALUES(
    5,
    5,
    '10-SEP-22',
    5000
);

INSERT INTO INVOICE VALUES(
    8005,
    1,
    '27-AUG-20',
    250.50
);

INSERT INTO INVOICE VALUES(
    8006,
    2,
    '04-AUG-22',
    1500.5
);

INSERT INTO VENDOR VALUES(
    1,
    'V1',
    1232323125
);

INSERT INTO VENDOR VALUES(
    2,
    'V2',
    1222223125
);

INSERT INTO VENDOR VALUES(
    3,
    'V3',
    1333333135
);

INSERT INTO VENDOR VALUES(
    4,
    'V4',
    1444444145
);

INSERT INTO VENDOR VALUES(
    5,
    'V5',
    1555555155
);

INSERT INTO PRODUCT VALUES(
    1,
    'P1',
    100,
    18,
    20,
    1
);

INSERT INTO PRODUCT VALUES(
    2,
    'P2',
    100,
    118,
    200,
    2
);

INSERT INTO PRODUCT VALUES(
    3,
    'P3',
    100,
    68,
    100,
    3
);

INSERT INTO PRODUCT VALUES(
    4,
    'P4',
    1000,
    60,
    100,
    4
);

INSERT INTO PRODUCT VALUES(
    5,
    'P5',
    500,
    25,
    35,
    5
);

INSERT INTO LINE VALUES(
    1,
    1,
    1,
    20,
    19
);

INSERT INTO LINE VALUES(
    2,
    2,
    2,
    45,
    119
);

INSERT INTO LINE VALUES(
    3,
    3,
    3,
    78,
    69
);

INSERT INTO LINE VALUES(
    4,
    4,
    4,
    55,
    100
);

INSERT INTO LINE VALUES(
    5,
    5,
    5,
    50,
    30
);

SELECT
    *
FROM
    CUSTOMER;

SELECT
    *
FROM
    INVOICE;

SELECT
    *
FROM
    VENDOR;

SELECT
    *
FROM
    PRODUCT;

SELECT
    *
FROM
    LINE;