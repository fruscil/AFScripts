--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_COMBATSCLS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   combatsclid, combatscl
          FROM combatscls
      ORDER BY combatscl;
END get_combatscls;

 
 
 
 
 
 
 
 
@
