--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AREAS" (p_cursor OUT emoc_types.emoc_cursor)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   areaid, area, areadescription, mocid
          FROM areas
      ORDER BY area;
END get_areas;

 
 
 
 
 
 
 
 
@
