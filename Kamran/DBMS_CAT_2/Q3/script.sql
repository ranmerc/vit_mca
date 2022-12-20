CREATE OR REPLACE PROCEDURE FIBONACCI (
    NUM_OF_TERMS NUMBER
) AS
    COUNTER NUMBER;
    A       NUMBER;
    B       NUMBER;
    TEMP    NUMBER;
BEGIN
    A := 0;
    B := 1;
    DBMS_OUTPUT.PUT_LINE('Fibonacci Sequence of '
        || NUM_OF_TERMS
        || ' terms is');
    DBMS_OUTPUT.PUT_LINE(A);
    DBMS_OUTPUT.PUT_LINE(B);
    COUNTER := 2;
    LOOP
        TEMP := B;
        B := A + B;
        A := TEMP;
        DBMS_OUTPUT.PUT_LINE(B);
        COUNTER := COUNTER + 1;
        EXIT WHEN COUNTER >= NUM_OF_TERMS;
    END LOOP;
END;
/

EXECUTE FIBONACCI(&NUMBER_OF_TERMS);