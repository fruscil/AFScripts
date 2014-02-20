--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AUCSBYMDS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mdsin            utilizationcodes.missiondesignseries%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   utilcodeid, utilizationcode, aucnarrative, programelementcode,
               utilizationcodes.camsinit, missiondesignseries
          FROM utilizationcodes
         WHERE utilizationcodes.missiondesignseries = mdsin
      ORDER BY utilizationcode ASC;
END get_aucsbymds;
 
 
 
 
 
 
 
 
@
