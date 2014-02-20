--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_RANKS_DROPDOWN_LISTS" (
   crewchiefs               OUT   emoc_types.emoc_cursor,
   conditioncodes           OUT   emoc_types.emoc_cursor,
   hangarqueenstatuscodes   OUT   emoc_types.emoc_cursor,
   possessioncodes          OUT   emoc_types.emoc_cursor,
   squadronnames            OUT   emoc_types.emoc_cursor,
   mdslist                  OUT   emoc_types.emoc_cursor,
   statuscodes              OUT   emoc_types.emoc_cursor,
   locations                OUT   emoc_types.emoc_cursor,
   joapcodes                OUT   emoc_types.emoc_cursor,
   semedxcodes              OUT   emoc_types.emoc_cursor,
   fuelcodes                OUT   emoc_types.emoc_cursor,
   symbolsconds             OUT   emoc_types.emoc_cursor,
   transitionrules          OUT   emoc_types.emoc_cursor,
   firesymbols              OUT   emoc_types.emoc_cursor,
   stationloccodes          OUT   emoc_types.emoc_cursor,
   weaponsclass             OUT   emoc_types.emoc_cursor,
   workcenters              OUT   emoc_types.emoc_cursor,
   wings                    OUT   emoc_types.emoc_cursor
)
AS
BEGIN
   OPEN crewchiefs FOR
      SELECT   crewchiefid, crewchief
          FROM crewchiefs
      ORDER BY crewchief;

   OPEN conditioncodes FOR
      SELECT   condcodeid, conditioncode
          FROM conditioncodes
      ORDER BY conditioncode;

   OPEN hangarqueenstatuscodes FOR
      SELECT   hqcodeid, hqcode, hqlevel
          FROM hanger_queen_code
      ORDER BY hqlevel;

   OPEN possessioncodes FOR
      SELECT   possessionid, possessioncode
          FROM possessions
      ORDER BY possessioncode;

   OPEN squadronnames FOR
      SELECT   wingid, squadronid, squadronname, shortname
          FROM squadrons
      ORDER BY squadronname;

   OPEN mdslist FOR
      SELECT   aircraftmdsid, aircraftmds, blocknumber, numberofstations,
               numberofengines
          FROM aircraftmds
      ORDER BY aircraftmds;

   OPEN statuscodes FOR
      SELECT   statuscodeid, statuscode, statuscodelabel, ordernumber,
               iconname, allowsortieupdate, takeoff, lastflown
          FROM statuscode
      ORDER BY ordernumber;

   OPEN locations FOR
      SELECT   locationid, locationcode, elc
          FROM locations
      ORDER BY locationcode;

   OPEN joapcodes FOR
      SELECT   joapid, joapcode, joapdescription, redcapstatus
          FROM joap
      ORDER BY joapcode;

   OPEN semedxcodes FOR
      SELECT   semedxid, semedx
          FROM semedx
      ORDER BY semedx;

   OPEN fuelcodes FOR
      SELECT   fuelstatusid, fuelstatus, fueldescription, colorname,
               colorvalue, fontcolor, allowsortieupdate
          FROM fuel, colors
         WHERE fuel.colorid = colors.colorid
      ORDER BY fuelstatus;

   OPEN symbolsconds FOR
      SELECT   symbolid, symbols.condcodeid, conditioncode, symbol
          FROM symbols, conditioncodes
         WHERE symbols.condcodeid = conditioncodes.condcodeid
      ORDER BY symbolid;

   OPEN transitionrules FOR
      SELECT   statuscodeid, transition2id
          FROM statustransitionrule
      ORDER BY statuscodeid;

   OPEN firesymbols FOR
      SELECT   firesymbol, firesymbolid, ranking, defaultval
          FROM firesymbols
      ORDER BY ranking;

   OPEN stationloccodes FOR
      SELECT   staloccodeid, stationloc, startdate, stopdate
          FROM stationloccodes
         WHERE startdate <= SYSDATE
           AND ((stopdate >= SYSDATE) OR (stopdate IS NULL))
      ORDER BY stationloc;

   OPEN weaponsclass FOR
      SELECT   weaponsclassid, weaponsclass
          FROM weaponsclass
      ORDER BY weaponsclass;

   OPEN workcenters FOR
      SELECT   workcenterid, workcentercode, workcentername, wingid
          FROM workcenters
      ORDER BY workcentercode;

   OPEN wings FOR
      SELECT   wings.unitid, wings.wingname, elc
          FROM wings
      ORDER BY wings.wingname;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_ranks_dropdown_lists;
 
 
 
 
 
 
 
 
@
