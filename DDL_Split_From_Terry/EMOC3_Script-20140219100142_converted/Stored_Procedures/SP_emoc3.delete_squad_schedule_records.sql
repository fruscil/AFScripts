--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_SQUAD_SCHEDULE_RECORDS" (
SQUADRONIDIN	  SCHEDULE.SQUADRONID%TYPE
)
/******************************************************************************
   NAME:       DELETE_SQUAD_SCHEDULE_RECORDS
   PURPOSE:    DELETES all records for a squadron (Used when deleting a squadron)

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/12/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *SQUADRONID
   OUTPUT:
   RETURNED VALUE:
   CALLED BY:
   CALLS:
   EXAMPLE USE:
   ASSUMPTIONS:
   LIMITATIONS:
   ALGORITHM:
   NOTES:

******************************************************************************/

AS

BEGIN

	 DELETE JOAPDATA
     WHERE SCHEDULEID IN (
     SELECT SCHEDULEID
     FROM SCHEDULE
     WHERE SQUADRONID = SQUADRONIDIN);

	 DELETE SEMEDXDATA
     WHERE SCHEDULEID IN (
     SELECT SCHEDULEID
     FROM SCHEDULE
     WHERE SQUADRONID = SQUADRONIDIN);

	 DELETE SCHEDULESTATUS
     WHERE SCHEDULEID IN (
     SELECT SCHEDULEID
     FROM SCHEDULE
     WHERE SQUADRONID = SQUADRONIDIN);

     DELETE SCHEDULEDEVIATIONS
	 WHERE SCHEDULEID IN (
     SELECT SCHEDULEID
     FROM SCHEDULE
     WHERE SQUADRONID = SQUADRONIDIN);

	 DELETE REMARKS
	 WHERE REMARKSID IN (
     SELECT MAINTREMARKS
     FROM SCHEDULE
     WHERE SQUADRONID = SQUADRONIDIN);

	 DELETE REMARKS
	 WHERE REMARKSID IN (
     SELECT SCHEDULEREMARKS
     FROM SCHEDULE
     WHERE SQUADRONID = SQUADRONIDIN);

     DELETE SCHEDULE
	 WHERE SQUADRONID = SQUADRONIDIN;

	 COMMIT;

END Delete_Squad_Schedule_Records;
 
 
 
 
 
 
 
 
@
