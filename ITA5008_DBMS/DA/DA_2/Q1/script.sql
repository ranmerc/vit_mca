-- Write  a  procedure  to  add  a  new  customer  to  the  CUSTOMER  table.
-- Use  the  following  values  in  the
-- new record: <1002, 'Rauthor', 'Peter', 0.00>.
-- Run a query to see if the record has been added.

DELETE FROM CUSTOMER
WHERE
    CUS_CODE = 1002;

CREATE OR REPLACE PROCEDURE INSERTCUSTOMER (
    CUS_CODE IN CUSTOMER.CUS_CODE%TYPE,
    CUS_FNAME IN CUSTOMER.CUS_FNAME%TYPE,
    CUS_LNAME IN CUSTOMER.CUS_LNAME%TYPE,
    CUS_BALANCE IN CUSTOMER.CUS_BALANCE%TYPE
) IS
BEGIN
    INSERT INTO CUSTOMER VALUES (
        CUS_CODE,
        CUS_FNAME,
        CUS_LNAME,
        CUS_BALANCE
    );
END;
/

EXECUTE INSERTCUSTOMER(1002, 'RAUTHOR', 'PETER', 0.0);

SELECT
    *
FROM
    CUSTOMER;