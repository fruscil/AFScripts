--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_LANDINGCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   landingcodes.landingcodeid, landingcodes.landingcode,
               landingcodes.landingcodedescription,
               landingcodes.writeupneeded
          FROM landingcodes
      ORDER BY landingcodes.landingcode ASC;
END get_landingcodes;

 
 
 
 
 
 
 
 
@
