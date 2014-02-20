--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETALLAIRCRAFT" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT aircraft.aircraftid, aircraft.aircraftmdsid,
             aircraft.countrycode, aircraftmds.aircraftmds,
             aircraftmds.numberofengines, aircraftmds.numberofstations,
             aircraftmds.phaseunit, aircraftmds.timebetweenphase,
             aircraftmds.acftmdstypecd, aircraft.aircraftwucid, wuc.wuccode,
             aircraft.aircraftyear, aircraft.arm_dearm, aircraft.chaff,
             aircraft.combatsclid, combatscls.combatscl,
             aircraft.conditioncodeid, aircraft.statuswuclcn,
             conditioncodes.conditioncode, conditioncodes.condstatid,
             conditioncolor.colorvalue conditioncolorvalue,
             conditioncolor.fontcolor conditionfontcolor,
             TO_CHAR
                 (aircraft.conditioncodelastupdated,
                  'MM/DD/YYYY HH24:MI:SS'
                 ) conditioncodelastupdated,
             aircraft.crewchiefid, crewchiefs.crewchief, crewchiefs.picture,
             crewchiefs.rankid, aircraft.crewchieflastupdated, aircraft.etic,
             TO_CHAR (aircraft.eticlastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) eticlastupdated,
             aircraft.fcf, aircraft.firesymbolid, firesymbols.firesymbol,
             aircraft.firstofficial, aircraft.flare, aircraft.flightid,
             flights.flightname,
             TO_CHAR (aircraft.fueldeliverytime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) fueldeliverytime,
             aircraft.fuelload,
             TO_CHAR (aircraft.fuelrequestedtime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) fuelrequestedtime,
             aircraft.fuelstatusid, fuel.fuelstatus, fuel.fueldescription,
             TO_CHAR (aircraft.fuelstatustime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) fuelstatustime,
             fuelcolor.colorvalue fuelcolorvalue,
             fuelcolor.fontcolor fuelfontcolor,
             TO_CHAR (aircraft.fuelstatuslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) fuelstatuslastupdated,
             aircraft.hangerqueenstatus, hanger_queen_code.hqcode,
             aircraft.hotguns,
             TO_CHAR (aircraft.hqstatuslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) hqstatuslastupdated,
             TO_CHAR (aircraft.impoundslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) impoundslastupdated,
             TO_CHAR (aircraft.lastflowntime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) lastflowntime,
             aircraft.localconfigid, aircraft.localoption,
             aircraft.locationid, locations.locationcode,
             locations.locationname,
             TO_CHAR (aircraft.locationlastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) locationlastupdated,
             TO_CHAR (aircraft.mdslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) mdslastupdated,
             aircraft.multiconfigid, aircraft.ocf,
             TO_CHAR (aircraft.phasedate, 'MM/DD/YYYY HH24:MI:SS') phasedate,
             TO_CHAR (aircraft.phasedatelastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) phasedatelastupdated,
             aircraft.phaseunits,
             TO_CHAR (aircraft.possdatetime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) possdatetime,
             TO_CHAR
                (aircraft.possessioncodelastupdated,
                 'MM/DD/YYYY HH24:MI:SS'
                ) possessioncodelastupdated,
             aircraft.possessionid, possessions.possessioncode,
             aircraft.priority,
             TO_CHAR (aircraft.prioritylastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) prioritylastupdated,
             aircraft.qvi, aircraft.remarksid, remarks.remarks,
             TO_CHAR (aircraft.remarkslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) remarkslastupdated,
             aircraft.secondofficial, aircraft.serialnumber,
             TO_CHAR
                   (aircraft.serialnumberlastupdated,
                    'MM/DD/YYYY HH24:MI:SS'
                   ) serialnumberlastupdated,
             aircraft.shorttailnumber, aircraft.statuscodeid,
             statuscode.statuscode, statuscode.iconname,
             aircraft.sqpreselect, aircraft.squadronid,
             squadrons.squadronname, squadrons.wingid,
             squadroncolor.colorvalue squadroncolorvalue,
             squadroncolor.fontcolor squadronfontcolor, wings.wingname,
             wings.unitid, wings.elc,
             TO_CHAR (aircraft.squadronlastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) squadronlastupdated,
             aircraft.staloccodeid, aircraft.statuscodeid,
             stationloccodes.stationloc, stationloccodes.stalocnarrative,
             TO_CHAR (aircraft.statuscodelastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) statuscodelastupdated,
             TO_CHAR (aircraft.statuscodetime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) statuscodetime,
             TO_CHAR (aircraft.teststatuslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) teststatuslastupdated,
             aircraft.tmeflownsincephasedate,
             TO_CHAR
                 (aircraft.weaponsstatuslastupdated,
                  'MM/DD/YYYY HH24:MI:SS'
                 ) weaponsstatuslastupdated,
             TO_CHAR (aircraft.wuclastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) wuclastupdated,
             (SELECT COUNT (*)
                FROM customdatamds
               WHERE aircraftmdsid = aircraft.aircraftmdsid) AS cdcount,
             (SELECT COUNT (*)
                FROM aircraftcustomdata
               WHERE aircraftid = aircraft.aircraftid) AS aircraftcdcount,
             (SELECT statusimageid
                FROM mocstatusicons
               WHERE mocstatusicons.missiondesignseries =
                                          aircraftmds.aircraftmds
                 AND aircraftmds.aircraftmdsid = aircraft.aircraftmdsid
                 AND mocstatusicons.statuscode = statuscode.statuscode
                 AND mocstatusicons.mocid = aircraft.mocid
                 AND icon_type = 'b'
                 AND ROWNUM <= 1) AS bimageid,
             (SELECT statusimageid
                FROM mocstatusicons
               WHERE mocstatusicons.missiondesignseries =
                                          aircraftmds.aircraftmds
                 AND aircraftmds.aircraftmdsid = aircraft.aircraftmdsid
                 AND mocstatusicons.statuscode = statuscode.statuscode
                 AND mocstatusicons.mocid = aircraft.mocid
                 AND icon_type = 'w'
                 AND ROWNUM <= 1) AS wimageid,
             (SELECT COUNT (*)
                FROM micap
               WHERE (   (aircraftid = aircraft.aircraftid)
                      OR (    equipmentid = aircraft.misequipid
                          AND enterpriselocationcode = wings.elc
                          AND unitid = wings.unitid
                          AND squadrons.squadronid = aircraft.squadronid
                          AND squadrons.wingid = wings.wingid
                         )
                     )) AS micapcount
        FROM aircraft,
             aircraftmds,
             wuc,
             combatscls,
             conditioncodes,
             colors conditioncolor,
             conditionstatus,
             crewchiefs,
             firesymbols,
             flights,
             fuel,
             colors fuelcolor,
             hanger_queen_code,
             locations,
             possessions,
             remarks,
             statuscode,
             squadrons,
             wings,
             colors squadroncolor,
             stationloccodes
       WHERE aircraft.aircraftmdsid = aircraftmds.aircraftmdsid(+)
         AND aircraft.aircraftwucid = wuc.wucid(+)
         AND aircraft.combatsclid = combatscls.combatsclid(+)
         AND aircraft.conditioncodeid = conditioncodes.condcodeid(+)
         AND conditioncodes.condstatid = conditionstatus.condstatid(+)
         AND conditionstatus.colorid = conditioncolor.colorid(+)
         AND aircraft.crewchiefid = crewchiefs.crewchiefid(+)
         AND aircraft.firesymbolid = firesymbols.firesymbolid(+)
         AND aircraft.flightid = flights.flightid(+)
         AND aircraft.fuelstatusid = fuel.fuelstatusid(+)
         AND aircraft.hangerqueenstatus = hanger_queen_code.hqcodeid(+)
         AND fuel.colorid = fuelcolor.colorid(+)
         AND aircraft.locationid = locations.locationid(+)
         AND aircraft.possessionid = possessions.possessionid(+)
         AND aircraft.remarksid = remarks.remarksid(+)
         AND aircraft.squadronid = squadrons.squadronid(+)
         AND squadrons.colorid = squadroncolor.colorid(+)
         AND squadrons.wingid = wings.wingid(+)
         AND aircraft.statuscodeid = statuscode.statuscodeid(+)
         AND aircraft.staloccodeid = stationloccodes.staloccodeid(+);
END spgetallaircraft;
 
 
 
 
 
 
 
 
@
