--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPINSERTWRITEUP" (
   aircraftidin        aircraft.aircraftid%TYPE,
   eventnumberin       writeups.jcn%TYPE,
   symbolidin          writeups.symbolid%TYPE,
   pacerin             writeups.pacer%TYPE,
   writeuptimein       VARCHAR,
   eticin              writeups.etic%TYPE,
   wucidin             writeups.wucid%TYPE,
   discrepancyin       writeups.discrepancy%TYPE,
   correctedin         writeups.corrected%TYPE,
   conditioncodeidin   aircraft.conditioncodeid%TYPE
)
AS
   row_id   INTEGER;
   tmpvar   INTEGER;
   wutime   DATE;
BEGIN
   SELECT COUNT (*)
     INTO tmpvar
     FROM writeups
    WHERE aircraftid = aircraftidin AND jcn = eventnumberin AND corrected = 0;

   IF (tmpvar = 0)
   THEN
      IF (pacerin = 1)
      THEN
         UPDATE writeups
            SET pacer = 0
          WHERE aircraftid = aircraftidin;
      END IF;

      IF (writeuptimein IS NULL)
      THEN
         wutime := SYSDATE;
      ELSE
         wutime := TO_DATE (writeuptimein, 'MM/DD/YYYY HH24:MI:SS');
      END IF;

      SELECT NVL (MAX (writeups.writeupid), 0)
        INTO row_id
        FROM writeups;

      INSERT INTO writeups
                  (writeupid, writeuptime, jcn, corrected, pacer,
                   etic, aircraftid, symbolid, wucid, discrepancy
                  )
           VALUES (row_id + 1, wutime, eventnumberin, correctedin, pacerin,
                   eticin, aircraftidin, symbolidin, wucidin, discrepancyin
                  );
   END IF;
END spinsertwriteup;
 
 
 
 
 
 
 
 
@
