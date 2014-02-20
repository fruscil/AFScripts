--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETAIRCRAFTUNIT" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   aircraftidin         aircraft.aircraftid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor
    FOR
       SELECT aircraft.tailnumber, aircraft.shorttailnumber, aircraft.countrycode,
              aircraft.misequipid, squadrons.squadronname,
              squadrons.shortname, squadrons.wingid, wings.wingname,
              wings.unitid, wings.elc
         FROM aircraft, squadrons, wings
        WHERE aircraft.squadronid = squadrons.squadronid(+)
          AND squadrons.wingid = wings.wingid(+)
          AND aircraft.aircraftid = aircraftidin;
END spgetaircraftunit;
 
 
 
 
 
 
 
 
@
