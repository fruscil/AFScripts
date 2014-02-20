--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AIRCRAFT_BY_ID" (
   aircraftidin         aircraft.aircraftid%TYPE,
   p_cursor       OUT   emoc_types.emoc_cursor
)
AS
BEGIN
   OPEN p_cursor FOR
      SELECT aircraftid, tailnumber, shorttailnumber, serialnumber,
             aircraftyear, misequipid, aircraft.squadronid, crewchiefid,
             lastflowntime, fuelstatustime, fuelstatusid, locationid,
             locationcode, phasedate, etic, fcf, ocf, qvi, firstofficial,
             secondofficial, statuscodeid, statuscodetime, possessionid,
             priority, conditioncodeid, flightid, conditioncodetime,
             arm_dearm, multiconfigid, statusnarrative, localoption,
             assignmentcmd, assignmentstatus, reportdesig, relatedmds,
             commandcode, hangerqueenstatus, aircraft.aircraftmdsid,
             crewchieflastupdated, serialnumberlastupdated,
             impoundslastupdated, hqstatuslastupdated, teststatuslastupdated,
             phasedatelastupdated, possessioncodelastupdated,
             eticlastupdated, prioritylastupdated, combatsclid, chaff, flare,
             hotguns, weaponsstatustime, sqpreselect, statuscodelastupdated,
             locationlastupdated, fuelstatuslastupdated, localconfigid,
             fuelrequestedtime, fueldeliverytime, phaseunits, aircraftwucid,
             weaponsstatuslastupdated, conditioncodelastupdated,
             acft_config_id, aircraft.camsinit, remarksid, fuelload,
             possdatetime, assignstatdatetime, assigncomdatetime,
             airconfigdatetime, repdesigndatetime, eticdatetime,
             assignstatuslastupdated, assigncommandlastupdated,
             squadronlastupdated, mdslastupdated, repdesignlastupdated,
             remarkslastupdated, staloccodeid, geoloccode, firesymbolid,
             airconfigidlastupdated, wuclastupdated, tmeflownsincephasedate,
             acftmdstypecd, squadrons.squadronname, aircraft.countrycode,
             aircraft.mocid
        FROM aircraft, aircraftmds, squadrons
       WHERE aircraft.aircraftid = aircraftidin
         AND aircraftmds.aircraftmdsid = aircraft.aircraftmdsid
         AND aircraft.squadronid = squadrons.squadronid;
END get_aircraft_by_id;
 
 
 
 
 
 
 
 
@
