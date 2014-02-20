--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_COLORS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   colorid, colorname, colorvalue, fontcolor, mocid
          FROM colors
         WHERE mocid = mocidin
      ORDER BY colorname;
END get_moc_colors;

 
 
 
 
 
 
 
 
@
