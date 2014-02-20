--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_INTERFACECONTROLREC" (interfacenamein    interfacecontrol.interfacename%TYPE,
                                                    interfaceenabledin interfacecontrol.interfaceenabled%TYPE,
                                                    lastupdatebyin     interfacecontrol.lastupdateby%TYPE,
                                                    currentstatusin    interfacecontrol.currentstatus%TYPE) AS
  interfacecontrolid INTEGER;
  previousstatus     VARCHAR2(10);
  prevenabled        INTEGER;
BEGIN
  SELECT interfacecontrolid, currentstatus, interfaceenabled
    INTO interfacecontrolid, previousstatus, prevenabled
    FROM interfacecontrol
   WHERE interfacename = interfacenamein;

  IF previousstatus != currentstatusin OR prevenabled != interfaceenabledin THEN
    INSERT INTO interfacehistory
      (interfacecontrolid,
       statuschangeby,
       statuschangetime,
       currentstatus,
       currentenabled)
    VALUES
      (interfacecontrolid,
       lastupdatebyin,
       SYSDATE,
       currentstatusin,
       interfaceenabledin);
  END IF;

  UPDATE interfacecontrol
     SET lastupdateby     = lastupdatebyin,
         interfaceenabled = interfaceenabledin,
         lastupdate       = SYSDATE,
         currentstatus    = currentstatusin
   WHERE TRIM(interfacename) = TRIM(interfacenamein);
END upd_interfacecontrolrec;
 
 
 
 
 
 
 
 
@
