--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_ORGS_BY_UNITID" (
   unitidin         organizations.unit_id%TYPE,
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor
    FOR
       SELECT   organizationsid, orgid, orgname,
                (orgname || ': ' || orgid) AS nameid, station_location_code,
                unit_id, wingid, camsinit
           FROM organizations
          WHERE unit_id = unitidin
       ORDER BY nameid;
END get_orgs_by_unitid;

 
 
 
 
 
 
 
 
@
