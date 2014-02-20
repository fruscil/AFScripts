--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_GAINLOSSSTATUSUPDATETRX" 
AS
   /******************************************************************************
   NAME:       ARCH_GAINLOSSSTATUSUPDATETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        1/10/2007  GMR            1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     ARCH_GAINLOSSSTATUSUPDATETRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       GAINLOSSSTATUSUPDATETRX)

******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.GAINLOSSSTATUSUPDATETRX
  SELECT 
GAINLOSSSTATUSUPDATETRXID, CURRENTENTERPRISELOCATIONCODE, UNITID, 
   EQUIPMENTID, MAINTENANCESTATUSCODE, CONDITIONSTATUSCODE, 
   OCCURANCEDATE, OCCURANCETIME, GAINLOSSACTIONCODE, 
   INSTALLATIONCODE, MAJORCOMMANDABBREVIATION, GAINLOSSTRANSFEROPTION, 
   TRANSFERTYPE, EVENTID, WORKCENTEREVENT, 
   WORKUNITCODE, REQUESTAPPROVEDCONFIGURATION, REQUESTACTUALCONFIGURATION, 
   HOSTUNITDATEANDTIME, TRANSACTIONORDINALDATE, RECORDDATETIME, 
   APPLICATIONNOTE, DATEPROCESSED, HOMEENTERPRISELOCATIONCODE,  SYSDATE AS archivedate
FROM EMOC3.GAINLOSSSTATUSUPDATETRX
WHERE recorddatetime < SYSDATE - 7;

DELETE FROM EMOC3.GAINLOSSSTATUSUPDATETRX
WHERE recorddatetime < SYSDATE - 7;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_GAINLOSSSTATUSUPDATETRX;
 
 
 
 
 
 
 
 
@
