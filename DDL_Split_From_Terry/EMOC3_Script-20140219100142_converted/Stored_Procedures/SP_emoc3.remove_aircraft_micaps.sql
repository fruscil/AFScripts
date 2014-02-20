--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REMOVE_AIRCRAFT_MICAPS" (
   aircraftidin   micap.aircraftid%TYPE
)
AS
   CURSOR mycur
   IS
      SELECT micapid, documentnumber, nomenclature, estimateddeliverydate, aircraftid
        FROM micap
       WHERE aircraftid = aircraftidin;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO emocaux.micap
                  (micapid, documentnumber,
                   nomenclature, estimateddeliverydate, aircraftid
                  )
           VALUES (myrec.micapid, myrec.documentnumber,
                   myrec.nomenclature, myrec.estimateddeliverydate, myrec.aircraftid
                  );

      FETCH mycur
       INTO myrec;
   END LOOP;

   CLOSE mycur;

   DELETE FROM micap
         WHERE aircraftid = aircraftidin;
END remove_aircraft_micaps;
 
 
 
 
 
 
 
 
@
