--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_USERPERMISSIONS" (
   useridin         permissions.userid%TYPE,
   mocidin          moc.mocid%TYPE,
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   permissionid, permissions.userid, users.username,
               permissions.squadronid, squadrons.squadronname,
               squadrons.shortname, emocrole
          FROM permissions, squadrons, users
         WHERE permissions.userid = useridin
           AND permissions.userid = users.userid
           AND permissions.squadronid = squadrons.squadronid
           AND squadrons.mocid = mocidin
      ORDER BY squadronname;
END get_moc_userpermissions;

 
 
 
 
 
 
 
 
@
