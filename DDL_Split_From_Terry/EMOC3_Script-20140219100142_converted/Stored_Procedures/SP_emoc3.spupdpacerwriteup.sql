--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDPACERWRITEUP" (
   aircraftidin    aircraft.aircraftid%TYPE,
   writeuptimein   VARCHAR,
   eticin          writeups.etic%TYPE,
   wucidin         writeups.wucid%TYPE,
   discrepancyin   writeups.discrepancy%TYPE,
   writeupidin     writeups.writeupid%TYPE
)
AS
BEGIN
   UPDATE writeups
      SET etic = eticin,
          writeuptime = TO_DATE(writeuptimein, 'MM/DD/YYYY HH24:MI:SS'),
          corrected = 0,
          correctiveaction = '',
          pacer = 1,
          wucid = wucidin,
          discrepancy = discrepancyin
    WHERE writeupid = writeupidin;
END spupdpacerwriteup;

 
 
 
 
 
 
 
 
@
