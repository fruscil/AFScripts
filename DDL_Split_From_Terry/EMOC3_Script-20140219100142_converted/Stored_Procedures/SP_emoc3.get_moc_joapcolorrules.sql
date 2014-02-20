--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_JOAPCOLORRULES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   colorrulesid, colorrules.colorid, colors.colorname
          FROM colorrules, colors
         WHERE colorrules.colorid = colors.colorid
           AND colorrules.codetype = 'JOAP'
           AND colorrules.mocid = mocidin
      ORDER BY colorname;
END get_moc_joapcolorrules;

 
 
 
 
 
 
 
 
@
