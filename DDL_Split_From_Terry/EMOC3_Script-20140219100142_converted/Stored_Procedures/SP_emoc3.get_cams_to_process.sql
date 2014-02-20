--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_CAMS_TO_PROCESS" /******************************************************************************
   NAME:       GET_CAMS_TO_PROCESS
   PURPOSE:    This proc checks for transactions that have not been parsed yet
               and returns as a string those INTERFACELOGIDs that have not
   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        9/15/03      A.Mitchell       1. Created this procedure.
   1.1        10/23/03     A.Mitchell       2. Added SQUADRONIDIN to delineate in log
   PARAMETERS:
   INPUT:
   *TRANSACTIONTYPEIN
   OUTPUT:
   *TRANSACTIONIDSOUT
   RETURNED VALUE:
   CALLED BY:
   CALLS:
   EXAMPLE USE:
   ASSUMPTIONS:
   LIMITATIONS:
   ALGORITHM:
   NOTES:

******************************************************************************/
(
TRANSACTIONTYPEIN  VARCHAR,
SQUADRONIDIN INTERFACELOG.SQUADRONID%TYPE,
TRANSACTIONIDSOUT OUT VARCHAR
)
AS
TRANSACTIONIDS CLOB;
CUR_TRANSACTIONS EMOC_TYPES.EMOC_CURSOR;
TYPE TRANSACTION_REC_TYPE IS RECORD (
  INTERFACELOGID  NUMBER(10));
REC_TID TRANSACTION_REC_TYPE;
BEGIN

-- RETURN THE TRANSACTIONS NOT PARSED
OPEN CUR_TRANSACTIONS
FOR SELECT INTERFACELOGID FROM INTERFACELOG
   WHERE PARSED != 1 AND TRANSACTIONTYPE = TRANSACTIONTYPEIN
   AND SQUADRONID = SQUADRONIDIN;

FETCH CUR_TRANSACTIONS INTO REC_TID;

WHILE CUR_TRANSACTIONS%FOUND LOOP
        IF LENGTH(TRANSACTIONIDS) > 0 THEN
          BEGIN
            TRANSACTIONIDS := TRANSACTIONIDS || ',' || TO_CHAR(REC_TID.INTERFACELOGID);
          END;
        ELSE
          BEGIN
            TRANSACTIONIDS := TO_CHAR(REC_TID.INTERFACELOGID);
          END;
        END IF;
   FETCH CUR_TRANSACTIONS INTO REC_TID;
END LOOP;
CLOSE CUR_TRANSACTIONS;
TRANSACTIONIDSOUT := TRANSACTIONIDS;
END GET_CAMS_TO_PROCESS;
 
 
 
 
 
 
 
 
@
