--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_DEVIATIONSTARTSTOPTRX" 
AS
   tmpvar   NUMBER;
   /******************************************************************************
   NAME:       ARCH_DEVIATIONSTARTSTOPTRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     ARCH_DEVIATIONSTARTSTOPTRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       deviationstartstoptrx)

******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.DEVIATIONSTARTSTOPTRX
      SELECT DEVIATIONSTARTSTOPTRXID, HOMEENTERPRISELOCATIONCODE,
    CURRENTENTERPRISELOCATIONCODE, UNITID, SORTIEDATE,
    EQUIPMENTID, SORTIENUMBER, SORTIEMODIFIER, MAINTENANCEEVENTID,
       SCHEDULINGBLOCKNUMBER, DEVIATIONCODE, DEVIATIONCAUSECODE, CHARGEABLEINDICATOR,
       STARTDATE, STARTTIME, STOPDATE, STOPTIME, DEVIATIONREMARKS,
    DATEPROCESSED,  SYSDATE AS archivedate
  FROM EMOC3.DEVIATIONSTARTSTOPTRX
WHERE DATEPROCESSED < SYSDATE - 7;

DELETE FROM EMOC3.DEVIATIONSTARTSTOPTRX
WHERE DATEPROCESSED < SYSDATE - 7;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_DEVIATIONSTARTSTOPTRX;
 
 
 
 
 
 
 
 
@
