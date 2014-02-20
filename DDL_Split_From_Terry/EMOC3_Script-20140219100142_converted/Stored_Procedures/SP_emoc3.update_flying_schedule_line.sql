--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPDATE_FLYING_SCHEDULE_LINE" (
GOIN	    	  	  SCHEDULE.GO%TYPE,
SORTIENUMIN  	 	  SCHEDULE.SORTIENUM%TYPE,
AIRCRAFTIDIN		  SCHEDULE.AIRCRAFTID%TYPE,
CALLSIGNIN		  	  SCHEDULE.CALLSIGN%TYPE,
PILOTIDIN			  SCHEDULE.PILOTID%TYPE,
SCHEDULEDTAKEOFFIN    SCHEDULE.SCHEDULEDTAKEOFF%TYPE,
SCHEDULEDLANDINGIN    SCHEDULE.SCHEDULEDLANDING%TYPE,
AREAIDIN			  SCHEDULE.AREAID%TYPE,
AREAARRIVETIMEIN	  SCHEDULE.AREAARRIVETIME%TYPE,
AREALEAVETIMEIN	  	  SCHEDULE.AREALEAVETIME%TYPE,
MISSIONIDIN		  	  SCHEDULE.MISSIONID%TYPE,
SCHEDULEREMARKSIN	  REMARKS.REMARKS%TYPE,
SCHEDDAYIN		  	  SCHEDULE.SCHEDDAY%TYPE,
SQUADRONIDIN		  SCHEDULE.SQUADRONID%TYPE,
SORTIEDATEIN		  SCHEDULE.SORTIEDATE%TYPE,
CONFIGCODEIN		  SCHEDULE.CONFIGCODE%TYPE,
FUELLOADIN		  	  AIRCRAFT.FUELLOAD%TYPE,
BLOCKNUMBERIN		  SCHEDULE.BLOCKNUMBER%TYPE,
RANGEIDIN         SCHEDULE.RANGEID%TYPE,
SCHEDULEIDIN      SCHEDULE.SCHEDULEID%TYPE,
TYPE_EVENTIN        SCHEDULE.TYPE_EVENT%TYPE
)
/******************************************************************************
   NAME:       UPDATE_FLYING_SCHEDULE_LINE
   PURPOSE:    Updates a schedule line.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        7/31/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *SCHEDULEID,
   *GO,
   *CALLSIGN,
   *SCHEDULEDTAKEOFF,
   *SCHEDULEDLANDING,
   *AREAID,
   *AIRCRAFTID,
   *PILOTID,
   *SORTIENUM,
   *MISSIONID
   *REMARKS
   *SCHEDDAY
   *SORTIEDATE
   *CONFIGCODE
   *FUELLOAD
   *BLOCKNUMBER
   *RANGEID
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

REMARKID NUMBER;

BEGIN
	 --GET REMARK, IF ONE EXISTS
	 SELECT SCHEDULEREMARKS
	 INTO REMARKID
	 FROM SCHEDULE
	 WHERE SCHEDULEID = SCHEDULEIDIN;


	 IF REMARKID IS NULL
	 THEN --EXISTS, NOW UPDATE
	  	    BEGIN
		   		 IF  LENGTH(SCHEDULEREMARKSIN) > 0 OR SCHEDULEREMARKSIN IS NOT NULL THEN
				 	BEGIN
						 SELECT SEQ_REMARKS.NEXTVAL
						 INTO   REMARKID
						 FROM   DUAL;
						 ADD_REMARKS (REMARKID, SCHEDULEREMARKSIN);
						 UPDATE SCHEDULE SET SCHEDULEREMARKS = REMARKID WHERE SCHEDULEID = SCHEDULEIDIN;
					END;
				 END IF;
	        END;
	 ELSE
			BEGIN
				 IF  LENGTH(SCHEDULEREMARKSIN) > 0 OR SCHEDULEREMARKSIN IS NOT NULL THEN
				    BEGIN
		    	  	  UPDATE REMARKS SET REMARKS.REMARKSDATE = SYSDATE, REMARKS.REMARKS = SCHEDULEREMARKSIN WHERE REMARKSID = REMARKID;
				    END;
				 ELSE
				    BEGIN
				      UPDATE SCHEDULE SET SCHEDULEREMARKS = NULL WHERE SCHEDULEID = SCHEDULEIDIN;
			 	   	  DELETE REMARKS WHERE REMARKSID = REMARKID;
					END;
				 END IF;
			END;
	 END IF;

	IF BLOCKNUMBERIN IS NULL THEN
	 BEGIN
		 UPDATE SCHEDULE SET
			GO = GOIN,
			CALLSIGN = CALLSIGNIN,
			SCHEDULEDTAKEOFF = SCHEDULEDTAKEOFFIN,
			SCHEDULEDLANDING = SCHEDULEDLANDINGIN,
			AREAID = AREAIDIN,
			AREAARRIVETIME = AREAARRIVETIMEIN,
			AREALEAVETIME = AREALEAVETIMEIN,
			AIRCRAFTID = AIRCRAFTIDIN,
			PILOTID = PILOTIDIN,
			SORTIENUM = SORTIENUMIN,
			MISSIONID = MISSIONIDIN,
			SCHEDDAY = SCHEDDAYIN,
			SORTIEDATE = SORTIEDATEIN,
			CONFIGCODE = CONFIGCODEIN,
			RANGEID = RANGEIDIN,
			TYPE_EVENT = TYPE_EVENTIN
		WHERE SCHEDULEID = SCHEDULEIDIN;

		UPDATE AIRCRAFT SET FUELLOAD = FUELLOADIN WHERE AIRCRAFTID = AIRCRAFTIDIN;
	 END;
	ELSE
 	   BEGIN
		UPDATE SCHEDULE SET
			GO = GOIN,
			SCHEDULEDTAKEOFF = SCHEDULEDTAKEOFFIN,
			SCHEDULEDLANDING = SCHEDULEDLANDINGIN,
			AREAID = AREAIDIN,
			AREAARRIVETIME = AREAARRIVETIMEIN,
			AREALEAVETIME = AREALEAVETIMEIN,
			MISSIONID = MISSIONIDIN,
			SCHEDDAY = SCHEDDAYIN,
			SORTIEDATE = SORTIEDATEIN,
			CONFIGCODE = CONFIGCODEIN,
			RANGEID = RANGEIDIN,
			TYPE_EVENT = TYPE_EVENTIN
		WHERE BLOCKNUMBER = BLOCKNUMBERIN
		AND SORTIEDATE = SORTIEDATEIN;

		UPDATE AIRCRAFT SET FUELLOAD = FUELLOADIN
		WHERE AIRCRAFTID IN
		(SELECT AIRCRAFTID FROM SCHEDULE
		 WHERE BLOCKNUMBER = BLOCKNUMBERIN
		 AND SORTIEDATE = SORTIEDATEIN);
	   END;
	  END IF;

END UPDATE_FLYING_SCHEDULE_LINE;
 
 
 
 
 
 
 
 
@