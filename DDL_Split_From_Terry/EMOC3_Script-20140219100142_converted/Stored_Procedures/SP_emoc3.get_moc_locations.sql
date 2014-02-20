--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_LOCATIONS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   locationid, locationcode, locationname, maximumoccupancy,
               NVL (defaultlocation, 0) AS defaultlocation, nvl(elc,'') as elc, mocid
          FROM locations
         WHERE mocid = mocidin
      ORDER BY locationcode;
END get_moc_locations;
 
 
 
 
 
 
 
 
@
