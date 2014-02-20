--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_REMARKS" (
REMARKSIDIN		  REMARKS.REMARKSID%TYPE,
REMARKS		OUT	  REMARKS.REMARKS%TYPE

)
/******************************************************************************
   NAME:       GET_REMARKS
   PURPOSE:    Gets the REMARKS record

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        7/30/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *REMARKSID
   OUTPUT:
   *REMARKS
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

REMARKTEXT VARCHAR(4000);

BEGIN

	 SELECT REMARKS
	 INTO   REMARKTEXT
	 FROM   REMARKS
	 WHERE REMARKSID = REMARKSIDIN;

	 REMARKS := REMARKTEXT;

END GET_REMARKS;

 
 
 
 
 
 
 
 
@
