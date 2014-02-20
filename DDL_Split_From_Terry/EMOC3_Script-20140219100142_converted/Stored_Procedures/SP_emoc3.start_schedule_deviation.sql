--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."START_SCHEDULE_DEVIATION" (
ACTIONOPTIONS	  SCHEDULEDEVIATIONS.ACTIONOPTIONS%TYPE,
SORTIEDATE		  SCHEDULEDEVIATIONS.SORTIEDATE%TYPE,
SCHEDULEID		  SCHEDULEDEVIATIONS.SCHEDULEID%TYPE,
SORTIENUM  	 	  SCHEDULEDEVIATIONS.SORTIENUM%TYPE,
SORTIEMOD		  SCHEDULEDEVIATIONS.SORTIEMOD%TYPE,
STARTDATETIME	  SCHEDULEDEVIATIONS.STARTDATETIME%TYPE,
STOPDATETIME	  SCHEDULEDEVIATIONS.STOPDATETIME%TYPE,
DEVIATIONCODEID	  SCHEDULEDEVIATIONS.DEVIATIONCODEID%TYPE,
CAUSECODEID	  	  SCHEDULEDEVIATIONS.CAUSECODEID%TYPE,
NEWCAUSECODE	  SCHEDULEDEVIATIONS.NEWCAUSECODE%TYPE,
CHARGEABLE		  SCHEDULEDEVIATIONS.CHARGEABLE%TYPE,
MAINTENANCEEVENTID		  SCHEDULEDEVIATIONS.MAINTENANCEEVENTID%TYPE,
DEVIATIONSREMARKS REMARKS.REMARKS%TYPE,
INTERFACELOGID    SCHEDULEDEVIATIONS.INTERFACELOGID%TYPE
)
/******************************************************************************
   NAME:       START_SCHEDULE_DEVIATION
   PURPOSE:    Inserts a schedule deviation

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        7/18/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
	OPTION
	SORTIEDATE
	SCHEDULEID
	SORTIENUM
	SORTIEMOD
	STARTDATETIME
	STOPDATETIME
	DEVIATIONCODEID
	CAUSECODEID
	NEWCAUSECODE
	MISSIONID
	CHARGEABLE
	MAINTENANCEEVENTID
	DEVIATIONSREMARKS
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

NEWSCHEDULEDEVIATIONID NUMBER;
REMARKSID NUMBER;

BEGIN
	 --INCREMENT
	 SELECT SEQ_SCHEDULEDEVIATIONS.NEXTVAL
	 INTO   NEWSCHEDULEDEVIATIONID
	 FROM   SCHEDULEDEVIATIONS;
	 NEWSCHEDULEDEVIATIONID := NEWSCHEDULEDEVIATIONID + 1;

	 INSERT INTO SCHEDULEDEVIATIONS (
		SCHEDULEDEVIATIONID,
		ACTIONOPTIONS,
		SORTIEDATE,
		SCHEDULEID,
		SORTIENUM,
		SORTIEMOD,
		STARTDATETIME,
		STOPDATETIME,
		DEVIATIONCODEID,
		CAUSECODEID,
		NEWCAUSECODE,
		CHARGEABLE,
		MAINTENANCEEVENTID,
		INTERFACELOGID
		)
   	VALUES
	(	NEWSCHEDULEDEVIATIONID,
		ACTIONOPTIONS,
		SORTIEDATE,
		SCHEDULEID,
		SORTIENUM,
		SORTIEMOD,
		STARTDATETIME,
		STOPDATETIME,
		DEVIATIONCODEID,
		CAUSECODEID,
		NEWCAUSECODE,
		CHARGEABLE,
		MAINTENANCEEVENTID,
		INTERFACELOGID
		);

	 --INCREMENT
	 IF LENGTH(DEVIATIONSREMARKS) > 0
	 THEN
		 BEGIN
			 SELECT SEQ_REMARKS.NEXTVAL
			 INTO   REMARKSID
			 FROM   REMARKS;
			 REMARKSID := REMARKSID + 1;

			ADD_REMARKS (REMARKSID, DEVIATIONSREMARKS);

			UPDATE SCHEDULEDEVIATIONS SET DEVIATIONSREMARKS = REMARKSID WHERE SCHEDULEID = NEWSCHEDULEDEVIATIONID;
		 END ;
	 END IF;

END START_SCHEDULE_DEVIATION;

 
 
 
 
 
 
 
 
@