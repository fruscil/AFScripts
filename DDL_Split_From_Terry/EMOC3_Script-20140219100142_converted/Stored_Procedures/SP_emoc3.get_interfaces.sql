--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_INTERFACES" (p_cursor OUT emoc_types.emoc_cursor) AS
BEGIN
  -- RETURN THE CURSOR FOR THE RECORDSET
  OPEN p_cursor FOR
    SELECT interfacecontrolid,
           interfacename,
           currentstatus,
           interfaceenabled,
           (SELECT fullname
              FROM users
             WHERE users.userid = interfacecontrol.lastupdateby) AS lastupdateby,
           lastupdate
      FROM interfacecontrol
     ORDER BY interfacename;
END get_interfaces;
 
 
 
 
 
 
 
 
@
