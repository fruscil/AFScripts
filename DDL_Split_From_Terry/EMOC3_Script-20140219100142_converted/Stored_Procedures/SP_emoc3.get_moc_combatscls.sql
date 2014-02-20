--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_COMBATSCLS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   combatsclid, combatscl, mocid
          FROM combatscls
         WHERE mocid = mocidin
      ORDER BY combatscl;
END get_moc_combatscls;

 
 
 
 
 
 
 
 
@
