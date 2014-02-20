--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."AIRCRAFT_CHANGE_SQUADRON" (
   aircraftidin   aircraft.aircraftid%TYPE,
   squadronidin   aircraft.squadronid%TYPE
)
AS
BEGIN
   UPDATE aircraft
      SET squadronid = squadronidin,
          flightid = NULL
    WHERE aircraft.aircraftid = aircraftidin;
END aircraft_change_squadron;

 
 
 
 
 
 
 
 
@
