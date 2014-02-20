--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WEAPONSCLASSES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   weaponsclassid, weaponsclass, defaultval
          FROM weaponsclass
      ORDER BY weaponsclass;
END get_weaponsclasses;

 
 
 
 
 
 
 
 
@
