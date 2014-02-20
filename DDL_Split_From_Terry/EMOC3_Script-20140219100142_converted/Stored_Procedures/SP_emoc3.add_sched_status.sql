--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_SCHED_STATUS" (
SCHEDULEID		  SCHEDULE.SCHEDULEID%TYPE,
STATUSCODEID	  SCHEDULESTATUS.STATUSCODEID%TYPE,
STATUSTYPE	  	  SCHEDULESTATUS.STATUSTYPE%TYPE,
STATUSTIME	  	  SCHEDULESTATUS.STATUSTIME%TYPE
--USERID 			  USERS.USERID%TYPE

)
/******************************************************************************
   NAME:       ADD_SCHED_STATUS
   PURPOSE:    Inserts default status record for a newly entered plane

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        7/1/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *SCHEDULEID
   *STATUSCODEID
   *STATUSTYPE
   *STATUSTIME
   *USERID
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

NEWSCHEDULESTATUSID NUMBER;

BEGIN

	 --INCREMENT
	 SELECT SEQ_SCHEDULESTATUS.NEXTVAL
	 INTO   NEWSCHEDULESTATUSID
	 FROM   DUAL;

	 IF STATUSTYPE = '0' THEN
	 	INSERT INTO SCHEDULESTATUS
		(
	 	 	   SCHEDULESTATUSID,
	 		   SCHEDULEID,
			   STATUSCODEID,
			   STATUSTYPE,
			   STATUSTIME
			   --USERID
		)
		VALUES
		(	NEWSCHEDULESTATUSID,
	 		SCHEDULEID,
			STATUSCODEID,
			STATUSTYPE,
			STATUSTIME
			--USERID
		);
	 ELSE --IF STATUSTYPE = '1' THEN
	 	 INSERT INTO SCHEDULESTATUS
		(
	 	 	   SCHEDULESTATUSID,
	 		   SCHEDULEID,
			   FUELSTATUSID,
			   STATUSTYPE,
			   STATUSTIME
			   --USERID
		)
		VALUES
		(	NEWSCHEDULESTATUSID,
	 		SCHEDULEID,
			STATUSCODEID,
			STATUSTYPE,
			STATUSTIME
			--USERID
		);
	END IF;

END ADD_SCHED_STATUS;
 
 
 
 
 
 
 
 
@
