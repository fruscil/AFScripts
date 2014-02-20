--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_WRITEUPS" (archdate DATE)
AS
   CURSOR pcursor
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
       WHERE correctedtime < archdate;

   prec   pcursor%ROWTYPE;
BEGIN
   OPEN pcursor;

   FETCH pcursor
    INTO prec;

   WHILE pcursor%FOUND
   LOOP
      INSERT INTO emocaux.writeups
                  (writeupid, writeuptime, jcn,
                   corrected, correctedtime, pacer,
                   etic, aircraftid, symbol, wuc,
                   discrepancy, correctiveaction
                  )
           VALUES (prec.writeupid, prec.writeuptime, prec.jcn,
                   prec.corrected, prec.correctedtime, prec.pacer,
                   prec.etic, prec.aircraftid, prec.symbol, prec.wuc,
                   prec.discrepancy, prec.correctiveaction
                  );

/*
      INSERT INTO emocaux.micap
         SELECT micapid, writeupid, documentnumber, part, eta, aircraftid,
                SYSDATE AS archivedate
           FROM micap
          WHERE writeupid = prec.writeupid;

      DELETE FROM micap
            WHERE writeupid = prec.writeupid;*/
      DELETE FROM writeups
            WHERE writeupid = prec.writeupid;

      FETCH pcursor
       INTO prec;
   END LOOP;

   CLOSE pcursor;

--Commit only if both successful
   COMMIT;
END;
 
 
 
 
 
 
 
 
@
