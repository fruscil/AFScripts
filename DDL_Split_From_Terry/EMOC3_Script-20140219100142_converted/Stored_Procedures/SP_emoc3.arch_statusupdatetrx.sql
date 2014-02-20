--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_STATUSUPDATETRX" 
AS
   /******************************************************************************
   NAME:       ARCH_STATUSUPDATETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        1/10/2007  GMR            1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     ARCH_STATUSUPDATETRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       STATUSUPDATETRX)

******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.STATUSUPDATETRX 
SELECT 
STATUSUPDATETRXID, CURRENTENTERPRISELOCATIONCODE, UNITID, 
   EQUIPMENTID, MAINTENANCESTATUSCODE, CONDITIONSTATUSCODE, 
   STARTDATE, STARTTIME, WORKUNITCODE, 
   EVENTID, WORKCENTEREVENT, ESTIMATEDTIMEINCOMMISSION, 
   PARTSPLUS, GEOLOCCODE, STATUSNARRATIVE, 
   LOCATIONCODE, EQUIPMENTORGANIZATIONFLIGHTID, MAINTENANCEREPAIRPRIORITY, 
   ARMED, MULTIPLECONFIGURATIONID, LOCALOPTION, 
   RECEIVEMAINTENANCELIMITREPORT, HOSTUNITDATEANDTIME, TRANSACTIONORDINALDATE, 
   RECORDDATETIME, APPLICATIONNOTE, DATEPROCESSED, 
   HOMEENTERPRISELOCATIONCODE, UTCSTARTDATEANDTIME,  SYSDATE AS archivedate
FROM EMOC3.STATUSUPDATETRX
WHERE recorddatetime < SYSDATE - 7;

DELETE FROM EMOC3.STATUSUPDATETRX
WHERE recorddatetime < SYSDATE - 7;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_STATUSUPDATETRX;
 
 
 
 
 
 
 
 
@
