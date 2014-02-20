--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEWRITEUPWUC" (
   aircraftidin   writeups.aircraftid%TYPE,
   wucidin        writeups.wucid%TYPE
)
AS
BEGIN
   UPDATE writeups
      SET writeups.wucid = wucidin
    WHERE ((writeups.aircraftid = aircraftidin) AND (pacer = 1));
END spupdatewriteupwuc;
 
 
 
 
 
 
 
 
@
