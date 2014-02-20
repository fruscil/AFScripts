--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AIRBORNE_BY_SQUADRON" 
(
AIRBORNE OUT 	  NUMBER,
SQUADRONIDIN 	  SQUADRONS.SQUADRONID%TYPE,
SORTIEDATEIN	  SCHEDULE.SORTIEDATE%TYPE
)
/******************************************************************************
   NAME:       GET_AIRBORNE_BY_SQUADRON
   PURPOSE:    Returns Schedules for the specified squadron with
   			   text values for codes (JOAP, Fuel, etc.) filled.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        7/11/03      A.Mitchell       1. Created this procedure.
   1.1        7/14/09      J.C.             2. Modified to prevent full table scans.
                                               (QC397)

   PARAMETERS:
   INPUT:
   *SQUADRONIDIN
   *SCHEDDAY
   OUTPUT:
   *AIRBORNE
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

FLYCOUNT NUMBER;

BEGIN
SELECT COUNT(*) AIRBORNE
	INTO FLYCOUNT
	FROM SCHEDULE SCH
		WHERE ACTUALTAKEOFF IS NOT NULL
		AND SCH.SQUADRONID = SQUADRONIDIN
		AND SCH.SORTIEDATE <= SORTIEDATEIN
		AND ACTUALLANDING IS NULL;

	AIRBORNE := FLYCOUNT;

   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       Null;
     WHEN OTHERS THEN
       Null;
END GET_AIRBORNE_BY_SQUADRON;
 
@
