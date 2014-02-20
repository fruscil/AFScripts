--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_AUCS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   utilcodeid, utilizationcode, aucnarrative, programelementcode,
               utilizationcodes.camsinit,
               utilizationcodes.missiondesignseries, utilizationcodes.mocid
          FROM utilizationcodes
         WHERE utilizationcodes.mocid = mocidin
      ORDER BY utilizationcode ASC;
END get_moc_aucs;
 
 
 
 
 
 
 
 
@
