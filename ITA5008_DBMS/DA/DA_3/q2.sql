--file_name : q2.sql
SET SERVEROUTPUT ON

DECLARE
    V_SQL VARCHAR2(4000);
BEGIN
    FOR C IN (
        SELECT
            COLUMN_NAME
        FROM
            ALL_TAB_COLUMNS
        WHERE
            TABLE_NAME = 'LAB'
    ) LOOP
        V_SQL := 'COLUMN '
            || C.COLUMN_NAME
            || ' FORMAT A20';
        DBMS_OUTPUT.PUT_LINE(V_SQL);
    END LOOP;
    FOR C IN (
        SELECT
            COLUMN_NAME
        FROM
            ALL_TAB_COLUMNS
        WHERE
            TABLE_NAME = 'COMPUTER'
    ) LOOP
        V_SQL := 'COLUMN '
            || C.COLUMN_NAME
            || ' FORMAT A20';
        DBMS_OUTPUT.PUT_LINE(V_SQL);
    END LOOP;
    FOR C IN (
        SELECT
            COLUMN_NAME
        FROM
            ALL_TAB_COLUMNS
        WHERE
            TABLE_NAME = 'PRINTER'
    ) LOOP
        V_SQL := 'COLUMN '
            || C.COLUMN_NAME
            || ' FORMAT A20';
        DBMS_OUTPUT.PUT_LINE(V_SQL);
    END LOOP;
    FOR C IN (
        SELECT
            COLUMN_NAME
        FROM
            ALL_TAB_COLUMNS
        WHERE
            TABLE_NAME = 'SCANNER'
    ) LOOP
        V_SQL := 'COLUMN '
            || C.COLUMN_NAME
            || ' FORMAT A20';
        DBMS_OUTPUT.PUT_LINE(V_SQL);
    END LOOP;
END;
/

--COLUMN FORMATTING
COLUMN COMP_REF FORMAT A20

COLUMN PRINT_REF FORMAT A20

COLUMN SCAN_REF FORMAT A20

COLUMN LAB_ID FORMAT 99

COLUMN LOCATION FORMAT A20

COLUMN COMP_ID FORMAT 99

COLUMN DESCRIPTION FORMAT A20

COLUMN PRINTER_ID FORMAT 99

COLUMN DESCRIPTION FORMAT A20

COLUMN SCANNER_ID FORMAT 99

COLUMN DESCRIPTION FORMAT A20

SET LINESIZE 1000

DROP TABLE LAB;

DROP TABLE COMPUTER;

DROP TABLE SCANNER;

DROP TABLE PRINTER;

DROP TYPE LAB_TYPE;

DROP TYPE COMPUTER_TYPE;

DROP TYPE PRINTER_TYPE;

DROP TYPE SCANNER_TYPE;

--CREATING TYPES
CREATE TYPE COMPUTER_TYPE AS
    OBJECT (
        COMP_ID INT,
        DESCRIPTION VARCHAR(20)
    );
/

CREATE TYPE PRINTER_TYPE AS
    OBJECT (
        PRINTER_ID INT,
        DESCRIPTION VARCHAR(20)
    );
/

CREATE TYPE SCANNER_TYPE AS
    OBJECT (
        SCANNER_ID INT,
        DESCRIPTION VARCHAR(20)
    );
/

CREATE TYPE LAB_TYPE AS
    OBJECT (
        LAB_ID INT,
        LOCATION VARCHAR(20),
        COMP_REF REF COMPUTER_TYPE,
        PRINT_REF REF PRINTER_TYPE,
        SCAN_REF REF SCANNER_TYPE
    );
/

--CREATING TABLES AND INSERITNG VALUES
CREATE TABLE LAB OF LAB_TYPE;

CREATE TABLE COMPUTER OF COMPUTER_TYPE;

CREATE TABLE PRINTER OF PRINTER_TYPE;

CREATE TABLE SCANNER OF SCANNER_TYPE;

-- INSERTION
INSERT INTO COMPUTER VALUES(
    COMPUTER_TYPE(1, 'C1')
);

