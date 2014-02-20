--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_PILOT_FROM_EXCEL" (
PILOTNAME      PILOT.PILOTNAME%TYPE,
SQUADRONID    PILOT.SQUADRONID%TYPE,
MOCIDIN     PILOT.MOCID%TYPE,
PILOTID OUT      PILOT.PILOTID%TYPE
)
/******************************************************************************
   NAME:       ADD_PILOT_FROM_EXCEL
   PURPOSE:    Inserts an PILOT found in an Excel schedule line not
         already in the db.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        5/27/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *PILOT
   OUTPUT:
   *PILOTID
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

NEWPILOTID NUMBER;
DEFRANK NUMBER;

BEGIN
  --INCREMENT
   SELECT SEQ_PILOTS.NEXTVAL INTO NEWPILOTID FROM DUAL;
   SELECT RANKID
   INTO DEFRANK
   FROM RANKS
   WHERE DEFAULTRANK = 1
   AND MOCID = MOCIDIN;

  INSERT INTO PILOT (
  PILOTID,
  SQUADRONID,
  PILOTNAME,
  MOCID,
  RANKID
  )
    VALUES
 ( NEWPILOTID,
  SQUADRONID,
  PILOTNAME,
  MOCIDIN,
  DEFRANK

 );
 PILOTID := NEWPILOTID;
END ADD_PILOT_FROM_EXCEL;
 
 
 
 
 
 
 
 
@
