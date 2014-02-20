--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPDATE_SCHED_STATUS" (
SCHEDULEIDIN	  SCHEDULE.SCHEDULEID%TYPE,
STATUSCODEIDIN	  SCHEDULESTATUS.STATUSCODEID%TYPE,
STATUSTYPEIN  	  SCHEDULESTATUS.STATUSTYPE%TYPE,
STATUSTIMEIN	  	  SCHEDULESTATUS.STATUSTIME%TYPE

)
/******************************************************************************
   NAME:       UPDATE_SCHED_STATUS
   PURPOSE:    Updates status record for a previously entered plane

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        7/31/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *SCHEDULEID
   *STATUSCODEID
   *STATUSTYPE
   *STATUSTIME
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
IF STATUSTYPEIN = '0' THEN
	UPDATE SCHEDULESTATUS
	SET STATUSTIME = STATUSTIMEIN
	WHERE SCHEDULEID = SCHEDULEIDIN
	AND STATUSCODEID = STATUSCODEIDIN
	AND STATUSTYPE = STATUSTYPEIN;
ELSE --IF STATYSTYPEIN = '1' THEN
	UPDATE SCHEDULESTATUS
	SET STATUSTIME = STATUSTIMEIN
	WHERE SCHEDULEID = SCHEDULEIDIN
	AND FUELSTATUSID = STATUSCODEIDIN
	AND STATUSTYPE = STATUSTYPEIN;
END IF;
END UPDATE_SCHED_STATUS;
 
 
 
 
 
 
 
 
@
