--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETAIRCRAFTMAINTENANCESTATUS" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   aircraftidin         aircraft.aircraftid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT aircraft.tailnumber,
             TO_CHAR (aircraft.lastflowntime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "LASTFLOWNTIME",
             (SELECT crewchiefs.crewchief
                FROM crewchiefs
               WHERE aircraft.crewchiefid =
                                          crewchiefs.crewchiefid)
                                                                AS crewchief,
             aircraft.crewchiefid, ranks.rankcode, ranks.rankid,
             crewchiefs.picture, aircraft.fcf, aircraft.ocf, aircraft.qvi,
             aircraft.serialnumber,
             TO_CHAR (aircraft.phasedate,
                      'MM/DD/YYYY HH24:MI:SS') "PHASEDATE",
             aircraft.phaseunits, aircraft.firstofficial,
             aircraft.secondofficial, possessions.possessioncode,
             possessions.possessionid,
             TO_CHAR (aircraft.possdatetime,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "POSSDATETIME",
             aircraft.commandcode, aircraft.assignmentstatus,
             aircraft.assignstatdatetime, aircraft.assignmentcmd,
             aircraft.assigncomdatetime, aircraft.acft_config_id,
             aircraft.localconfigid, aircraft.multiconfigid,
             aircraft.localoption, aircraft.airconfigdatetime,
             aircraft.relatedmds, squadrons.squadronname,
    aircraft.MissionDesignSeries, aircraft.MissionDesignSeriesBlock,
             squadrons.squadronid, aircraftmds.aircraftmds,
             aircraftmds.blocknumber, aircraftmds.phaseunit,
             aircraftmds.timebetweenphase, aircraft.aircraftmdsid,
             conditioncodes.conditioncode, conditioncodes.condcodeid,
             aircraft.etic, aircraft.eticdatetime, hanger_queen_code.hqcode,
             hanger_queen_code.hqcodeid, aircraft.priority,
             aircraft.reportdesig, aircraft.repdesigndatetime,
             aircraft.tmeflownsincephasedate, aircraft.aircraftwucid,
             TO_CHAR (aircraft.crewchieflastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "CREWCHIEFLASTUPDATED",
             TO_CHAR (aircraft.teststatuslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "TESTSTATUSLASTUPDATED",
             TO_CHAR
                 (aircraft.serialnumberlastupdated,
                  'MM/DD/YYYY HH24:MI:SS'
                 ) "SERIALNUMBERLASTUPDATED",
             TO_CHAR (aircraft.phasedatelastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "PHASEDATELASTUPDATED",
             TO_CHAR (aircraft.impoundslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "IMPOUNDSLASTUPDATED",
             TO_CHAR
                (aircraft.possessioncodelastupdated,
                 'MM/DD/YYYY HH24:MI:SS'
                ) "POSSESSIONCODELASTUPDATED",
             TO_CHAR
                 (aircraft.assignstatuslastupdated,
                  'MM/DD/YYYY HH24:MI:SS'
                 ) "ASSIGNSTATUSLASTUPDATED",
             TO_CHAR
                (aircraft.assigncommandlastupdated,
                 'MM/DD/YYYY HH24:MI:SS'
                ) "ASSIGNCOMMANDLASTUPDATED",
             TO_CHAR
                   (aircraft.airconfigidlastupdated,
                    'MM/DD/YYYY HH24:MI:SS'
                   ) "AIRCONFIGIDLASTUPDATED",
             TO_CHAR (aircraft.squadronlastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "SQUADRONLASTUPDATED",
             TO_CHAR (aircraft.mdslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "MDSLASTUPDATED",
             TO_CHAR
                (aircraft.conditioncodelastupdated,
                 'MM/DD/YYYY HH24:MI:SS'
                ) "CONDITIONCODELASTUPDATED",
             TO_CHAR (aircraft.eticlastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "ETICLASTUPDATED",
             TO_CHAR (aircraft.hqstatuslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "HQSTATUSLASTUPDATED",
             TO_CHAR (aircraft.prioritylastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "PRIORITYLASTUPDATED",
             TO_CHAR (aircraft.repdesignlastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "REPDESIGNLASTUPDATED",
             TO_CHAR (aircraft.wuclastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "WUCLASTUPDATED",
             TO_CHAR (aircraft.remarkslastupdated,
                      'MM/DD/YYYY HH24:MI:SS'
                     ) "REMARKSLASTUPDATED",
             remarks.remarks, statusstartdate, statusstarttime,
             aircraft.statusnarrative, aircraft.openstatuseventjcn,
             aircraft.statuswuclcn, aircraft.arm_dearm,
             (SELECT COUNT (*)
                FROM customdatamds
               WHERE aircraftmdsid = aircraft.aircraftmdsid) AS cdcount,
             (SELECT COUNT (*)
                FROM aircraftcustomdata
               WHERE aircraftid = aircraft.aircraftid) AS aircraftcdcount,
             aircraft.geoloccode AS stationloc
        FROM aircraft,
             crewchiefs,
             squadrons,
             conditioncodes,
             hanger_queen_code,
             possessions,
             ranks,
             aircraftmds,
             remarks
       WHERE (    (aircraft.squadronid = squadrons.squadronid)
              AND (aircraft.conditioncodeid = conditioncodes.condcodeid(+))
              AND (aircraft.hangerqueenstatus = hanger_queen_code.hqcodeid(+))
              AND (aircraft.possessionid = possessions.possessionid(+))
     AND (aircraft.crewchiefid = crewchiefs.crewchiefid(+))
              AND (crewchiefs.rankid = ranks.rankid(+))
              AND (aircraft.aircraftmdsid = aircraftmds.aircraftmdsid(+))
              AND (aircraft.aircraftid = aircraftidin)
              AND (aircraft.remarksid = remarks.remarksid(+))
             );
END spgetaircraftmaintenancestatus;
 
 
 
 
 
 
 
 
@
