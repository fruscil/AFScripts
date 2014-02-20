--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_AIRCRAFT" (
   aircraftidin   IN   aircraft.aircraftid%TYPE,
   squadronidin        aircraft.squadronid%TYPE,
   flightidin          aircraft.flightid%TYPE
)
AS
BEGIN
   UPDATE aircraft
      SET squadronid = squadronidin,
          flightid = flightidin
    WHERE aircraft.aircraftid = aircraftidin;
END upd_aircraft;

 
 
 
 
 
 
 
 
@
