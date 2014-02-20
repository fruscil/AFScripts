--<ScriptOptions statementTerminator="@"/>

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 46190
	Relative Current Chunk Line Number: 46190
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character '   THEN\n      NULL;\nEND get_dropdown_lists;\n\n[CREATE]'
------------

The following statement (from line 45985 to 46188) and was skipped" BEGIN*/
 CREATE PROCEDURE       "EMOC3"."GET_DROPDOWN_LISTS" (
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
/******************************************************************************
   NAME:       GET_DROPDOWN_LISTS
   PURPOSE:    Returns data used in lists for the specified squadron.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        5/28/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   OUTPUT:
   *AREAS
   *PILOTS
   *RANGES
   *AIRCRAFT
   *SQUADRONS
   *LOCATIONS
   *DEVIATIONCODES
   *CAUSECODES
   *MISSIONS
   *FUELSTATUS
   *LANDINGCODES
   *WEATHERCODE
   *STATUSCODES
   *COLORS
   *RANKS
   *WINGS
   *AIRCRAFTMDS
   *STATUSTRANSITIONRULES
   *FLIGHTS
   RETURNED VALUE:
   CALLED BY:
   CALLS:
   EXAMPLE USE:
   ASSUMPTIONS:
   LIMITATIONS:
   ALGORITHM:
   NOTES:

******************************************************************************/
AS
BEGIN
   --Must keep ID fields first
   OPEN areas FOR
      SELECT   areaid, area
          FROM areas
      ORDER BY area;

   OPEN pilots FOR
      SELECT   pilotid, pilotname, pilot.squadronid, wingid
          FROM pilot JOIN squadrons ON pilot.squadronid =
                                                         squadrons.squadronid
      ORDER BY pilotname;

   OPEN ranges FOR
      SELECT   rangeid, RANGE
          FROM ranges
      ORDER BY RANGE;

   OPEN aircraft FOR
      SELECT   aircraftid, shorttailnumber, tailnumber, squadrons.squadronid,
               wingid, conditioncodeid, aircraftmds.aircraftmdsid, aircraftyear,
               aircraftmds, acftmdstypecd, misequipid
          FROM aircraft JOIN squadrons ON aircraft.squadronid =
                                                         squadrons.squadronid
               JOIN aircraftmds ON aircraft.aircraftmdsid =
                                                    aircraftmds.aircraftmdsid
      ORDER BY shorttailnumber;

OPEN squadrons FOR
      SELECT   squadronid, squadronname, colorvalue, wingid, colorname,
               shortname, fontcolor
          FROM squadrons LEFT JOIN colors ON squadrons.colorid =
                                                               colors.colorid
      ORDER BY squadronname;

   OPEN deviationcodes FOR
      SELECT   deviationcodeid, deviationcode, deviationdescription,
               colorvalue, defaultdeviationcode
          FROM deviationcodes LEFT JOIN colors ON deviationcodes.colorid =
                                                               colors.colorid
      ORDER BY deviationcode;

   OPEN locations FOR
      SELECT   locationid, locationcode, locationname, defaultlocation, elc
          FROM locations
      ORDER BY locationcode;

   OPEN causecodes FOR
      SELECT   causecodeid, causecode, description, defaultcausecode,
               causecodetype
          FROM causecodes
      ORDER BY causecode;

   OPEN missions FOR
      SELECT   missionid, mission, missiondescription
          FROM missions
      ORDER BY mission;

   OPEN fuelstatus FOR
      SELECT   fuelstatusid, fuelstatus, fueldescription, defaultfuel,
               colorid, landing, fuelstatuslabel, allowsortieupdate, mocid
          FROM fuel
      ORDER BY defaultfuel DESC, fuelstatusid;

   OPEN landingcodes FOR
      SELECT   landingcodeid, landingcode, landingcodedescription,
               writeupneeded
          FROM landingcodes
      ORDER BY landingcode;

   OPEN weathercodes FOR
      SELECT   wxcodeid, weathercode, weatherdescription, defaultweathercode
          FROM wx
      ORDER BY defaultweathercode DESC, weathercode;

   OPEN statuscodes FOR
      SELECT   statuscodeid, statuscode, defaultstatuscode, iconname,
               ordernumber, takeoff, flying, statuscodelabel,
               allowsortieupdate, lastflown, mocid
          FROM statuscode
      ORDER BY ordernumber;

   OPEN colors FOR
      SELECT   colorid, colorname, colorvalue
          FROM colors
      ORDER BY colorname;

   OPEN ranks FOR
      SELECT   rankid, rankcode, rankdescription, defaultrank
          FROM ranks
      ORDER BY rankcode;

   OPEN wings FOR
      SELECT   wingid, wingname, unitid, commandcode, defaultwing
          FROM wings
      ORDER BY wingname;

   OPEN aircraftmds FOR
      SELECT   aircraftmdsid, aircraftmds, numberofstations, numberofengines,
               timebetweenphase, defaultaircrafttype, acftmdstypecd
          FROM aircraftmds
      ORDER BY aircraftmds;

   OPEN statustransitionrules FOR
      SELECT   str.statuscodeid, str.transition2id
          FROM statustransitionrule str, statuscode sc
         WHERE str.statuscodeid = sc.statuscodeid
               AND sc.allowsortieupdate = 1
      ORDER BY sc.ordernumber;

   OPEN flights FOR
      SELECT   flightid, flightname, squadrons.squadronid, workcenters.workcenterid,
               shortname, workcentercode
          FROM emoc3.flights JOIN emoc3.squadrons ON flights.squadronid =
                                                         squadrons.squadronid
               JOIN emoc3.workcenters ON flights.workcenterid =
                                                     workcenters.workcenterid
      ORDER BY flightname;

  OPEN permissions FOR
      SELECT   permissionid, squadronid, userid, emocrole
          FROM permissions
      ORDER BY squadronid;

   OPEN squadron_sort_order FOR
      SELECT   userid, squadrons.squadronid, sortorder, squadronname,
               shortname, colorvalue, wingid, colorname, fontcolor
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
END get_dropdown_lists@
