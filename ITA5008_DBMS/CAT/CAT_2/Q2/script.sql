-- Convert STUDENT FirstName into uppercase whenever an STUDENT record is
-- inserted or updated. Trigger to fire before the insert or update.

CREATE OR REPLACE TRIGGER CONVERT_FIRST_NAME_TO_UPPERCASE BEFORE
    INSERT OR UPDATE ON STUDENT FOR EACH ROW
DECLARE
    ROWCOUNT INT;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Trigger Fired!');
    DBMS_OUTPUT.PUT_LINE('Converting '
        || :NEW.FIRSTNAME
        || ' to '
        || UPPER( :NEW.FIRSTNAME ));
    :NEW.FIRSTNAME := UPPER( :NEW.FIRSTNAME );
END;
/

DELETE FROM STUDENT
WHERE
    STUDENTID = 22006;

INSERT INTO STUDENT VALUES(
    '22006',
    'lower',
    'lastname',
    25,
    'BCA',
    'lower@gmail.com'
);

SELECT
    *
FROM
    STUDENT;

-- To write a Cursor to display the list of STUDENTS who are enrolled in CSE and
-- MCA branch
SELECT
    *
FROM
    STUDENT;

DECLARE
    CURSOR MCA_CSE_BRANCH_STUDENT IS
        SELECT
            *
        FROM
            STUDENT
        WHERE
            BRANCH IN ('MCA',
            'CSE');
    I NUMBER;
BEGIN
    I := 1;
    FOR STUDENT IN MCA_CSE_BRANCH_STUDENT LOOP
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('Student '
            || I
            || '-');
        DBMS_OUTPUT.PUT_LINE('ID: '
            || STUDENT.STUDENTID);
        DBMS_OUTPUT.PUT_LINE('First Name: '
            || STUDENT.FIRSTNAME);
        DBMS_OUTPUT.PUT_LINE('Last Name: '
            || STUDENT.LASTNAME);
        DBMS_OUTPUT.PUT_LINE('Age: '
            || STUDENT.AGE);
        DBMS_OUTPUT.PUT_LINE('Branch: '
            || STUDENT.BRANCH);
        DBMS_OUTPUT.PUT_LINE('Email Id: '
            || STUDENT.EMAILID);
        I := I + 1;
    END LOOP;
END;
/