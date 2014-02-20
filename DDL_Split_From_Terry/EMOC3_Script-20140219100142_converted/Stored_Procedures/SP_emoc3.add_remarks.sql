--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_REMARKS" (
REMARKSID		  REMARKS.REMARKSID%TYPE,
REMARKS			  REMARKS.REMARKS%TYPE

)
/******************************************************************************
   NAME:       ADD_REMARKS
   PURPOSE:    Inserts the REMARKS record

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        6/30/03      A.Mitchell       1. Created this procedure.

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

BEGIN

	 INSERT INTO REMARKS
	 (REMARKSID, REMARKS)
	 VALUES
	 (REMARKSID, REMARKS);

END ADD_REMARKS;

 
 
 
 
 
 
 
 
@
