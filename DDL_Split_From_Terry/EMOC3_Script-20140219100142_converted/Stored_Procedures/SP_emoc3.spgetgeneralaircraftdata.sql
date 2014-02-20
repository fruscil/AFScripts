--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETGENERALAIRCRAFTDATA" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   aircraftidin         aircraft.aircraftid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT aircraft.aircraftid, aircraft.tailnumber, aircraft.misequipid,
             aircraft.conditioncodeid, aircraft.aircraftyear, wings.unitid,
             locations.locationname, locations.locationcode, wings.elc,
             squadrons.wingid,
             TO_CHAR (aircraft.lastflowntime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "LASTFLOWNTIME",
             squadrons.squadronname, aircraftmds.numberofstations,
             aircraftmds.numberofengines, aircraftmds.aircraftmds,
             aircraftmds.aircraftmdsid, aircraftmds.acftmdstypecd,
             aircraft.statusstartdate, aircraft.statusstarttime,
             aircraft.staloccodeid, stationloccodes.stationloc, aircraft.countrycode,
    aircraft.missiondesignseries, aircraft.missiondesignseriesblock,
    aircraft.OWNINGWORKCENTER
        FROM aircraft,
             squadrons,
             locations,
             aircraftmds,
             wings,
             stationloccodes
       WHERE (    (aircraft.squadronid = squadrons.squadronid(+))
              AND (squadrons.wingid = wings.wingid(+))
              AND (aircraft.locationid = locations.locationid(+))
              AND (aircraft.aircraftmdsid = aircraftmds.aircraftmdsid(+))
              AND (aircraft.staloccodeid = stationloccodes.staloccodeid(+))
              AND (aircraftid = aircraftidin)
             );
END spgetgeneralaircraftdata;
 
 
 
 
 
 
 
 
@
