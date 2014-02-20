--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_INTERFACECONTROLREC" (interfacenamein  interfacecontrol.interfacename%TYPE,
                                                        tbmcsemail       OUT emocconfig.tbmcsemail%TYPE,
                                                        tbmcstimer       OUT emocconfig.tbmcstimer%TYPE,
                                                        interfaceenabled OUT interfacecontrol.interfaceenabled%TYPE,
                                                        lastupdated      OUT VARCHAR2,
                                                        updatedby        OUT interfacecontrol.interfacename%TYPE,
                                                        mocidin          interfacecontrol.mocid%TYPE) AS
BEGIN
  SELECT tbmcsemail, tbmcstimer
    INTO tbmcsemail, tbmcstimer
    FROM emocconfig
   WHERE emocconfigid = mocidin;

  SELECT interfaceenabled,
         TO_CHAR(lastupdate, 'MM/DD/YYYY HH24:MI:SS'),
         (SELECT fullname
            FROM users
           WHERE users.userid = interfacecontrol.lastupdateby)
    INTO interfaceenabled, lastupdated, updatedby
    FROM interfacecontrol
   WHERE TRIM(interfacename) = TRIM(interfacenamein)
     AND mocid = mocidin;
END get_moc_interfacecontrolrec;
 
 
 
 
 
 
 
 
@
