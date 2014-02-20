--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_CAMSCONTROL" (interfaceenabledin interfacecontrol.interfaceenabled%TYPE,
                                            updatedbyin        interfacecontrol.lastupdateby%TYPE,
                                            interfacecontrolid OUT interfacecontrol.interfacecontrolid%TYPE) AS
  currentstatusin VARCHAR2(20);
BEGIN
  currentstatusin := 'DISABLED';

  SELECT interfacecontrolid
    INTO interfacecontrolid
    FROM interfacecontrol
   WHERE interfacename = 'CAMS';

  IF interfaceenabledin = 1 THEN
    currentstatusin := 'ENABLED';
  END IF;

  UPDATE interfacecontrol
     SET interfaceenabled = interfaceenabledin,
         currentstatus    = currentstatusin,
         lastupdate       = SYSDATE,
         lastupdateby     = updatedbyin
   WHERE TRIM(interfacename) = 'CAMS';
END upd_camscontrol;
 
 
 
 
 
 
 
 
@
