--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETAIRCRAFTMISSIONSTATUS" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   aircraftidin         aircraft.aircraftid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT squadrons.squadronname, aircraft.tailnumber,
             aircraft.statuscodeid,
             TO_CHAR (aircraft.statuscodetime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "STATUSCODETIME",
             TO_CHAR (aircraft.statuscodelastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "STATUSCODELASTUPDATED",
             aircraft.fuelstatusid,
             TO_CHAR (aircraft.fuelstatustime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "FUELSTATUSTIME",
             TO_CHAR (aircraft.fuelstatuslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "FUELSTATUSLASTUPDATED",
             TO_CHAR (aircraft.lastflowntime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "LASTFLOWNTIME",
             aircraft.locationid, aircraft.locationcode,
             locations.locationname,
             TO_CHAR (aircraft.locationlastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "LOCATIONLASTUPDATED",
             statusnarrative, localconfigid, multiconfigid, localoption,
             numberofengines, fuelload,
             TO_CHAR (aircraft.fuelrequestedtime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "FUELREQUESTEDTIME",
             TO_CHAR (aircraft.fueldeliverytime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "FUELDELIVERYTIME",
             fuel.fuelstatus, fuel.fueldescription,
             (SELECT aircraftmds
                FROM aircraftmds
               WHERE aircraft.aircraftmdsid =
                                     aircraftmds.aircraftmdsid)
                                                              AS aircraftmds,
             aircraft.staloccodeid, stationloccodes.stationloc,
             aircraft.geoloccode,
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
             squadrons,
             statuscode,
             locations,
             fuel,
             aircraftmds,
             stationloccodes,
             wings
       WHERE (    (aircraft.aircraftid = aircraftidin)
              AND (aircraft.squadronid = squadrons.squadronid(+))
              AND (aircraft.statuscodeid = statuscode.statuscodeid(+))
              AND (aircraft.locationid = locations.locationid(+))
              AND (aircraft.fuelstatusid = fuel.fuelstatusid(+))
              AND (aircraft.aircraftmdsid = aircraftmds.aircraftmdsid(+))
              AND (aircraft.staloccodeid = stationloccodes.staloccodeid(+))
              AND (squadrons.wingid = wings.wingid(+))
             );
END spgetaircraftmissionstatus;
 
 
 
 
 
 
 
 
@
