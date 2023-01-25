COLUMN ADDRESS FORMAT A30;

COLUMN NAME FORMAT A5;

COLUMN ROOM_NO FORMAT 9999;

DELETE FROM GUEST;

DELETE FROM ROOM;

DELETE FROM HOTEL;

---
INSERT INTO
    HOTEL
VALUES
    (1, 'H1', 'A1');

INSERT INTO
    HOTEL
VALUES
    (2, 'H2', 'A2');

INSERT INTO
    HOTEL
VALUES
    (3, 'PARADISE', 'A3');

INSERT INTO
    HOTEL
VALUES
    (4, 'H4', 'A4');

INSERT INTO
    HOTEL
VALUES
    (5, 'H5', 'A5');

---
INSERT INTO
    ROOM
VALUES
    (1, 1, 'T1', 2000);

INSERT INTO
    ROOM
VALUES
    (2, 1, 'T2', 8000);

INSERT INTO
    ROOM
VALUES
    (3, 2, 'DOUBLE', 30);

INSERT INTO
    ROOM
VALUES
    (4, 2, 'FAMILY', 20);

INSERT INTO
    ROOM
VALUES
    (5, 3, 'T3', 2000);

INSERT INTO
    ROOM
VALUES
    (6, 3, 'T4', 12000);

--
INSERT INTO
    GUEST
VALUES
    (
        1,
        'G1',
        'A1, Hyderabad, Telangana',
        1234562891,
        1
    );

INSERT INTO
    GUEST
VALUES
    (
        2,
        'G2',
        'A2, Hyderabad, Telangana',
        2343924233,
        2
    );

INSERT INTO
    GUEST
VALUES
    (3, 'G3', 'A3', 2343334233, 5);

INSERT INTO
    GUEST
VALUES
    (4, 'G4', 'A4', 9823924233, 5);

INSERT INTO
    GUEST
VALUES
    (5, 'G5', 'A5', 9823234232, 1);

--
SELECT
    *
FROM
    HOTEL;

SELECT
    *
FROM
    ROOM;

SELECT
    *
FROM
    GUEST;