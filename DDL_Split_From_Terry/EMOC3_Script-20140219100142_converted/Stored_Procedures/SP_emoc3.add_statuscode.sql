--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_STATUSCODE" (
   statuscodein                statuscode.statuscode%TYPE,
   ordernumberin               statuscode.ordernumber%TYPE,
   iconnamein                  statuscode.iconname%TYPE,
   defaultstatuscodein         statuscode.defaultstatuscode%TYPE,
   lastflownin                 statuscode.lastflown%TYPE,
   flyingin                    statuscode.flying%TYPE,
   takeoffin                   statuscode.takeoff%TYPE,
   statuscodelabelin           statuscode.statuscodelabel%TYPE,
   allowsortieupdatein         statuscode.allowsortieupdate%TYPE,
   statuscodeid          OUT   statuscode.statuscodeid%TYPE
)
AS
BEGIN
   SELECT seq_statuscode.NEXTVAL
     INTO statuscodeid
     FROM DUAL;

   INSERT INTO statuscode
               (statuscodeid, statuscode, ordernumber, iconname,
                defaultstatuscode, lastflown, flying, takeoff,
                statuscodelabel, allowsortieupdate
               )
        VALUES (statuscodeid, statuscodein, ordernumberin, iconnamein,
                defaultstatuscodein, lastflownin, flyingin, takeoffin,
                statuscodelabelin, allowsortieupdatein
               );
END add_statuscode;

 
 
 
 
 
 
 
 
@
