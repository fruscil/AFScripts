--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_WEAPONTYPES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   weaponstypeid, weapontype, mocid
          FROM weapontypes
         WHERE mocid = mocidin
      ORDER BY weapontype;
END get_moc_weapontypes;

 
 
 
 
 
 
 
 
@
