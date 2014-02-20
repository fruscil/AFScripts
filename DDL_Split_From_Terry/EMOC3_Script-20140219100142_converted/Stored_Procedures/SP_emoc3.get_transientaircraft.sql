--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_TRANSIENTAIRCRAFT" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
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
               locationcode, locationid, aircraft.squadronid,
               squadrons.shortname, wings.wingid, wings.wingname,
               squadrons.timeoffsetfrommoc, wings.elc, wings.unitid
          FROM aircraft, squadrons, wings
         WHERE aircraft.squadronid = squadrons.squadronid
           AND squadrons.wingid = wings.wingid
           AND (   squadrons.shortname = 'TRANS'
                OR squadrons.squadronname = 'TRANSIENT'
               )
      ORDER BY tailnumber;
END get_transientaircraft;
 
 
 
 
 
 
 
 
@
