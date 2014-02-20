--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REMOVE_AIRCRAFT_WEAPONSLOAD" (
   aircraftidin   weaponsload.aircraftid%TYPE
)
AS
   CURSOR mycur
   IS
      SELECT loadid, station,
             (SELECT ordnance
                FROM ordnance
               WHERE ordnanceid = weaponsload.ordnanceid) AS ordnance,
             weaponsnumber, aircraftid,
             (SELECT weaponsclass
                FROM weaponsclass
               WHERE weaponsclassid =
                                   weaponsload.weaponsclassid)
                                                             AS weaponsclass,
             (SELECT firesymbol
                FROM firesymbols
               WHERE firesymbolid = weaponsload.firesymbolid) AS firesymbol
        FROM weaponsload
       WHERE aircraftid = aircraftidin;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO emocaux.weaponsload
                  (loadid, station, ordnance,
                   weaponsnumber, aircraftid,
                   weaponsclass, firesymbol
                  )
           VALUES (myrec.loadid, myrec.station, myrec.ordnance,
                   myrec.weaponsnumber, myrec.aircraftid,
                   myrec.weaponsclass, myrec.firesymbol
                  );

      FETCH mycur
       INTO myrec;
   END LOOP;

   CLOSE mycur;

   DELETE FROM weaponsload
         WHERE aircraftid = aircraftidin;
END remove_aircraft_weaponsload;

 
 
 
 
 
 
 
 
@
