--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_MISSION" (
   mission                    missions.mission%TYPE,
   missiondescription         missions.missiondescription%TYPE,
   mocidin                    missions.mocid%TYPE,
   missionid            OUT   missions.missionid%TYPE
)
AS
BEGIN
   SELECT seq_missions.NEXTVAL
     INTO missionid
     FROM DUAL;

   INSERT INTO missions
               (missionid, mission, missiondescription, mocid
               )
        VALUES (missionid, mission, missiondescription, mocidin
               );
END add_moc_mission;

 
 
 
 
 
 
 
 
@
