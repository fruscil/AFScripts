--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETTBMCSAIRCRAFT" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          aircraft.mocid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT aircraft.aircraftid, aircraft.tailnumber,
             aircraftmds.acftmdstypecd, aircraftmds.blocknumber,
             aircraftmds.aircraftmds, aircraft.aircraftyear,
             (aircraft.aircraftyear || aircraft.tailnumber
             ) AS yearandtailnumber,
             aircraft.hotguns, combatscls.combatscl,
             conditioncodes.conditioncode, crewchiefs.crewchief,
             ranks.rankcode AS crewchiefrank, aircraft.etic,
             aircraft.fuelload, fuel.fuelstatus, fuel.fueldescription,
             TO_CHAR (aircraft.lastflowntime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) lastflowntime,
             locations.locationcode, locations.locationname,
             possessions.possessioncode, aircraft.priority, remarks.remarks,
             (SELECT wuc.wuccode
                FROM wuc
               WHERE aircraft.aircraftwucid = wuc.wucid) AS aircraftwuc,
             squadrons.squadronname, wings.wingname, wings.elc, wings.wingid,
             wings.unitid, stationloccodes.stationloc, aircraft.countrycode, aircraft.misequipid
        FROM aircraft,
             aircraftmds,
             combatscls,
             conditioncodes,
             crewchiefs,
             ranks,
             fuel,
             locations,
             possessions,
             remarks,
             statuscode,
             squadrons,
             wings,
             stationloccodes
       WHERE aircraft.mocid = mocidin
         AND aircraft.aircraftmdsid = aircraftmds.aircraftmdsid(+)
         AND aircraft.combatsclid = combatscls.combatsclid(+)
         AND aircraft.conditioncodeid = conditioncodes.condcodeid(+)
         AND aircraft.crewchiefid = crewchiefs.crewchiefid(+)
         AND crewchiefs.rankid = ranks.rankid(+)
         AND aircraft.fuelstatusid = fuel.fuelstatusid(+)
         AND aircraft.locationid = locations.locationid(+)
         AND aircraft.possessionid = possessions.possessionid(+)
         AND aircraft.remarksid = remarks.remarksid(+)
         AND aircraft.squadronid = squadrons.squadronid(+)
         AND squadrons.wingid = wings.wingid(+)
         AND aircraft.statuscodeid = statuscode.statuscodeid(+)
         AND aircraft.staloccodeid = stationloccodes.staloccodeid(+);
END spgettbmcsaircraft;
 
 
 
 
 
 
 
 
@
