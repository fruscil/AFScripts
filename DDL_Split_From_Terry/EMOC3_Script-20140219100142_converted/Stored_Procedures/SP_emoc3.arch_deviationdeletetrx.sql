--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_DEVIATIONDELETETRX" 
AS
   /******************************************************************************
   NAME:       ARCH_DEVIATIONDELETETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     ARCH_DEVIATIONDELETETRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       deviationdeletetrx)

******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.DEVIATIONDELETETRX
      SELECT DEVIATIONDELETETRXID, HOMEENTERPRISELOCATIONCODE,
    CURRENTENTERPRISELOCATIONCODE, UNITID, SORTIEDATE, SCHEDULINGBLOCKNUMBER,
    EQUIPMENTID, SORTIENUMBER, SORTIEMODIFIER, MAINTENANCEEVENTID,
       DEVIATIONCODE, DEVIATIONCAUSECODE, CHARGEABLEINDICATOR, DATEPROCESSED,
   SYSDATE AS archivedate
   FROM EMOC3.DEVIATIONDELETETRX
WHERE DATEPROCESSED < SYSDATE - 7;

DELETE FROM EMOC3.DEVIATIONDELETETRX
WHERE DATEPROCESSED < SYSDATE - 7;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_DEVIATIONDELETETRX;
 
 
 
 
 
 
 
 
@
