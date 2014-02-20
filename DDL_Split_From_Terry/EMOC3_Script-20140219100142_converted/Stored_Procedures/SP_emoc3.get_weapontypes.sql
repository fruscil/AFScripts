--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WEAPONTYPES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   weaponstypeid, weapontype
          FROM weapontypes
      ORDER BY weapontype;
END get_weapontypes;

 
 
 
 
 
 
 
 
@
