--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SCHEDULEID_BY_BLOCK" (
P_CURSOR OUT 	  EMOC_TYPES.EMOC_CURSOR,
SQUADRONIDIN 	  SQUADRONS.SQUADRONID%TYPE,
SORTIEDATEIN	  SCHEDULE.SORTIEDATE%TYPE,
BLOCK			  SCHEDULE.BLOCKNUMBER%TYPE
)
/******************************************************************************
   NAME:       GET_SCHEDULEID_BY_BLOCK
   PURPOSE:    Returns Schedules for the specified squadron with
   			   text values for codes (JOAP, Fuel, etc.) filled.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        7/22/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *SQUADRONIDIN
   *SORTIEDATE
   *BLOCK
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
	 	BEGIN
			OPEN P_CURSOR FOR
			SELECT SCHEDULEID
			FROM SCHEDULE
			WHERE SQUADRONID = SQUADRONIDIN
			AND SORTIEDATE = SORTIEDATEIN
			AND BLOCKNUMBER = BLOCK;
		END;

   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       Null;
     WHEN OTHERS THEN
       Null;
END GET_SCHEDULEID_BY_BLOCK;

 
 
 
 
 
 
 
 
@
