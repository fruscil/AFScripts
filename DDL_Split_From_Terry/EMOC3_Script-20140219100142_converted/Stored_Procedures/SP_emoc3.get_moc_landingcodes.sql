--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_LANDINGCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   landingcodes.landingcodeid, landingcodes.landingcode,
               landingcodes.landingcodedescription,
               landingcodes.writeupneeded, mocid
          FROM landingcodes
         WHERE mocid = mocidin
      ORDER BY landingcodes.landingcode ASC;
END get_moc_landingcodes;

 
 
 
 
 
 
 
 
@
