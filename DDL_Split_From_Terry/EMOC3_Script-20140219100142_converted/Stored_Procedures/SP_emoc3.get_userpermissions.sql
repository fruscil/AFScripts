--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_USERPERMISSIONS" (
   useridin         permissions.userid%TYPE,
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
      ORDER BY squadronname;
END get_userpermissions;

 
 
 
 
 
 
 
 
@
