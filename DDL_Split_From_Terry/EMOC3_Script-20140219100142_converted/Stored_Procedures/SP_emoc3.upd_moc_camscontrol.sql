--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_MOC_CAMSCONTROL" (interfaceenabledin interfacecontrol.interfaceenabled%TYPE,
                                                updatedbyin        interfacecontrol.lastupdateby%TYPE,
                                                interfacecontrolid OUT interfacecontrol.interfacecontrolid%TYPE,
                                                mocidin            interfacecontrol.mocid%TYPE) AS
  currentstatusin VARCHAR2(20);
BEGIN
  currentstatusin := 'DISABLED';

  SELECT interfacecontrolid
    INTO interfacecontrolid
    FROM interfacecontrol
   WHERE interfacename = 'CAMS'
     AND mocid = mocidin;

  IF interfaceenabledin = 1 THEN
    currentstatusin := 'ENABLED';
  END IF;

  UPDATE interfacecontrol
     SET interfaceenabled = interfaceenabledin,
         currentstatus    = currentstatusin,
         lastupdate       = SYSDATE,
         lastupdateby     = updatedbyin
   WHERE TRIM(interfacename) = 'CAMS'
     AND mocid = mocidin;
END upd_moc_camscontrol;
 
 
 
 
 
 
 
 
@
