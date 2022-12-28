-- Write a PL/SQL function to compute purchase made by a given customer
-- for a particular invoice. Test the function in another function
-- to compute the total purchase made by a customer.
CREATE OR REPLACE FUNCTION GETINVAMOUNT (
    C_CODE IN INVOICE.CUS_CODE%TYPE,
    I_NO IN INVOICE.INV_NO%TYPE
) RETURN DOUBLE PRECISION IS
    AMOUNT DOUBLE PRECISION;
BEGIN
    SELECT
        INV_AMOUNT INTO AMOUNT
    FROM
        INVOICE
    WHERE
        INVOICE.CUS_CODE = C_CODE
        AND INVOICE.INV_NO = I_NO;
    RETURN AMOUNT;
END;
/

CREATE OR REPLACE PROCEDURE TOTALAMOUNT(
    C_CODE IN INVOICE.CUS_CODE%TYPE
) IS
    CURSOR INVOICES IS
        SELECT
            *
        FROM
            INVOICE
        WHERE
            CUS_CODE = C_CODE;
    S DOUBLE PRECISION;
BEGIN
    S := 0;
    FOR INV IN INVOICES LOOP
        S := S + (GETINVAMOUNT(INV.CUS_CODE, INV.INV_NO));
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(S);
END;
/

EXECUTE TOTALAMOUNT(1);