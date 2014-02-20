--<ScriptOptions statementTerminator="@"/>


/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 45985
	Relative Current Chunk Line Number: 45985
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character 'BY customdatalabel, mds, mdsblock, yrtail;\nEND curcustomdatareport;\n\n[CREATE]'
------------

The following statement (from line 45940 to 45983) and was skipped" BEGIN*/
 CREATE PROCEDURE       "EMOC3"."CURCUSTOMDATAREPORT" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   vmocid            NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   customdata.customdatalabel AS cdlabel,
               customdata.customdatadescription AS description,
               customdata.customdatatype cdtype,
               customdata.customdatawidth cdwidth,
               customdata.bgcolorvalue bgcolor,
               (SELECT DISTINCT colorname
                           FROM colors
                          WHERE colorvalue = bgcolorvalue) AS colorname,
               customdata.fontcolor, aircraftmds.aircraftmds AS mds,
               aircraftmds.blocknumber AS mdsblock, aircraft.tailnumber,
               (TRIM (aircraft.aircraftyear) || aircraft.tailnumber
               ) AS yrtail,
               aircraft.misequipid AS equipid,
               squadrons.squadronname AS squadron,
               aircraftcustomdata.datavalue, aircraftcustomdata.lastupdated,
               (SELECT fullname
                  FROM users
                 WHERE userid = aircraftcustomdata.lastupdateby) AS updateby,
               wings.wingname AS wing
          FROM customdata LEFT OUTER JOIN customdatamds ON customdata.customdataid =
                                                             customdatamds.customdataid
               LEFT OUTER JOIN aircraftcustomdata ON customdata.customdataid =
                                                       aircraftcustomdata.customdataid
               LEFT OUTER JOIN aircraftmds ON aircraftmds.aircraftmdsid =
                                                  customdatamds.aircraftmdsid
               LEFT OUTER JOIN aircraft ON aircraft.aircraftid =
                                                aircraftcustomdata.aircraftid
               INNER JOIN squadrons ON squadrons.squadronid =
                                                          aircraft.squadronid
               INNER JOIN wings ON wings.wingid = squadrons.wingid
         WHERE (    aircraftcustomdata.aircraftid = aircraft.aircraftid
                AND aircraft.aircraftmdsid = aircraftmds.aircraftmdsid
               )
           AND customdata.mocid = vmocid
      ORDER BY customdatalabel, mds, mdsblock, yrtail;
END curcustomdatareport@
