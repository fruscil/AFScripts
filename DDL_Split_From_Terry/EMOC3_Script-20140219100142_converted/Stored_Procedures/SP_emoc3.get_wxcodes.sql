--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WXCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   wxcodeid, weathercode, weatherdescription, defaultweathercode
          FROM wx
      ORDER BY weathercode;
END get_wxcodes;

 
 
 
 
 
 
 
 
@
