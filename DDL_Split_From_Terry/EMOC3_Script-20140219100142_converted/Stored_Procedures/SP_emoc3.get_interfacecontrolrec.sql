--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_INTERFACECONTROLREC" (interfacenamein  interfacecontrol.interfacename%TYPE,
                                                    tbmcsemail       OUT emocconfig.tbmcsemail%TYPE,
                                                    tbmcstimer       OUT emocconfig.tbmcstimer%TYPE,
                                                    interfaceenabled OUT interfacecontrol.interfaceenabled%TYPE,
                                                    lastupdated      OUT VARCHAR2,
                                                    updatedby        OUT interfacecontrol.interfacename%TYPE) AS
BEGIN
  SELECT tbmcsemail, tbmcstimer
    INTO tbmcsemail, tbmcstimer
    FROM emocconfig
   WHERE emocconfigid = 0;

  SELECT interfaceenabled,
         TO_CHAR(lastupdate, 'MM/DD/YYYY HH24:MI:SS'),
         (SELECT fullname
            FROM users
           WHERE users.userid = interfacecontrol.lastupdateby)
    INTO interfaceenabled, lastupdated, updatedby
    FROM interfacecontrol
   WHERE TRIM(interfacename) = TRIM(interfacenamein);
END get_interfacecontrolrec;
 
 
 
 
 
 
 
 
@
