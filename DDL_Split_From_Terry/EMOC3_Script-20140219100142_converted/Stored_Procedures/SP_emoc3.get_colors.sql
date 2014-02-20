--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_COLORS" (p_cursor OUT emoc_types.emoc_cursor)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   colorid, colorname, colorvalue, fontcolor
          FROM colors
      ORDER BY colorname;
END get_colors;

 
 
 
 
 
 
 
 
@
