--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SPARES_BY_SORTIEDATE" (
P_CURSOR   OUT  EMOC_TYPES.EMOC_CURSOR,
SQUADRONIDIN    SQUADRONS.SQUADRONID%TYPE,
SORTIEDATEIN   SCHEDULE.SORTIEDATE%TYPE
)
/******************************************************************************
   NAME:       GET_SPARES_BY_SORTIEDATE
   PURPOSE:    Gets a list of available sorties to update

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        9/4/03    j.Chaplin  1. Created this procedure

   PARAMETERS:
   INPUT:
   *SQUADRONIDIN
   *SORTIEDATE
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
     OPEN P_CURSOR FOR
     SELECT TAILNUMBER
     FROM SCHEDULE
  JOIN AIRCRAFT ON AIRCRAFT.AIRCRAFTID = SCHEDULE.AIRCRAFTID
     WHERE SCHEDULE.SQUADRONID = SQUADRONIDIN
     AND SORTIEDATE = SORTIEDATEIN
  AND SPARE = 1
     ORDER BY TAILNUMBER;

   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       NULL;
     WHEN OTHERS THEN
       NULL;
END GET_SPARES_BY_SORTIEDATE;
 
 
 
 
 
 
 
 
@
