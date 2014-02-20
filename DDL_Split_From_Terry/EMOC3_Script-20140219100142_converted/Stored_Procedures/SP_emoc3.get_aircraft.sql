--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AIRCRAFT" (p_cursor OUT emoc_types.emoc_cursor)
AS
BEGIN
   OPEN p_cursor FOR
      SELECT   aircraftid, tailnumber, aircraftyear, aircraftmdsid,
               serialnumber, misequipid, flightid,
               (SELECT (RTRIM (aircraftmds) || ' / ' || LTRIM (blocknumber)
                       )
                  FROM aircraftmds
                 WHERE aircraftmds.aircraftmdsid = aircraft.aircraftmdsid)
                                                                AS mds_block,
               (SELECT flightname
                  FROM flights
                 WHERE flights.flightid = aircraft.flightid) AS flightname,
               locationcode, locationid
               squadronid
          FROM aircraft
      ORDER BY tailnumber;
END get_aircraft;
 
 
 
 
 
 
 
 
@
