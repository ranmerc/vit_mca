-- Write a Pl/SQL program to print integers from 1 to 10 by
-- using PL/SQL FOR loop
BEGIN
    FOR I IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(I);
    END LOOP;
END;