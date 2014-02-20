--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AIRCRAFT_BY_SQUADRON" (
   squadronidin         aircraft.squadronid%TYPE,
   p_cursor       OUT   emoc_types.emoc_cursor
)
AS
BEGIN
   OPEN p_cursor FOR
      SELECT aircraftid, tailnumber, aircraftyear, aircraftmdsid,
             serialnumber, misequipid, flightid, homeenterpriselocationcode,
             (SELECT (RTRIM (aircraftmds) || ' / ' || LTRIM (blocknumber)
                     )
                FROM aircraftmds
               WHERE aircraftmds.aircraftmdsid = ac.aircraftmdsid)
                                                                AS mds_block,
             (SELECT flightname
                FROM flights
               WHERE flights.flightid = ac.flightid) AS flightname,
             squadronid, countrycode, locationid,
             (SELECT locationcode
                FROM locations
               WHERE locationid = ac.locationid) AS locationcode
        FROM aircraft ac
       WHERE squadronid = squadronidin;
END get_aircraft_by_squadron;
 
 
 
 
 
 
 
 
@
