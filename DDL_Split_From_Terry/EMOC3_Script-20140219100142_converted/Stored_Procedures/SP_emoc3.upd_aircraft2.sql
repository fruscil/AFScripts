--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_AIRCRAFT2" (
   aircraftidin     IN   aircraft.aircraftid%TYPE,
   squadronidin          aircraft.squadronid%TYPE,
   flightidin            aircraft.flightid%TYPE,
   currentmdsidin        INTEGER,
   newmdsidin            INTEGER,
   locationidin          INTEGER,
   tailnumberin          aircraft.tailnumber%TYPE,
   aircraftyearin        aircraft.aircraftyear%TYPE,
   equipidin             aircraft.misequipid%TYPE,
   serialnumberin        aircraft.serialnumber%TYPE,
   countrycodein         aircraft.countrycode%TYPE
)
AS
BEGIN
   IF (currentmdsidin <> newmdsidin)
   THEN
      changemds (aircraftidin, currentmdsidin, newmdsidin);
   END IF;

   UPDATE aircraft
      SET squadronid = squadronidin,
          flightid = flightidin,
          aircraftmdsid = newmdsidin,
          locationid = locationidin,
          tailnumber = tailnumberin,
          shorttailnumber = tailnumberin,
          aircraftyear = aircraftyearin,
          misequipid = equipidin,
          serialnumber = serialnumberin,
          countrycode = countrycodein
    WHERE aircraft.aircraftid = aircraftidin;
END upd_aircraft2;
 
 
 
 
 
 
 
 
@
