--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SCHED_STATUS_COMPLETE" (
P_CURSOR OUT 	  EMOC_TYPES.EMOC_CURSOR,
SCHEDULEIDIN 	  SCHEDULE.SCHEDULEID%TYPE,
STATUSTYPEIN	  SCHEDULESTATUS.STATUSTYPE%TYPE
)
/******************************************************************************
   NAME:       GET_SCHED_STATUS_COMPLETE
   PURPOSE:    Returns Schedule statuses complete for the specified ID

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        6/25/03      A.Mitchell       1. Created this procedure.
   1.1		  1/19/04	   A.Mitchell		2. Changed sort to DESC
   PARAMETERS:
   INPUT:
   *SCHEDULEIDIN
   *STATUSTYPE
   OUTPUT:
   *P_CURSOR
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
	 	OPEN P_CURSOR FOR
	 	SELECT
	 		SS.STATUSCODEID STATUSCODEID,
			SCHEDULEID,
			STATUSTIME,
			STATUSCODE,
			STATUSCODELABEL
		FROM SCHEDULESTATUS SS
			RIGHT OUTER JOIN STATUSCODE SC ON SC.STATUSCODEID = SS.STATUSCODEID
		WHERE SS.SCHEDULEID = SCHEDULEIDIN
		AND SS.STATUSTYPE = STATUSTYPEIN
		ORDER BY SC.ORDERNUMBER, STATUSTIME DESC;
	ELSE --IF STATUSTYPEIN = '0' THEN
	 	OPEN P_CURSOR FOR
	 	SELECT
	 		SS.FUELSTATUSID STATUSCODEID,
			SCHEDULEID,
			STATUSTIME,
			FUELSTATUS as STATUSCODE,
			FUELSTATUSLABEL as STATUSCODELABEL
		FROM SCHEDULESTATUS SS
			RIGHT OUTER JOIN FUEL FL ON FL.FUELSTATUSID = SS.FUELSTATUSID
		WHERE SS.SCHEDULEID = SCHEDULEIDIN
		AND SS.STATUSTYPE = STATUSTYPEIN
		ORDER BY STATUSTIME DESC;
		--ORDER BY SC.ORDERNUMBER DESC;
	END IF;
	   EXCEPTION
	     WHEN NO_DATA_FOUND THEN
	       Null;
	     WHEN OTHERS THEN
	       Null;
END GET_SCHED_STATUS_COMPLETE;
 
 
 
 
 
 
 
 
@
