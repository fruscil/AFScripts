--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_AIRCRAFT" (
   tailnumberin     VARCHAR,
   squadronnamein   VARCHAR,
   mocidin          NUMBER
)
AS
   counter       INTEGER;
   new_id        INTEGER;
   squadron_id   INTEGER;
BEGIN
   SELECT COUNT (aircraftid)
     INTO counter
     FROM aircraft, squadrons
    WHERE (    (aircraft.squadronid = squadrons.squadronid)
           AND (UPPER (squadrons.squadronname) = UPPER (squadronnamein))
           AND (aircraft.tailnumber = tailnumberin)
          );

   SELECT seq_aircraft.NEXTVAL
     INTO new_id
     FROM aircraft;

   SELECT squadronid
     INTO squadron_id
     FROM squadrons
    WHERE squadrons.squadronname = squadronnamein;

   IF (counter = 0)
   THEN
      INSERT INTO aircraft
                  (aircraftid, tailnumber, squadronid, mocid
                  )
           VALUES (new_id, tailnumberin, squadron_id, mocidin
                  );
   END IF;
END add_moc_aircraft;

 
 
 
 
 
 
 
 
@
