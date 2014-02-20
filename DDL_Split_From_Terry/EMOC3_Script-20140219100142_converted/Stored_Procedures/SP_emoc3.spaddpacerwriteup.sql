--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPADDPACERWRITEUP" (
   aircraftidin        aircraft.aircraftid%TYPE,
   eventnumberin       writeups.jcn%TYPE,
   writeuptimein       VARCHAR,
   eticin              writeups.etic%TYPE,
   wucidin             writeups.wucid%TYPE,
   discrepancyin       writeups.discrepancy%TYPE
)
AS
   row_id   INTEGER;
BEGIN
--Can only have one pacer write-up per aircraft.
   UPDATE writeups
       SET pacer = 0
   WHERE aircraftid = aircraftidin;

   SELECT NVL (MAX (writeups.writeupid), 0)
     INTO row_id
     FROM writeups;

   INSERT INTO writeups
               (writeupid, writeuptime,
                jcn, pacer, etic, aircraftid,corrected,
                wucid, discrepancy
               )
        VALUES (row_id + 1, TO_DATE (writeuptimein, 'MM/DD/YYYY HH24:MI:SS'),
                eventnumberin, 1, eticin, aircraftidin,0,
                wucidin, discrepancyin
               );
END spaddpacerwriteup;
 
 
 
 
 
 
 
 
@
