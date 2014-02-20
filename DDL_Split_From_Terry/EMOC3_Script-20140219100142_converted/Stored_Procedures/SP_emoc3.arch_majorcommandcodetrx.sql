--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_MAJORCOMMANDCODETRX" 
AS
   /******************************************************************************
   NAME:       ARCH_MAJORCOMMANDCODETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        1/10/2007  GMR            1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     ARCH_MAJORCOMMANDCODETRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       MAJORCOMMANDCODETRX)

******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.MAJORCOMMANDCODETRX
SELECT 
MAJORCOMMANDCODETRXID, FROMENTERPRISELOCATIONCODE, FROMUNITID, 
   MAJORCOMMANDCODE, MAJORCOMMANDCODENARRATIVE, RECORDDATETIME, 
   TRANSACTIONCODE,  SYSDATE AS archivedate
FROM EMOC3.MAJORCOMMANDCODETRX
WHERE DATEPROCESSED < SYSDATE - 7;

DELETE FROM EMOC3.MAJORCOMMANDCODETRX
WHERE DATEPROCESSED < SYSDATE - 7;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_MAJORCOMMANDCODETRX;
 
 
 
 
 
 
 
 
@
