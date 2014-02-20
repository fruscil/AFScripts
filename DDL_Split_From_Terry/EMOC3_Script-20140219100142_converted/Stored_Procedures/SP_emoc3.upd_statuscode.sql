--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_STATUSCODE" (
   statuscodein          statuscode.statuscode%TYPE,
   ordernumberin         statuscode.ordernumber%TYPE,
   iconnamein            statuscode.iconname%TYPE,
   defaultstatuscodein   statuscode.defaultstatuscode%TYPE,
   lastflownin           statuscode.lastflown%TYPE,
   flyingin              statuscode.flying%TYPE,
   takeoffin             statuscode.takeoff%TYPE,
   statuscodelabelin     statuscode.statuscodelabel%TYPE,
   allowsortieupdatein   statuscode.allowsortieupdate%TYPE,
   statuscodeidin        statuscode.statuscodeid%TYPE
)
AS
   counter1     INTEGER;
   defaultval   INTEGER;
BEGIN
   defaultval := defaultstatuscodein;

   IF defaultval = 0
   THEN
      SELECT COUNT (*)
        INTO counter1
        FROM statuscode
       WHERE defaultstatuscode = 1 AND statuscodeid != statuscodeidin;

      IF counter1 = 0
      THEN
         defaultval := 1;
      END IF;
   END IF;

   UPDATE statuscode
      SET statuscode = statuscodein,
          ordernumber = ordernumberin,
          iconname = iconnamein,
          defaultstatuscode = defaultval,
          lastflown = lastflownin,
          flying = flyingin,
          takeoff = takeoffin,
          statuscodelabel = statuscodelabelin,
          allowsortieupdate = allowsortieupdatein
    WHERE statuscodeid = statuscodeidin;
END upd_statuscode;

 
 
 
 
 
 
 
 
@
