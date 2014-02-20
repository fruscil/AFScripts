--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE                 "EMOC3"."DELETE_AIRCRAFT" (
   aircraftidin   aircraft.aircraftid%TYPE
)
AS
   aircraftremarksid   INTEGER;
   shorttail           VARCHAR2(5);
BEGIN
   SELECT remarksid, shorttailnumber
     INTO aircraftremarksid, shorttail
     FROM aircraft
    WHERE aircraftid = aircraftidin;

   remove_aircraft_enginedata (aircraftidin);
   /* remove_aircraft_micaps (aircraftidin); */
   remove_aircraft_writeups (aircraftidin);
   remove_aircraft_shopdispatch (aircraftidin);
   remove_aircraft_weaponsload (aircraftidin);
   remove_aircraft_history (aircraftidin);
   remove_aircraft_interfacerecs (aircraftidin);
   remove_aircraft_eventlog (shorttail);
   remove_aircraft_maintevents (aircraftidin);
   remove_aircraft_schedulerecs (aircraftidin);

   INSERT INTO emocaux.aircraft
      SELECT aircraftid, tailnumber, serialnumber, aircraftyear, misequipid,
             lastflowntime,
             aircraft.locationcode AS LOCATION, phasedate,
             etic,
             (SELECT possessioncode
                FROM possessions
               WHERE possessionid = aircraft.possessionid) AS possessioncode,
             priority,
             (SELECT conditioncode
                FROM conditioncodes
               WHERE condcodeid = aircraft.conditioncodeid) AS conditioncode,
             (SELECT flightname
                FROM flights
               WHERE flightid = aircraft.flightid) AS flightname, arm_dearm,
             multiconfigid, statusnarrative, localoption, assignmentcmd,
             assignmentstatus, reportdesig, relatedmds, commandcode,
             aircraftmds.aircraftmds, aircraftmds.blocknumber, localconfigid,
             phaseunits,
             (SELECT wuccode
                FROM wuc
               WHERE wucid = aircraft.aircraftwucid) AS aircraftwuc,
             acft_config_id,
             (SELECT remarks
                FROM remarks
               WHERE remarksid = aircraft.remarksid) AS remarks,
             aircraft.geoloccode AS staloccode,
             tmeflownsincephasedate, squadrons.squadronname, SYSDATE,
             (SELECT statuscode
                FROM statuscode
               WHERE statuscodeid = aircraft.statuscodeid) AS statuscode,
             shorttailnumber, fcf, ocf,
             (SELECT hqcode
                FROM hanger_queen_code
               WHERE hqcodeid = aircraft.hangerqueenstatus) AS hqcode
        FROM aircraft, aircraftmds, squadrons
       WHERE aircraftid = aircraftidin
         AND aircraftmds.aircraftmdsid = aircraft.aircraftmdsid
         AND squadrons.squadronid = aircraft.squadronid;

   UPDATE aircraft
      SET remarksid = NULL
    WHERE aircraftid = aircraftidin;

   DELETE FROM remarks
         WHERE remarksid = aircraftremarksid;

   DELETE FROM aircraftcustomdata
         WHERE aircraftid = aircraftidin;

   DELETE FROM aircraft
         WHERE aircraftid = aircraftidin;

   COMMIT;
END delete_aircraft;

@