INSERT INTO COMPUTER VALUES(
    COMPUTER_TYPE(2, 'C2')
);

INSERT INTO COMPUTER VALUES(
    COMPUTER_TYPE(3, 'C3')
);

INSERT INTO COMPUTER VALUES(
    COMPUTER_TYPE(4, 'C4')
);

INSERT INTO COMPUTER VALUES(
    COMPUTER_TYPE(5, 'C5')
);

INSERT INTO PRINTER VALUES(
    PRINTER_TYPE(1, 'P1')
);

INSERT INTO PRINTER VALUES(
    PRINTER_TYPE(2, 'P2')
);

INSERT INTO PRINTER VALUES(
    PRINTER_TYPE(3, 'P3')
);

INSERT INTO PRINTER VALUES(
    PRINTER_TYPE(4, 'P4')
);

INSERT INTO PRINTER VALUES(
    PRINTER_TYPE(5, 'P5')
);

INSERT INTO SCANNER VALUES(
    SCANNER_TYPE(1, 'S1')
);

INSERT INTO SCANNER VALUES(
    SCANNER_TYPE(2, 'S2')
);

INSERT INTO SCANNER VALUES(
    SCANNER_TYPE(3, 'S3')
);

INSERT INTO SCANNER VALUES(
    SCANNER_TYPE(4, 'S4')
);

INSERT INTO SCANNER VALUES(
    SCANNER_TYPE(5, 'S5')
);

INSERT INTO LAB
    SELECT
        LAB_TYPE(1,
        'L',
        REF(C),
        REF(P),
        REF(S))
    FROM
        COMPUTER C,
        PRINTER  P,
        SCANNER  S
    WHERE
        COMP_ID = 1
        AND SCANNER_ID = 1
        AND PRINTER_ID = 1;

INSERT INTO LAB
    SELECT
        LAB_TYPE(2,
        'L2',
        REF(C),
        REF(P),
        REF(S))
    FROM
        COMPUTER C,
        PRINTER  P,
        SCANNER  S
    WHERE
        COMP_ID = 2
        AND SCANNER_ID = 2
        AND PRINTER_ID = 2;

INSERT INTO LAB
    SELECT
        LAB_TYPE(3,
        'L3',
        REF(C),
        REF(P),
        REF(S))
    FROM
        COMPUTER C,
        PRINTER  P,
        SCANNER  S
    WHERE
        COMP_ID = 3
        AND SCANNER_ID = 3
        AND PRINTER_ID = 3;

INSERT INTO LAB
    SELECT
        LAB_TYPE(4,
        'L4',
        REF(C),
        REF(P),
        REF(S))
    FROM
        COMPUTER C,
        PRINTER  P,
        SCANNER  S
    WHERE
        COMP_ID = 4
        AND SCANNER_ID = 4
        AND PRINTER_ID = 4;

INSERT INTO LAB
    SELECT
        LAB_TYPE(5,
        'L5',
        REF(C),
        REF(P),
        REF(S))
    FROM
        COMPUTER C,
        PRINTER  P,
        SCANNER  S
    WHERE
        COMP_ID = 5
        AND SCANNER_ID = 5
        AND PRINTER_ID = 5;

--DISPLAYING TABLES
SET FEEDBACK OFF;

-- BEGIN
--     DBMS_OUTPUT.PUT_LINE(CHR(10)
--         ||'COMPUTER');
-- END;
-- /

SELECT
    *
FROM
    COMPUTER;

-- BEGIN
--     DBMS_OUTPUT.PUT_LINE(CHR(10)
--         ||'PRINTER');
-- END;
-- /

SELECT
    *
FROM
    PRINTER;

-- BEGIN
--     DBMS_OUTPUT.PUT_LINE(CHR(10)
--         ||'SCANNER');
-- END;
-- /

SELECT
    *
FROM
    SCANNER;

-- BEGIN
--     DBMS_OUTPUT.PUT_LINE(CHR(10)
--         ||'LAB');
-- END;
-- /

SELECT
    *
FROM
    LAB;

SET FEEDBACK ON;