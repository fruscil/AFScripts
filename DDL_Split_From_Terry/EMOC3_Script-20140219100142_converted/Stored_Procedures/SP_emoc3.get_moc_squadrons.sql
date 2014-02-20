--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_SQUADRONS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   squadronid, squadronname, shortname, squadrons.colorid,
               squadrons.wingid,
               (SELECT colors.colorname
                  FROM colors
                 WHERE colorid = squadrons.colorid) AS colorname,
               (SELECT colors.colorvalue
                  FROM colors
                 WHERE colorid = squadrons.colorid) AS colorvalue,
               (SELECT wingname
                  FROM wings
                 WHERE wings.wingid = squadrons.wingid) AS wingname,
               (SELECT orgid
                  FROM organizations
                 WHERE squadrons.organizationsid =
                                       organizations.organizationsid)
                                                                    AS orgid,
               squadrons.organizationsid,
               (SELECT orgname || ': ' || orgid
                  FROM organizations
                 WHERE squadrons.organizationsid =
                                      organizations.organizationsid)
                                                                   AS nameid,
               squadrons.timeoffsetfrommoc
          FROM squadrons
         WHERE mocid = mocidin
      ORDER BY squadronname;
END get_moc_squadrons;
 
 
 
 
 
 
 
 
@
