--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_CACHED_LISTS" (
   mocidin                        INTEGER,
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
         WHERE mocid = mocidin
      ORDER BY crewchief;

   OPEN conditioncodes FOR
      SELECT   condcodeid, conditioncode
          FROM conditioncodes
         WHERE mocid = mocidin
      ORDER BY conditioncode;

   OPEN hangarqueenstatuscodes FOR
      SELECT   hqcodeid, hqcode, hqlevel
          FROM hanger_queen_code
         WHERE mocid = mocidin
      ORDER BY hqlevel;

   OPEN possessioncodes FOR
      SELECT   possessionid, possessioncode
          FROM possessions
         WHERE mocid = mocidin
      ORDER BY possessioncode;

   OPEN squadronnames FOR
      SELECT   wingid, squadronid, squadronname, shortname
          FROM squadrons
         WHERE mocid = mocidin
      ORDER BY squadronname;

   OPEN mdslist FOR
      SELECT   aircraftmdsid, aircraftmds, blocknumber, numberofstations,
               numberofengines
          FROM aircraftmds
         WHERE mocid = mocidin
      ORDER BY aircraftmds;

   OPEN statuscodes FOR
      SELECT   statuscodeid, statuscode, statuscodelabel, ordernumber,
               iconname, allowsortieupdate, takeoff, lastflown
          FROM statuscode
         WHERE mocid = mocidin
      ORDER BY ordernumber;

   OPEN locations FOR
      SELECT   locationid, locationcode
          FROM locations
         WHERE mocid = mocidin
      ORDER BY locationcode;

   OPEN joapcodes FOR
      SELECT   joapid, joapcode, joapdescription, redcapstatus
          FROM joap
         WHERE mocid = mocidin
      ORDER BY joapcode;

   OPEN semedxcodes FOR
      SELECT   semedxid, semedx
          FROM semedx
         WHERE mocid = mocidin
      ORDER BY semedx;

   OPEN fuelcodes FOR
      SELECT   fuelstatusid, fuelstatus, fueldescription, colorname,
               colorvalue, fontcolor, allowsortieupdate
          FROM fuel, colors
         WHERE fuel.colorid = colors.colorid AND fuel.mocid = mocidin
      ORDER BY fuelstatus;

   OPEN symbolsconds FOR
      SELECT   symbolid, symbols.condcodeid, conditioncode, symbol
          FROM symbols, conditioncodes
         WHERE symbols.condcodeid = conditioncodes.condcodeid
           AND symbols.mocid = mocidin
      ORDER BY symbolid;

   OPEN transitionrules FOR
      SELECT   statuscodeid, transition2id
          FROM statustransitionrule
         WHERE mocid = mocidin
      ORDER BY statuscodeid;

   OPEN firesymbols FOR
      SELECT   firesymbol, firesymbolid, ranking, defaultval
          FROM firesymbols
         WHERE mocid = mocidin
      ORDER BY ranking;

   OPEN stationloccodes FOR
      SELECT   staloccodeid, stationloc
          FROM stationloccodes
         WHERE mocid = mocidin
      ORDER BY stationloc;

   OPEN weaponsclass FOR
      SELECT   weaponsclassid, weaponsclass
          FROM weaponsclass
         WHERE mocid = mocidin
      ORDER BY weaponsclass;

   OPEN workcenters FOR
      SELECT   workcenterid, workcentercode, workcentername, wingid
          FROM workcenters
         WHERE mocid = mocidin
      ORDER BY workcentercode;

   OPEN wings FOR
      SELECT   wings.unitid, wings.wingname, elc
          FROM wings
         WHERE mocid = mocidin
      ORDER BY wings.wingname;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_moc_cached_lists;
 
 
 
 
 
 
 
 
@
