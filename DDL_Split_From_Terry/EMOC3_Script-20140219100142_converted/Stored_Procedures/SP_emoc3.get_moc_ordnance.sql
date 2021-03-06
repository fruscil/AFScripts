--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_ORDNANCE" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   ordnanceid, ordnance, configuration, ordnance.weaponstypeid,
               (SELECT weapontype
                  FROM weapontypes
                 WHERE weaponstypeid = ordnance.weaponstypeid) AS weapontype,
               mocid
          FROM ordnance
         WHERE mocid = mocidin
      ORDER BY ordnance;
END get_moc_ordnance;

 
 
 
 
 
 
 
 
@
