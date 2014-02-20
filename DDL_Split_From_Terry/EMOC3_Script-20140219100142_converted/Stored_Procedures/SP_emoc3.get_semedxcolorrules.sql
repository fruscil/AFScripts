--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SEMEDXCOLORRULES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   colorrulesid, colorrules.colorid, colors.colorname,
               colors.colorvalue
          FROM colorrules, colors
         WHERE colorrules.colorid = colors.colorid
           AND colorrules.codetype = 'SEMEDX'
      ORDER BY colorname;
END get_semedxcolorrules;

 
 
 
 
 
 
 
 
@
