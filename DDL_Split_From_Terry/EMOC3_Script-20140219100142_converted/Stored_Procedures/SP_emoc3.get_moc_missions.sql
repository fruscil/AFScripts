--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_MISSIONS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   missionid, LPAD (mission, 10, ' ') AS mission,
               missiondescription, mocid
          FROM missions
         WHERE mocid = mocidin
      ORDER BY mission;
END get_moc_missions;

 
 
 
 
 
 
 
 
@
