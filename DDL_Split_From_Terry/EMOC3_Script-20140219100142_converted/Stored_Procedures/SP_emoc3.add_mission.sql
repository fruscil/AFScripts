--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MISSION" (
   mission                    missions.mission%TYPE,
   missiondescription         missions.missiondescription%TYPE,
   missionid            OUT   missions.missionid%TYPE
)
AS
BEGIN
   SELECT seq_missions.NEXTVAL
     INTO missionid
     FROM DUAL;

   INSERT INTO missions
               (missionid, mission, missiondescription
               )
        VALUES (missionid, mission, missiondescription
               );
END add_mission;

 
 
 
 
 
 
 
 
@
