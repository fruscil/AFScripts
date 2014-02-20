--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_AREAS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   areaid, area, areadescription, mocid
          FROM areas
         WHERE mocid = mocidin
      ORDER BY area;
END get_moc_areas;

 
 
 
 
 
 
 
 
@
