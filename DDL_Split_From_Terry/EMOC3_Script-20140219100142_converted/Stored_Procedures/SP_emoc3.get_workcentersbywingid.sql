--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WORKCENTERSBYWINGID" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   wingidin         INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   workcenterid, workcentercode, workcentername, porgid,
               (SELECT DISTINCT organizations.orgname
                           FROM organizations
                          WHERE TRIM (organizations.orgid) =
                                         TRIM (workcenters.porgid)
                            AND organizations.wingid = wingidin) AS orgname,
               workcenters.unit_id, wingid
          FROM workcenters
         WHERE wingid = wingidin
      ORDER BY workcentercode;
END get_workcentersbywingid;

 
 
 
 
 
 
 
 
@
