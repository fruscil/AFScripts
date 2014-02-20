--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_INTERFACES" (p_cursor OUT emoc_types.emoc_cursor,
                                               mocidin  interfacecontrol.mocid%TYPE) AS
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
     WHERE mocid = mocidin
     ORDER BY interfacename;
END get_moc_interfaces;
 
 
 
 
 
 
 
 
@
