CREATE OR REPLACE PROCEDURE ISPRIME (
    NUM NUMBER
) AS
    I NUMBER;
BEGIN
    I := 2;
    LOOP
        EXIT WHEN I >= NUM;
        IF REMAINDER(NUM, I) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(NUM
                || ' IS NOT PRIME');
            RETURN;
        END IF;
        I := I + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(NUM
        || ' IS PRIME');
END;
/

EXECUTE ISPRIME(&NUMBER);