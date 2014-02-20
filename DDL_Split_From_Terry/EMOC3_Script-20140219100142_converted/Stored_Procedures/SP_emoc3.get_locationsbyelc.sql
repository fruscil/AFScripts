--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_LOCATIONSBYELC" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   elcin            locations.elc%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   IF (LENGTH (elcin) > 0)
   THEN
      OPEN p_cursor FOR
         SELECT   locationid, locationcode, locationname, maximumoccupancy,
                  NVL (defaultlocation, 0) AS defaultlocation, nvl(elc,'') as elc, mocid
             FROM locations
            WHERE elc = elcin
         ORDER BY locationcode;
   ELSE
      OPEN p_cursor FOR
         SELECT   locationid, locationcode, locationname, maximumoccupancy,
                  NVL (defaultlocation, 0) AS defaultlocation, nvl(elc,'') as elc, mocid
             FROM locations
            WHERE LENGTH (elc) = 0 or elc is null
         ORDER BY locationcode;
   END IF;
END get_locationsbyelc;
 
 
 
 
 
 
 
 
@
