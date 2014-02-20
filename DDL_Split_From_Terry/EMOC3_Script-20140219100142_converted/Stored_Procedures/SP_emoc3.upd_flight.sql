--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_FLIGHT" (
   flightnamein     flights.flightname%TYPE,
   squadronidin     flights.squadronid%TYPE,
   workcenteridin   flights.workcenterid%TYPE,
   lastupdatebyin   flights.lastupdateby%TYPE,
   flightidin       flights.flightid%TYPE
)
AS
BEGIN
   UPDATE flights
      SET flightname = flightnamein,
          squadronid = squadronidin,
          workcenterid = workcenteridin,
          lastupdate = SYSDATE,
          lastupdateby = lastupdatebyin
    WHERE flightid = flightidin;
END upd_flight;

 
 
 
 
 
 
 
 
@
