--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_MISSION" (
   missionidin            missions.missionid%TYPE,
   missionin              missions.mission%TYPE,
   missiondescriptionin   missions.missiondescription%TYPE
)
AS
BEGIN
   UPDATE missions
      SET mission = missionin,
          missiondescription = missiondescriptionin
    WHERE missions.missionid = missionidin;
END upd_mission;

 
 
 
 
 
 
 
 
@
