--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPDATE_SCHEDULE_BLOCK" (
SQUADRONIDIN		  SCHEDULE.SQUADRONID%TYPE,
SORTIEDATEIN		  SCHEDULE.SORTIEDATE%TYPE,
SORTIENUMIN  	 	  SCHEDULE.SORTIENUM%TYPE,
AIRCRAFTIDIN		  SCHEDULE.AIRCRAFTID%TYPE,
BLOCKNUMBERIN		  SCHEDULE.BLOCKNUMBER%TYPE
)
/******************************************************************************
   NAME:       UPDATE_SCHEDULE_BLOCK
   PURPOSE:    Updates a schedule line BLOCKNUM.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        9/15/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *SQUADRONID,
   *AIRCRAFTID,
   *SORTIENUM,
   *SORTIEDATE
   *BLOCKNUMBER
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

BEGIN

		UPDATE SCHEDULE SET BLOCKNUMBER = BLOCKNUMBERIN
		WHERE SQUADRONID = SQUADRONIDIN
		AND SORTIEDATE = SORTIEDATEIN
		AND SORTIENUM = SORTIENUMIN
		AND AIRCRAFTID = AIRCRAFTIDIN;

END UPDATE_SCHEDULE_BLOCK;

 
 
 
 
 
 
 
 
@
