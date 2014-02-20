--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_INTERFACECONTROL" (interfacecontrolidin interfacecontrol.interfacecontrolid%TYPE,
                                                 interfaceenabledin   interfacecontrol.interfaceenabled%TYPE,
                                                 currentstatusin      interfacecontrol.currentstatus%TYPE,
                                                 lastupdatebyin       interfacecontrol.lastupdateby%TYPE,
                                                 lastupdatein         interfacecontrol.lastupdate%TYPE) AS
  previousstatus VARCHAR2(10);
  prevenabled    INTEGER;
BEGIN
  SELECT currentstatus, interfaceenabled
    INTO previousstatus, prevenabled
    FROM interfacecontrol
   WHERE interfacecontrolid = interfacecontrolidin;

  IF previousstatus != currentstatusin OR prevenabled != interfaceenabledin THEN
    INSERT INTO interfacehistory
      (interfacecontrolid,
       statuschangeby,
       statuschangetime,
       currentstatus,
       currentenabled)
    VALUES
      (interfacecontrolidin,
       lastupdatebyin,
       lastupdatein,
       currentstatusin,
       interfaceenabledin);
  END IF;

  UPDATE interfacecontrol
     SET currentstatus = currentstatusin,
         lastupdateby  = lastupdatebyin,
         lastupdate    = lastupdatein
   WHERE interfacecontrolid = interfacecontrolidin;
END upd_interfacecontrol;
 
 
 
 
 
 
 
 
@
