--file_name : q5.sql
SET LINESIZE 1000

SET SERVEROUTPUT ON

-- DECLARE
-- v_sql VARCHAR2(4000);
-- BEGIN
-- FOR c IN (SELECT column_name FROM all_tab_columns WHERE table_name =
-- 'STUDENT2') LOOP

-- v_sql := 'COLUMN ' || c.column_name || ' FORMAT A20';
-- DBMS_OUTPUT.PUT_LINE(v_sql);
-- END LOOP;
-- FOR c IN (SELECT column_name FROM all_tab_columns WHERE table_name =
-- 'SUBJECT2') LOOP

-- v_sql := 'COLUMN ' || c.column_name || ' FORMAT A20';
-- DBMS_OUTPUT.PUT_LINE(v_sql);
-- END LOOP;
-- FOR c IN (SELECT column_name FROM all_tab_columns WHERE table_name =
-- 'SUPERVISOR') LOOP

-- v_sql := 'COLUMN ' || c.column_name || ' FORMAT A20';
-- DBMS_OUTPUT.PUT_LINE(v_sql);
-- END LOOP;
-- FOR c IN (SELECT column_name FROM all_tab_columns WHERE table_name =
-- 'STUD_SUB') LOOP

-- v_sql := 'COLUMN ' || c.column_name || ' FORMAT A20';
-- DBMS_OUTPUT.PUT_LINE(v_sql);
-- END LOOP;
-- END;
-- /
COLUMN SPV_REF FORMAT A20

COLUMN STUDENT_ID FORMAT 99

COLUMN STUDENT_NAME FORMAT A20

COLUMN SUBJECT_ID FORMAT 99

COLUMN SUBJECT_NAME FORMAT A20

COLUMN SPV_ID FORMAT 99

COLUMN SPV_NAME FORMAT A20

COLUMN STUD_REF FORMAT A20

COLUMN SUB_REF FORMAT A20

COLUMN ID FORMAT 99

COLUMN MARKS FORMAT 99

DROP TABLE STUD_SUB;

DROP TYPE STUD_SUB_T;

DROP TABLE SUBJECT2;

DROP TYPE SUBJECT_T2;

DROP TABLE STUDENT2;

DROP TYPE STUDENT_T;

DROP TABLE SUPERVISOR;

DROP TYPE SUPERVISOR_T;

--SUPERVISOR
CREATE OR REPLACE TYPE SUPERVISOR_T AS
    OBJECT(
        SPV_ID NUMBER,
        SPV_NAME VARCHAR(20),
        STATIC PROCEDURE INSERT_SPV(SID NUMBER, NAME VARCHAR),
        STATIC PROCEDURE DELETE_SPV(SID NUMBER)
    );
/

CREATE TABLE SUPERVISOR OF SUPERVISOR_T;

CREATE OR REPLACE TYPE BODY SUPERVISOR_T AS
    STATIC PROCEDURE INSERT_SPV(
        SID NUMBER,
        NAME VARCHAR
    ) IS
    BEGIN
        INSERT INTO SUPERVISOR VALUES (
            SID,
            NAME
        );
    END INSERT_SPV;
    STATIC PROCEDURE DELETE_SPV(
        SID NUMBER
    ) IS
    BEGIN
        DELETE FROM SUPERVISOR
        WHERE
            SPV_ID = SID;
    END DELETE_SPV;
END;
/

--STUDENT
CREATE OR REPLACE TYPE STUDENT_T AS
    OBJECT(
        STUDENT_ID NUMBER,
        STUDENT_NAME VARCHAR(20),
        SPV_REF REF SUPERVISOR_T,
        STATIC PROCEDURE INSERT_STUDENT(SID NUMBER, SNAME VARCHAR, SPD NUMBER),
        STATIC PROCEDURE DELETE_STUDENT(SID NUMBER)
    );
/

CREATE TABLE STUDENT2 OF STUDENT_T;

