CREATE OR REPLACE PROCEDURE FIBONACCI(TERMS NUMBER) AS
    A NUMBER;
    B NUMBER;
    TEMP NUMBER;
    CURR NUMBER;
BEGIN
    A := 0;
    B := 1;
    DBMS_OUTPUT.PUT_LINE(A);
    DBMS_OUTPUT.PUT_LINE(B);
    FOR I IN 3..TERMS LOOP
        CURR := A + B;
        DBMS_OUTPUT.PUT_LINE(CURR);
        A := B;
        B := CURR;
    END LOOP;
END;
/

EXEC FIBONACCI(&TERMS);

CREATE OR REPLACE PROCEDURE FACTORIAL(NUM NUMBER) AS
    FACT NUMBER; 
BEGIN
    FACT := 1;
    FOR I IN 2..NUM LOOP
        FACT *= I;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(FACT);
END;
/