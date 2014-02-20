--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_CAUSECODETRX" 
AS
   /******************************************************************************
   NAME:       ARCH_CAUSECODETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        2/16/2007  GMR            1. Created this procedure.

   NOTES:



******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.CAUSECODETRX
 SELECT 
CAUSECODETRXID, HOMEENTERPRISELOCATIONCODE, CURRENTENTERPRISELOCATIONCODE, 
   UNITID, CAUSECODE, CAUSECODENARRATIVE, 
   CAUSECODETYPEINDICATOR, HOSTUNITDATEANDTIME, TRANSACTIONORDINALDATE, 
   RECORDDATETIME, APPLICATIONNOTE, DATEPROCESSED, 
   DEFERCODETYPEINDICATOR, TRANSACTIONTYPE, SYSDATE AS ARCHIVEDATE
FROM EMOC3.CAUSECODETRX
WHERE DATEPROCESSED < SYSDATE - 7;

DELETE FROM EMOC3.CAUSECODETRX
WHERE DATEPROCESSED < SYSDATE - 7;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_CAUSECODETRX;
 
 
 
 
 
 
 
 
@
