--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SORTIENUM_BY_SORTIEDATE" (
P_CURSOR   OUT  EMOC_TYPES.EMOC_CURSOR,
SQUADRONIDIN    SQUADRONS.SQUADRONID%TYPE,
SORTIEDATEIN   SCHEDULE.SORTIEDATE%TYPE
)
/******************************************************************************
   NAME:       GET_SORTIENUM_BY_SORTIEDATE
   PURPOSE:    Gets a list of available sorties to update

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        9/4/03    A.Mitchell       1. Created this procedure

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
     SELECT SCHEDULEID, SORTIENUM
     FROM SCHEDULE
           WHERE SQUADRONID = SQUADRONIDIN
     AND SORTIEDATE = SORTIEDATEIN
     ORDER BY SORTIENUM;

   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       Null;
     WHEN OTHERS THEN
       Null;
END GET_SORTIENUM_BY_SORTIEDATE;
 
 
 
 
 
 
 
 
@
