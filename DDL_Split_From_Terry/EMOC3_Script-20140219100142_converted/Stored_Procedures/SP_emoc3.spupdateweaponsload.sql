--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEWEAPONSLOAD" (
   aircraftidin       aircraft.aircraftid%TYPE,
   stationin          aircraft.combatsclid%TYPE,
   ordnanceidin       aircraft.chaff%TYPE,
   weaponsnumberin    aircraft.flare%TYPE,
   weaponsclassidin   weaponsload.weaponsclassid%TYPE,
   firesymbolidin     weaponsload.firesymbolid%TYPE
)
AS
   counter   INTEGER;
   row_id    INTEGER;
BEGIN
   SELECT COUNT (*)
     INTO counter
     FROM weaponsload
    WHERE (    (weaponsload.aircraftid = aircraftidin)
           AND (weaponsload.station = stationin)
          );

   SELECT NVL (MAX (weaponsload.loadid), 0)
--SELECT MAX(SQUADRON_SORT_ORDER.SQSORTORDERID)
   INTO   row_id
     FROM weaponsload;

   IF (counter = 0)
   THEN
      INSERT INTO weaponsload
                  (loadid, aircraftid, station, ordnanceid,
                   weaponsnumber, firesymbolid, weaponsclassid
                  )
           VALUES (row_id + 1, aircraftidin, stationin, ordnanceidin,
                   weaponsnumberin, firesymbolidin, weaponsclassidin
                  );
   ELSE
      UPDATE weaponsload
         SET weaponsload.ordnanceid = ordnanceidin,
             weaponsload.weaponsnumber = weaponsnumberin,
             weaponsload.weaponsclassid = weaponsclassidin,
             weaponsload.firesymbolid = firesymbolidin
       WHERE ((aircraftid = aircraftidin) AND (station = stationin));
   END IF;
END spupdateweaponsload;

 
 
 
 
 
 
 
 
@
