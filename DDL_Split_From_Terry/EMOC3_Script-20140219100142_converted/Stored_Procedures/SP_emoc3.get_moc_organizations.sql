--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_ORGANIZATIONS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   organizationsid, orgid, orgname,
               (orgname || ': ' || orgid) AS nameid, station_location_code,
               unit_id, wingid, camsinit, mocid
          FROM organizations
         WHERE mocid = mocidin
      ORDER BY orgname;
END get_moc_organizations;

 
 
 
 
 
 
 
 
@
