--<ScriptOptions statementTerminator="@"/>

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 46354
	Relative Current Chunk Line Number: 46354
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character '   THEN\n      NULL;\nEND get_moc_dropdown_lists;\n\n[CREATE]'
------------

The following statement (from line 46190 to 46352) and was skipped" BEGIN*/
 CREATE PROCEDURE       "EMOC3"."GET_MOC_DROPDOWN_LISTS"  (
   areas                   OUT   emoc_types.emoc_cursor,
   pilots                  OUT   emoc_types.emoc_cursor,
   ranges                  OUT   emoc_types.emoc_cursor,
   aircraft                OUT   emoc_types.emoc_cursor,
   squadrons               OUT   emoc_types.emoc_cursor,
   deviationcodes          OUT   emoc_types.emoc_cursor,
   locations               OUT   emoc_types.emoc_cursor,
   causecodes              OUT   emoc_types.emoc_cursor,
   missions                OUT   emoc_types.emoc_cursor,
   fuelstatus              OUT   emoc_types.emoc_cursor,
   landingcodes            OUT   emoc_types.emoc_cursor,
   weathercodes            OUT   emoc_types.emoc_cursor,
   statuscodes             OUT   emoc_types.emoc_cursor,
   colors                  OUT   emoc_types.emoc_cursor,
   ranks                   OUT   emoc_types.emoc_cursor,
   wings                   OUT   emoc_types.emoc_cursor,
   aircraftmds             OUT   emoc_types.emoc_cursor,
   statustransitionrules   OUT   emoc_types.emoc_cursor,
   flights                 OUT   emoc_types.emoc_cursor,
   permissions             OUT   emoc_types.emoc_cursor,
   squadron_sort_order     OUT   emoc_types.emoc_cursor
)
AS
BEGIN
   --Must keep ID fields first
   OPEN areas FOR
      SELECT   areaid, area, mocid
          FROM areas
      ORDER BY area;

   OPEN pilots FOR
      SELECT   pilotid, pilotname, pilot.squadronid, wingid, pilot.mocid
          FROM pilot JOIN squadrons ON pilot.squadronid =
                                                         squadrons.squadronid
      ORDER BY pilotname;

   OPEN ranges FOR
      SELECT   rangeid, RANGE, mocid
          FROM ranges
      ORDER BY RANGE;

   OPEN aircraft FOR

SELECT   aircraftid, shorttailnumber, tailnumber, squadrons.squadronid,
               wingid, conditioncodeid, aircraft.aircraftmdsid, aircraftyear,
               aircraftmds, acftmdstypecd, misequipid, aircraft.mocid
          FROM emoc3.aircraft JOIN emoc3.squadrons ON aircraft.squadronid =
                                                         squadrons.squadronid
               JOIN emoc3.aircraftmds ON aircraft.aircraftmdsid =
                                                    aircraftmds.aircraftmdsid
      ORDER BY shorttailnumber;
OPEN squadrons FOR
      SELECT   squadronid, squadronname, colorvalue, wingid, colorname,
               shortname, fontcolor, squadrons.mocid
          FROM squadrons LEFT JOIN colors ON squadrons.colorid =
                                                               colors.colorid
      ORDER BY squadronname;

   OPEN deviationcodes FOR
      SELECT   deviationcodeid, deviationcode, deviationdescription,
               colorvalue, defaultdeviationcode, deviationcodes.mocid
          FROM deviationcodes LEFT JOIN colors ON deviationcodes.colorid =
                                                               colors.colorid
      ORDER BY deviationcode;

   OPEN locations FOR
      SELECT   locationid, locationcode, locationname, defaultlocation, mocid
          FROM locations
      ORDER BY locationcode;

   OPEN causecodes FOR
      SELECT   causecodeid, causecode, description, defaultcausecode, mocid
          FROM causecodes
      ORDER BY causecode;

   OPEN missions FOR
      SELECT   missionid, mission, missiondescription, mocid
          FROM missions
      ORDER BY mission;

   OPEN fuelstatus FOR
      SELECT   fuelstatusid, fuelstatus, fueldescription, defaultfuel,
               colorid, landing, fuelstatuslabel, allowsortieupdate, mocid
          FROM fuel
      ORDER BY defaultfuel DESC, fuelstatusid;

   OPEN landingcodes FOR
      SELECT   landingcodeid, landingcode, landingcodedescription,
               writeupneeded, mocid
          FROM landingcodes
      ORDER BY landingcode;

   OPEN weathercodes FOR
      SELECT   wxcodeid, weathercode, weatherdescription, defaultweathercode, mocid
          FROM wx
      ORDER BY defaultweathercode DESC, weathercode;

   OPEN statuscodes FOR
      SELECT   statuscodeid, statuscode, defaultstatuscode, iconname,
               ordernumber, takeoff, flying, statuscodelabel,
               allowsortieupdate, lastflown, mocid
          FROM statuscode
      ORDER BY ordernumber;

   OPEN colors FOR
      SELECT   colorid, colorname, colorvalue, mocid
          FROM colors
      ORDER BY colorname;

   OPEN ranks FOR
      SELECT   rankid, rankcode, rankdescription, defaultrank, mocid
          FROM ranks
      ORDER BY rankcode;

   OPEN wings FOR
      SELECT   wingid, wingname, unitid, commandcode, defaultwing, mocid
          FROM wings
      ORDER BY wingname;

   OPEN aircraftmds FOR
      SELECT   aircraftmdsid, aircraftmds, numberofstations, numberofengines,
               timebetweenphase, defaultaircrafttype, acftmdstypecd, mocid
          FROM aircraftmds
      ORDER BY aircraftmds;

   OPEN statustransitionrules FOR
      SELECT   str.statuscodeid, str.transition2id, str.mocid
          FROM statustransitionrule str, statuscode sc
         WHERE str.statuscodeid = sc.statuscodeid
           AND sc.allowsortieupdate = 1
      ORDER BY sc.ordernumber;

   OPEN flights FOR
      SELECT   flightid, flightname, squadrons.squadronid, flights.workcenterid,
               shortname, workcentercode, squadrons.mocid
          FROM flights JOIN squadrons ON flights.squadronid =
                                                          squadrons.squadronid
               JOIN workcenters ON flights.workcenterid =
                                                      workcenters.workcenterid
      ORDER BY flightname;

   OPEN permissions FOR
      SELECT   permissionid, permissions.squadronid, userid, emocrole, squadrons.mocid
          FROM permissions JOIN squadrons ON permissions.squadronid =
                                                          squadrons.squadronid
      ORDER BY squadronid;

   OPEN squadron_sort_order FOR
      SELECT   userid, squadrons.squadronid, sortorder, squadronname,
               shortname, colorvalue, wingid, colorname, fontcolor, squadrons.mocid
          FROM squadron_sort_order JOIN squadrons ON squadron_sort_order.squadronid =
                                                          squadrons.squadronid
               LEFT JOIN colors ON squadrons.colorid = colors.colorid
      ORDER BY wingid, sortorder;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_moc_dropdown_lists@
