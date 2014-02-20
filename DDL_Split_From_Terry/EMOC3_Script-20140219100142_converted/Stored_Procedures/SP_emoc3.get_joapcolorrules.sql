--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_JOAPCOLORRULES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   colorrulesid, colorrules.colorid, colors.colorname
          FROM colorrules, colors
         WHERE colorrules.colorid = colors.colorid
           AND colorrules.codetype = 'JOAP'
      ORDER BY colorname;
END get_joapcolorrules;

 
 
 
 
 
 
 
 
@
