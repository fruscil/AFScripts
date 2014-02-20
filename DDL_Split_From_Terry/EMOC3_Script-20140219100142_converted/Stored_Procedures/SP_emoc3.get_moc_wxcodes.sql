--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_WXCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   wxcodeid, weathercode, weatherdescription, defaultweathercode,
               mocid
          FROM wx
         WHERE mocid = mocidin
      ORDER BY weathercode;
END get_moc_wxcodes;

 
 
 
 
 
 
 
 
@
