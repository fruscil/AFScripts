--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AREAID_BY_AREA" (
AREA	  		  AREAS.AREA%TYPE,
AREAID	OUT	  	  AREAS.AREAID%TYPE
)
/******************************************************************************
   NAME:       GET_AREAID_BY_AREA
   PURPOSE:    Gets an AREAID from the AREA text parameter.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        5/27/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *AREA
   OUTPUT:
   *AREAID
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

EXISTINGAREAID NUMBER;

BEGIN

	 SELECT AREAID
	 INTO   EXISTINGAREAID
	 FROM   AREAS
	 WHERE 	AREA = AREA;

	 AREAID := EXISTINGAREAID;

END GET_AREAID_BY_AREA;

 
 
 
 
 
 
 
 
@
