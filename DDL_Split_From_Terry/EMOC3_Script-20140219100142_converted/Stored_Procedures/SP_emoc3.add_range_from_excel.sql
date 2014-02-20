--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_RANGE_FROM_EXCEL" (
RANGE       RANGES.RANGE%TYPE,
MOCID     RANGES.MOCID%TYPE,
RANGEID OUT      RANGES.RANGEID%TYPE
)
/******************************************************************************
   NAME:       ADD_RANGE_FROM_EXCEL
   PURPOSE:    Inserts an RANGE found in an Excel schedule line not
         already in the db.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        5/27/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *RANGE
   OUTPUT:
   *RANGEID
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

NEWRANGEID NUMBER;

BEGIN
  --INCREMENT
  SELECT SEQ_RANGES.NEXTVAL INTO NEWRANGEID FROM DUAL;

  INSERT INTO RANGES (
  RANGEID,
  RANGE,
  MOCID
  )
    VALUES
 ( NEWRANGEID,
  RANGE,
  MOCID

 );
 RANGEID := NEWRANGEID;
END ADD_RANGE_FROM_EXCEL;
 
 
 
 
 
 
 
 
@
