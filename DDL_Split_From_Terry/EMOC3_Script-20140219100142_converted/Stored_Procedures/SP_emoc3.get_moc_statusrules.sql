--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_STATUSRULES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   statruleid, statustransitionrule.statuscodeid,
               statustransitionrule.transition2id,
               (SELECT statuscode
                  FROM statuscode
                 WHERE statuscodeid =
                              statustransitionrule.statuscodeid)
                                                               AS fromstatus,
               (SELECT statuscode
                  FROM statuscode
                 WHERE statuscodeid =
                               statustransitionrule.transition2id)
                                                                 AS tostatus,
               mocid
          FROM statustransitionrule
         WHERE mocid = mocidin
      ORDER BY fromstatus;
END get_moc_statusrules;

 
 
 
 
 
 
 
 
@