CREATE OR REPLACE TYPE BODY STUDENT_T AS
    STATIC PROCEDURE INSERT_STUDENT(
        SID NUMBER,
        SNAME VARCHAR,
        SPD NUMBER
    ) IS
    BEGIN
        INSERT INTO STUDENT2
            SELECT
                SID,
                SNAME,
                REF(S)
            FROM
                SUPERVISOR S
            WHERE
                S.SPV_ID = SPD;
    END INSERT_STUDENT;
    STATIC PROCEDURE DELETE_STUDENT(
        SID NUMBER
    ) IS
    BEGIN
        DELETE FROM STUDENT2
        WHERE
            STUDENT_ID = SID;
    END DELETE_STUDENT;
END;
/

--SUBJECT
CREATE OR REPLACE TYPE SUBJECT_T2 AS
    OBJECT(
        SUBJECT_ID NUMBER,
        SUBJECT_NAME VARCHAR(20),
        STATIC PROCEDURE INSERT_SUBJECT(SID NUMBER, SNAME VARCHAR),
        STATIC PROCEDURE DELETE_SUBJECT(SID NUMBER)
    );
/

CREATE TABLE SUBJECT2 OF SUBJECT_T2;

CREATE OR REPLACE TYPE BODY SUBJECT_T2 AS
    STATIC PROCEDURE INSERT_SUBJECT(
        SID NUMBER,
        SNAME VARCHAR
    ) IS
    BEGIN
        INSERT INTO SUBJECT2 VALUES(
            SID,
            SNAME
        );
    END INSERT_SUBJECT;
    STATIC PROCEDURE DELETE_SUBJECT(
        SID NUMBER
    ) IS
    BEGIN
        DELETE FROM SUBJECT2
        WHERE
            SUBJECT_ID = SID;
    END DELETE_SUBJECT;
END;
/

--STUD_SUB
CREATE OR REPLACE TYPE STUD_SUB_T AS
    OBJECT(
        ID NUMBER,
        STUD_REF REF STUDENT_T,
        SUB_REF REF SUBJECT_T2,
        MARKS NUMBER,
        STATIC PROCEDURE INSERT_STUD_SUB(SID NUMBER, STR NUMBER, SBR NUMBER, MARKS NUMBER),
        STATIC PROCEDURE DELETE_STUD_SUB(ID NUMBER)
    );
/

CREATE TABLE STUD_SUB OF STUD_SUB_T (
    ID PRIMARY KEY
);

CREATE OR REPLACE TYPE BODY STUD_SUB_T AS
    STATIC PROCEDURE INSERT_STUD_SUB(
        SID NUMBER,
        STR NUMBER,
        SBR NUMBER,
        MARKS NUMBER
    ) IS
    BEGIN
        INSERT INTO STUD_SUB
            SELECT
                SID,
                REF(STD),
                REF(SBD),
                MARKS
            FROM
                STUDENT2 STD,
                SUBJECT2 SBD
            WHERE
                STD.STUDENT_ID = STR
                AND SBD.SUBJECT_ID = SBR;
    END INSERT_STUD_SUB;
    STATIC PROCEDURE DELETE_STUD_SUB(
        ID NUMBER
    ) IS
    BEGIN
        DELETE FROM STUD_SUB
        WHERE
            ID = ID;
    END DELETE_STUD_SUB;
END;
/

--INSERTING VALUES
SET FEEDBACK OFF;

--SUPERVISOR
DELETE FROM SUPERVISOR;

EXEC SUPERVISOR_T.INSERT_SPV(1, 'SHANTANU N');

EXEC SUPERVISOR_T.INSERT_SPV(2, 'NAGRAJAN T');

EXEC SUPERVISOR_T.INSERT_SPV(3, 'SHARAD K');

EXEC SUPERVISOR_T.INSERT_SPV(4, 'BIJU L');

EXEC SUPERVISOR_T.INSERT_SPV(5, 'SAMRAT T');

BEGIN
    DBMS_OUTPUT.PUT_LINE(CHR(10)
        ||'SUPERVISOR');
END;
/

SELECT
    *
FROM
    SUPERVISOR;

--STUDENT
DELETE FROM STUDENT2;

EXEC STUDENT_T.INSERT_STUDENT(1, 'BHOOSHAN B', 1);

EXEC STUDENT_T.INSERT_STUDENT(2, 'KARTIK I', 1);

EXEC STUDENT_T.INSERT_STUDENT(3, 'ABHISHEK K', 3);

