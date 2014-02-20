--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_EQUIPMENTLOCUPDTRX" 
AS
   /******************************************************************************
   NAME:       ARCH_EQUIPMENTLOCATIONUPDATETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        1/10/2007  GMR            1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     ARCH_EQUIPMENTLOCATIONUPDATETRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       EQUIPMENTLOCATIONUPDATETRX)

******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.EQUIPMENTLOCATIONUPDATETRX
  SELECT 
   EQUIPMENTLOCATIONUPDATETRXID, HOMEENTERPRISELOCATIONCODE, CURRENTENTERPRISELOCATIONCODE, 
   UNITID, EQUIPMENTID, LOCATIONCODE, 
   HOSTUNITDATEANDTIME, TRANSACTIONORDINALDATE, RECORDDATETIME, 
   APPLICATIONNOTE, DATEPROCESSED,  SYSDATE AS archivedate
FROM EMOC3.EQUIPMENTLOCATIONUPDATETRX
WHERE recorddatetime < SYSDATE - 7;

DELETE FROM EMOC3.EQUIPMENTLOCATIONUPDATETRX
WHERE recorddatetime < SYSDATE - 7;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_EQUIPMENTLOCUPDTRX;
 
 
 
 
 
 
 
 
@
