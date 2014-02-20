--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MISSIONS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   missionid, LPAD (mission, 10, ' ') AS mission,
               missiondescription
          FROM missions
      ORDER BY mission;
END get_missions;

 
 
 
 
 
 
 
 
@