EXEC STUDENT_T.INSERT_STUDENT(4, 'PARTH K', 2);

EXEC STUDENT_T.INSERT_STUDENT(5, 'AMIT E', 5);

BEGIN
    DBMS_OUTPUT.PUT_LINE(CHR(10)
        ||'STUDENT2');
END;
/

SELECT
    *
FROM
    STUDENT2;

--SUBJECT
DELETE FROM SUBJECT2;

EXEC SUBJECT_T2.INSERT_SUBJECT(1, 'DSA');

EXEC SUBJECT_T2.INSERT_SUBJECT(2, 'DBMS');

EXEC SUBJECT_T2.INSERT_SUBJECT(3, 'OOSE');

EXEC SUBJECT_T2.INSERT_SUBJECT(4, 'STS');

EXEC SUBJECT_T2.INSERT_SUBJECT(5, 'ASM');

BEGIN
    DBMS_OUTPUT.PUT_LINE(CHR(10)
        ||'SUBJECT2');
END;
/

SELECT
    *
FROM
    SUBJECT2;

--STUD_SUB
DELETE FROM STUD_SUB;

EXEC STUD_SUB_T.INSERT_STUD_SUB(1, 3, 4, 49);

EXEC STUD_SUB_T.INSERT_STUD_SUB(2, 2, 5, 38);

EXEC STUD_SUB_T.INSERT_STUD_SUB(3, 4, 2, 48);

EXEC STUD_SUB_T.INSERT_STUD_SUB(4, 3, 5, 40);

EXEC STUD_SUB_T.INSERT_STUD_SUB(5, 4, 3, 29);

BEGIN
    DBMS_OUTPUT.PUT_LINE(CHR(10)
        ||'STUD_SUB');
END;
/

SELECT
    *
FROM
    STUD_SUB;

--DELETING STUD_SUB TO EXECUTE DELETE OPERATIONS IN
--DEPENDENT TABLES
DROP TABLE STUD_SUB;

--DELETING SUBJECT
BEGIN
    DBMS_OUTPUT.PUT_LINE(CHR(9));
    DBMS_OUTPUT.PUT_LINE(CHR(9));
    DBMS_OUTPUT.PUT_LINE('=============================');
    DBMS_OUTPUT.PUT_LINE('DELETING... ID - 2 AND ID - 3');
    DBMS_OUTPUT.PUT_LINE('=============================');
END;
/

EXEC SUBJECT_T2.DELETE_SUBJECT(2);

EXEC SUBJECT_T2.DELETE_SUBJECT(3);

BEGIN
    DBMS_OUTPUT.PUT_LINE(CHR(10)
        ||'SUBJECT2');
END;
/

SELECT
    *
FROM
    SUBJECT2;

--DELETING STUDENT
BEGIN
    DBMS_OUTPUT.PUT_LINE(CHR(9));
    DBMS_OUTPUT.PUT_LINE(CHR(9));
    DBMS_OUTPUT.PUT_LINE('=============================');
    DBMS_OUTPUT.PUT_LINE('DELETING... ID - 4 AND ID - 5');
    DBMS_OUTPUT.PUT_LINE('=============================');
END;
/

EXEC STUDENT_T.DELETE_STUDENT(4);

EXEC STUDENT_T.DELETE_STUDENT(5);

BEGIN
    DBMS_OUTPUT.PUT_LINE(CHR(10)
        ||'STUDENT2');
END;
/

SELECT
    *
FROM
    STUDENT2;

--DELETING SUPERVISOR
BEGIN
    DBMS_OUTPUT.PUT_LINE(CHR(9));
    DBMS_OUTPUT.PUT_LINE(CHR(9));
    DBMS_OUTPUT.PUT_LINE('=============================');
    DBMS_OUTPUT.PUT_LINE('DELETING... ID - 1 AND ID - 5');
    DBMS_OUTPUT.PUT_LINE('=============================');
END;
/

EXEC SUPERVISOR_T.DELETE_SPV(2);

EXEC SUPERVISOR_T.DELETE_SPV(3);

BEGIN
    DBMS_OUTPUT.PUT_LINE(CHR(10)
        ||'SUPERVISOR');
END;
/

SELECT
    *
FROM
    SUPERVISOR;

SET FEEDBACK ON