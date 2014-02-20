--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_AREA_FROM_EXCEL" (
AREA       AREAS.AREA%TYPE,
MOCID     AREAS.MOCID%TYPE,
AREAID OUT      AREAS.AREAID%TYPE
)
/******************************************************************************
   NAME:       ADD_AREA_FROM_EXCEL
   PURPOSE:    Inserts an AREA found in an Excel schedule line not
         already in the db.

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

NEWAREAID NUMBER;

BEGIN
  --INCREMENT
  SELECT SEQ_AREAS.NEXTVAL INTO NEWAREAID FROM DUAL;

  INSERT INTO AREAS (
  AREAID,
  AREA,
  MOCID
  )
    VALUES
 ( NEWAREAID,
  AREA,
  MOCID

 );
 AREAID := NEWAREAID;
END ADD_AREA_FROM_EXCEL;
 
 
 
 
 
 
 
 
@
