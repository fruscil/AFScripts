--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MISSION" (
   missionidin                   missions.missionid%TYPE,
   missionout              OUT   missions.mission%TYPE,
   missiondescriptionout   OUT   missions.missiondescription%TYPE
)
AS
BEGIN
   SELECT mission, missiondescription
     INTO missionout, missiondescriptionout
     FROM missions
    WHERE missions.missionid = missionidin;
END get_mission;

 
 
 
 
 
 
 
 
@
