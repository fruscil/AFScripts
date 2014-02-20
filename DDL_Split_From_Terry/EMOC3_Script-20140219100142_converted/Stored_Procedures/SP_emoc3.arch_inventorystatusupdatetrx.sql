--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_INVENTORYSTATUSUPDATETRX" 
AS
   /******************************************************************************
   NAME:       ARCH_INVENTORYSTATUSUPDATETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        1/10/2007  GMR            1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     ARCH_INVENTORYSTATUSUPDATETRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       INVENTORYSTATUSUPDATETRX)

******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.INVENTORYSTATUSUPDATETRX
SELECT 
   INVENTORYSTATUSUPDATETRXID, TRANSACTIONORDINALDATE, CURRENTENTERPRISELOCATIONCODE, 
   UNITID, EQUIPMENTID, GAINLOSSACTIONCODE, 
   CHANGEDATE, CHANGETIME, POSSESSIONID, 
   ASSIGNMENTSTATUSCODE, ASSIGNMENTCOMMANDABBR, AIRCRAFTCONFIGID, 
   TRAINERREPORTINGDESIGNATOR, MISSIONDESIGNSERIES, MAJORCOMMANDABBR, 
   HOSTUNITDATEANDTIME, RECORDDATETIME, APPLICATIONNOTE, 
   DATEPROCESSED, HOMEENTERPRISELOCATIONCODE,  SYSDATE AS archivedate
FROM EMOC3.INVENTORYSTATUSUPDATETRX
WHERE recorddatetime < SYSDATE - 7;

DELETE FROM EMOC3.INVENTORYSTATUSUPDATETRX
WHERE recorddatetime < SYSDATE - 7;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_INVENTORYSTATUSUPDATETRX;
 
 
 
 
 
 
 
 
@
