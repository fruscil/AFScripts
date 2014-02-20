--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_WORKCENTERS" (p_cursor OUT emoc_types.emoc_cursor,
                                                  mocidin  NUMBER) AS
BEGIN
  -- RETURN THE CURSOR FOR THE RECORDSET
  OPEN p_cursor FOR
    SELECT workcenterid,
           workcentercode,
           workcentername,
           porgid,
           (SELECT distinct (organizations.orgname) as orgname
              FROM organizations
             WHERE TRIM(organizations.orgid) = TRIM(workcenters.porgid)
               and organizations.mocid = mocidin) AS orgname,
           workcenters.unit_id,
           wingid,
           mocid
      FROM workcenters
     WHERE mocid = mocidin
     ORDER BY workcentercode;
END get_moc_workcenters;



 
 
 
 
 
 
 
 
@
