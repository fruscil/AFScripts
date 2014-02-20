--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MISSION_FROM_USER" (
   mission           missions.mission%TYPE,
   mocid    missions.mocid%TYPE,
   missionid   OUT   missions.missionid%TYPE
)
/******************************************************************************
   NAME:       ADD_MISSION_FROM_EXCEL
   PURPOSE:    Inserts an MISSION found in an Excel schedule line not
               already in the db.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        6/17/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *MISSION
   OUTPUT:
   *MISSIONID
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
   newmissionid   NUMBER;
BEGIN
   --INCREMENT
   SELECT seq_missions.NEXTVAL
     INTO newmissionid
     FROM DUAL;

   INSERT INTO missions
               (missionid, mission, mocid
               )
        VALUES (newmissionid, mission, mocid
               );

   missionid := newmissionid;
END add_mission_from_user;
 
 
 
 
 
 
 
 
@
