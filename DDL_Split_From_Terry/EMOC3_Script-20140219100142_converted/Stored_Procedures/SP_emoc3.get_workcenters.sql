--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WORKCENTERS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   workcenterid, workcentercode, workcentername, porgid,
               (SELECT organizations.orgname
                  FROM organizations
                 WHERE TRIM (organizations.orgid) =
                                         TRIM (workcenters.porgid))
                                                                  AS orgname,
               workcenters.unit_id, wingid
          FROM workcenters
      ORDER BY workcentercode;
END get_workcenters;

 
 
 
 
 
 
 
 
@
