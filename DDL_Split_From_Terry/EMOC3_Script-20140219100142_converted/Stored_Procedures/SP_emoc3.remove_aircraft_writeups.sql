--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REMOVE_AIRCRAFT_WRITEUPS" (
   aircraftidin   writeups.aircraftid%TYPE
)
AS
   CURSOR mycur
   IS
      SELECT writeupid, writeuptime, jcn, corrected, correctedtime, pacer,
             etic, aircraftid,
             (SELECT symbol
                FROM symbols
               WHERE symbolid = writeups.symbolid) AS symbol,
             (SELECT wuccode
                FROM wuc
               WHERE wucid = writeups.wucid) AS wuc, discrepancy,
             correctiveaction
        FROM writeups
       WHERE aircraftid = aircraftidin;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO emocaux.writeups
                  (writeupid, writeuptime, jcn,
                   corrected, correctedtime, pacer,
                   etic, aircraftid, symbol, wuc,
                   discrepancy, correctiveaction
                  )
           VALUES (myrec.writeupid, myrec.writeuptime, myrec.jcn,
                   myrec.corrected, myrec.correctedtime, myrec.pacer,
                   myrec.etic, myrec.aircraftid, myrec.symbol, myrec.wuc,
                   myrec.discrepancy, myrec.correctiveaction
                  );

      FETCH mycur
       INTO myrec;
   END LOOP;

   CLOSE mycur;

   DELETE FROM writeups
         WHERE aircraftid = aircraftidin;
END remove_aircraft_writeups;

 
 
 
 
 
 
 
 
@
