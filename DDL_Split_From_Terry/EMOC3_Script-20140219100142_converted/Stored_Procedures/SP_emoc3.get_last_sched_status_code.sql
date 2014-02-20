--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_LAST_SCHED_STATUS_CODE" (
STATUSCODEID OUT  SCHEDULESTATUS.STATUSCODEID%TYPE,
SCHEDULEIDIN 	  SCHEDULE.SCHEDULEID%TYPE,
STATUSTYPEIN	  SCHEDULESTATUS.STATUSTYPE%TYPE
)
/******************************************************************************
   NAME:       GET_LAST_SCHED_STATUS_CODE
   PURPOSE:    Returns Schedule statuses complete for the specified ID

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        7/1/03      A.Mitchell       1. Created this procedure.
   1.1		  1/19/04	   A.Mitchell	   2. Changed sort to DESC

   PARAMETERS:
   INPUT:
   *SCHEDULEIDIN
   *STATUSTYPEIN
   OUTPUT:
   *STATUSCODEID
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

STATUSCODEOUT NUMBER;

BEGIN
	 SELECT STATUSCODEID
	 	INTO STATUSCODEOUT
	 	FROM (
	 	SELECT SC.STATUSCODEID
		FROM SCHEDULESTATUS SS JOIN STATUSCODE SC ON SS.STATUSCODEID = SC.STATUSCODEID
		WHERE SS.SCHEDULEID = SCHEDULEIDIN AND STATUSTYPE = STATUSTYPEIN
		ORDER BY SS.STATUSTIME DESC, SC.ORDERNUMBER DESC)
		WHERE ROWNUM=1;

	STATUSCODEID := STATUSCODEOUT;

	   EXCEPTION
	     WHEN NO_DATA_FOUND THEN
	       Null;
	     WHEN OTHERS THEN
	       Null;
END GET_LAST_SCHED_STATUS_CODE;
 
 
 
 
 
 
 
 
@
