--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETMAINTENANCESTATUS" (
   aircraftidin                  IN       aircraft.aircraftid%TYPE,
   crewchiefout                  OUT      crewchiefs.crewchief%TYPE,
   crewchiefrankout              OUT      ranks.rankcode%TYPE,
   crewchiefrankidout            OUT      crewchiefs.rankid%TYPE,
   squadronnameout               OUT      squadrons.squadronname%TYPE,
   squadronnameidout             OUT      squadrons.squadronid%TYPE,
   conditioncodeout              OUT      conditioncodes.conditioncode%TYPE,
   conditioncodeidout            OUT      conditioncodes.condcodeid%TYPE,
   possessioncodeout             OUT      possessions.possessioncode%TYPE,
   possessioncodeidout           OUT      possessions.possessionid%TYPE,
   serialnumberout               OUT      aircraft.serialnumber%TYPE,
   tailnumberout                 OUT      aircraft.tailnumber%TYPE,
   eticout                       OUT      aircraft.etic%TYPE,
   fcfout                        OUT      aircraft.fcf%TYPE,
   qcfout                        OUT      aircraft.ocf%TYPE,
   qviout                        OUT      aircraft.qvi%TYPE,
   firstofficialout              OUT      aircraft.firstofficial%TYPE,
   secondofficialout             OUT      aircraft.secondofficial%TYPE,
   priorityout                   OUT      aircraft.priority%TYPE,
   hangerqueenstatuscodeout      OUT      hanger_queen_code.hqcode%TYPE,
   hqstatuscodeidout             OUT      hanger_queen_code.hqcodeid%TYPE,
   lastflowntimeout              OUT      aircraft.lastflowntime%TYPE,
   pictureout                    OUT      crewchiefs.picture%TYPE,
   phasedateout                  OUT      aircraft.phasedate%TYPE,
   mdsout                        OUT      aircraftmds.aircraftmds%TYPE,
   mdsidout                      OUT      aircraftmds.aircraftmdsid%TYPE,
   crewchieflastupdatedout       OUT      aircraft.crewchieflastupdated%TYPE,
   serialnolastupdatedout        OUT      aircraft.serialnumberlastupdated%TYPE,
   impoundslastupdatedout        OUT      aircraft.impoundslastupdated%TYPE,
   conditioncodelastupdatedout   OUT      aircraft.conditioncodelastupdated%TYPE,
   qstatuslastupdatedout         OUT      aircraft.hqstatuslastupdated%TYPE,
   teststatuslastupdatedout      OUT      aircraft.teststatuslastupdated%TYPE,
   phasedatelastupdatedout       OUT      aircraft.phasedatelastupdated%TYPE,
   posscodelastupdatedout        OUT      aircraft.possessioncodelastupdated%TYPE,
   eticlastupdatedout            OUT      aircraft.eticlastupdated%TYPE,
   remarkslastupdatedout         OUT      aircraft.remarkslastupdated%TYPE,
   prioritylastupdatedout        OUT      aircraft.prioritylastupdated%TYPE,
   statusstartdateout            OUT      aircraft.statusstartdate%TYPE,
   statusstarttimeout            OUT      aircraft.statusstarttime%TYPE,
   statusnarrativeout            OUT      aircraft.statusnarrative%TYPE
)
AS
BEGIN
   SELECT crewchiefs.crewchief, ranks.rankcode, ranks.rankid,
          squadrons.squadronname, squadrons.squadronid,
          conditioncodes.conditioncode, conditioncodes.condcodeid,
          possessions.possessioncode, possessions.possessionid,
          aircraft.serialnumber, aircraft.tailnumber, aircraft.etic,
          aircraft.fcf, aircraft.ocf, aircraft.qvi, aircraft.firstofficial,
          aircraft.secondofficial, aircraft.priority,
          hanger_queen_code.hqcode, hanger_queen_code.hqcodeid,
          aircraft.lastflowntime, crewchiefs.picture, aircraft.phasedate,
          aircraftmds.aircraftmds, aircraftmds.aircraftmdsid,
          aircraft.crewchieflastupdated, aircraft.serialnumberlastupdated,
          aircraft.impoundslastupdated, aircraft.conditioncodelastupdated,
          aircraft.hqstatuslastupdated, aircraft.teststatuslastupdated,
          aircraft.phasedatelastupdated, aircraft.possessioncodelastupdated,
          aircraft.eticlastupdated, aircraft.remarkslastupdated,
          aircraft.statusnarrative, aircraft.prioritylastupdated,
          aircraft.statusstartdate, aircraft.statusstarttime
     INTO crewchiefout, crewchiefrankout, crewchiefrankidout,
          squadronnameout, squadronnameidout,
          conditioncodeout, conditioncodeidout,
          possessioncodeout, possessioncodeidout,
          serialnumberout, tailnumberout, eticout,
          fcfout, qcfout, qviout, firstofficialout,
          secondofficialout, priorityout,
          hangerqueenstatuscodeout, hqstatuscodeidout,
          lastflowntimeout, pictureout, phasedateout,
          mdsout, mdsidout,
          crewchieflastupdatedout, serialnolastupdatedout,
          impoundslastupdatedout, conditioncodelastupdatedout,
          qstatuslastupdatedout, teststatuslastupdatedout,
          phasedatelastupdatedout, posscodelastupdatedout,
          eticlastupdatedout, remarkslastupdatedout,
          statusnarrativeout, prioritylastupdatedout,
          statusstartdateout, statusstarttimeout
     FROM aircraft,
          crewchiefs,
          squadrons,
          conditioncodes,
          hanger_queen_code,
          possessions,
          ranks,
          aircraftmds
    WHERE (    (aircraft.crewchiefid = crewchiefs.crewchiefid)
           AND (aircraft.squadronid = squadrons.squadronid)
           AND (conditioncodes.condcodeid = aircraft.conditioncodeid)
           AND (aircraft.hangerqueenstatus = hanger_queen_code.hqcodeid)
           AND (possessions.possessionid = aircraft.possessionid)
           AND (ranks.rankid = crewchiefs.rankid)
           AND (aircraftmds.aircraftmdsid = aircraft.aircraftmdsid)
           AND (aircraft.aircraftid = aircraftidin)
          );
END spgetmaintenancestatus;

 
 
 
 
 
 
 
 
@
