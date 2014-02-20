--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_TBMCSCONTROL" (
   tbmcstimerin               emocconfig.tbmcstimer%TYPE,
   interfaceenabledin         interfacecontrol.interfaceenabled%TYPE,
   updatedbyin                interfacecontrol.lastupdateby%TYPE,
   interfacecontrolid   OUT   interfacecontrol.interfacecontrolid%TYPE,
   useridin                   interfacecontrol.interfaceuserid%TYPE,
   passwordin                 interfacecontrol.interfacepassword%TYPE
)
AS
   currentstatusin   VARCHAR2(20);
BEGIN
   currentstatusin := 'DISABLED';

   SELECT interfacecontrolid
     INTO interfacecontrolid
     FROM interfacecontrol
    WHERE interfacename = 'TBMCS-UL';

   UPDATE emocconfig
      SET tbmcstimer = tbmcstimerin
    WHERE emocconfigid = 0;

   IF interfaceenabledin = 1
   THEN
      currentstatusin := 'ENABLED';
   END IF;

   UPDATE interfacecontrol
      SET interfaceenabled = interfaceenabledin,
          currentstatus = currentstatusin,
          lastupdate = SYSDATE,
          lastupdateby = updatedbyin,
          interfaceuserid = useridin,
          interfacepassword = emoc_security.encrypt(passwordin)
    WHERE TRIM (interfacename) = 'TBMCS-UL';
END upd_tbmcscontrol;
 
 
 
 
 
 
 
 
@
