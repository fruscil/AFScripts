--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AUCS" (p_cursor OUT emoc_types.emoc_cursor)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   utilcodeid, utilizationcode, aucnarrative, programelementcode,
               utilizationcodes.camsinit, missiondesignseries
          FROM utilizationcodes
      ORDER BY utilizationcode ASC;
END get_aucs;
 
 
 
 
 
 
 
 
@
