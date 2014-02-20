--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_UVRCHANGETRX" 
AS
   /******************************************************************************
   NAME:       ARCH_UVRCHANGETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        1/10/2007  GMR            1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     ARCH_UVRCHANGETRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       UVRCHANGETRX)

******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.UVRCHANGETRX 
SELECT 
UVRCHANGETRXID, HOMEENTERPRISELOCATIONCODE, CURRENTENTERPRISELOCATIONCODE, 
   UNITID, TIMEZONEFACTOR, TIMEZONEHOURS, 
   GMTFACTOR, GMTHOURS, HOSTTIMEZONEFACTOR, 
   HOSTTIMEZONEHOURS, HOSTUNITDATEANDTIME, TRANSACTIONORDINALDATE, 
   RECORDDATETIME, APPLICATIONNOTE, DATEPROCESSED, 
   REMOTEPRINTINDICATOR,  SYSDATE AS archivedate
FROM EMOC3.UVRCHANGETRX
WHERE DATEPROCESSED < SYSDATE - 7;

DELETE FROM EMOC3.UVRCHANGETRX
WHERE DATEPROCESSED < SYSDATE - 7;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_UVRCHANGETRX;
 
 
 
 
 
 
 
 
@
