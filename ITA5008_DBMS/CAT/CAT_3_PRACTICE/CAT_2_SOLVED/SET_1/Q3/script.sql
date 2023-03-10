CREATE OR REPLACE PROCEDURE FACTORIAL(
    NUM NUMBER
) AS
    FACT NUMBER;
BEGIN
    FACT := 1;
    FOR I IN 2..NUM LOOP
        FACT := FACT * I;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('FACTORIAL OF '
        || NUM
        || ' IS '
        || FACT);
END;
/

EXEC FACTORIAL(&NUMBER);