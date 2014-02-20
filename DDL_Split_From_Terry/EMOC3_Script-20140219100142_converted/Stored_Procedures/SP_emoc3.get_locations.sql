--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_LOCATIONS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   locationid, locationcode, locationname, maximumoccupancy,
               NVL (defaultlocation, 0) AS defaultlocation, elc
          FROM locations
      ORDER BY locationcode;
END get_locations;

 
 
 
 
 
 
 
 
@
