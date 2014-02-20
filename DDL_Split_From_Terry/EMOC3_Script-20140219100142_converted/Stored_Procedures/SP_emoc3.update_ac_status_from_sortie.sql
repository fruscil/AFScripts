--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPDATE_AC_STATUS_FROM_SORTIE" (
AIRCRAFTIDIN 	  AIRCRAFT.AIRCRAFTID%TYPE,
STATUSCODEIN    SCHEDULESTATUS.STATUSCODEID%TYPE,
STATUSTIMEIN    SCHEDULESTATUS.STATUSTIME%TYPE,
STATUSTYPEIN	  SCHEDULESTATUS.STATUSTYPE%TYPE
)
/******************************************************************************
   NAME:       UPDATE_AIRCRAFT_STATUS_FROM_SORTIE
   PURPOSE:    Updates AIRCRAFT table with last status

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        8/7/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *AIRCRAFTID
   *STATUSTYPE
   *STATUSCODE
   *STATUSTIME
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

BEGIN
    IF STATUSTYPEIN = 0 THEN
      BEGIN
        UPDATE AIRCRAFT
        SET STATUSCODEID = STATUSCODEIN,
        STATUSCODETIME = STATUSTIMEIN
        WHERE AIRCRAFTID = AIRCRAFTIDIN;
      END;
    END IF;

    IF STATUSTYPEIN = 1 THEN
      BEGIN
        UPDATE AIRCRAFT
        SET FUELSTATUSID = STATUSCODEIN,
        FUELSTATUSTIME = STATUSTIMEIN
        WHERE AIRCRAFTID = AIRCRAFTIDIN;
      END;
    END IF;

	   EXCEPTION
	     WHEN NO_DATA_FOUND THEN
	       Null;
	     WHEN OTHERS THEN
	       Null;
END UPDATE_AC_STATUS_FROM_SORTIE;

 
 
 
 
 
 
 
 
@
