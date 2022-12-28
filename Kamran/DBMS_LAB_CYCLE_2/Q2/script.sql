-- Write a procedure to add a new invoice record to the INVOICE table.
-- Use the following values in the
-- new record: <8006, 1000, '30-APR-16', 301.72>.
-- Run a query to see if the record has been added.

DELETE FROM INVOICE
WHERE
    INV_NO = 8006;

DELETE FROM CUSTOMER
WHERE
    CUS_CODE = 1000;

INSERT INTO CUSTOMER VALUES(
    1000,
    'C1',
    'L1',
    5000
);

CREATE OR REPLACE PROCEDURE INSERTINVOICE (
    INV_NO IN INVOICE.INV_NO%TYPE,
    CUS_CODE IN INVOICE.CUS_CODE%TYPE,
    INV_DATE IN INVOICE.INV_DATE%TYPE,
    INV_AMOUNT IN INVOICE.INV_AMOUNT%TYPE
) IS
BEGIN
    INSERT INTO INVOICE VALUES(
        INV_NO,
        CUS_CODE,
        INV_DATE,
        INV_AMOUNT
    );
END;
/

EXECUTE INSERTINVOICE(8006, 1000, '30-APR-2016', 301.72);

SELECT
    *
FROM
    INVOICE;