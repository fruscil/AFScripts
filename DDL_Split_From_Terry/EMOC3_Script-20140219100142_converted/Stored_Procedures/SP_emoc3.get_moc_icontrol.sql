--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_ICONTROL" (interfacenamein  interfacecontrol.interfacename%TYPE,
                                             interfaceenabled OUT interfacecontrol.interfaceenabled%TYPE,
                                             lastupdated      OUT VARCHAR2,
                                             updatedby        OUT interfacecontrol.interfacename%TYPE,
                                             mocidin          interfacecontrol.MOCID%TYPE) AS
BEGIN
  SELECT interfaceenabled,
         TO_CHAR(lastupdate, 'MM/DD/YYYY HH24:MI:SS'),
         (SELECT fullname
            FROM users
           WHERE users.userid = interfacecontrol.lastupdateby)
    INTO interfaceenabled, lastupdated, updatedby
    FROM interfacecontrol
   WHERE trim(interfacename) = interfacenamein
     AND mocid = mocidin;
END get_moc_icontrol;
 
 
 
 
 
 
 
 
@
