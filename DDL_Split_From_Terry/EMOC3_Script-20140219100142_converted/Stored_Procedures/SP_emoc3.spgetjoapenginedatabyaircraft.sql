--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETJOAPENGINEDATABYAIRCRAFT" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   aircraftidin         aircraft.aircraftid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   joap.joapcode, joap.joapid, joap.redcapstatus,
               colors.colorvalue, colors.colorname, colorrules.colorrank,
               aircraftenginedata.enginenumber, joapdata.joapdataid,
               joapdata.scheduleid,
               TO_CHAR (schedule.scheduledtakeoff,
                        'MM/DD/YYYY HH24:MI:SS'
                       ) "SCHEDULEDTAKEOFF",
               TO_CHAR (joapdata.sampledate,
                        'MM/DD/YYYY HH24:MI:SS'
                       ) "SAMPLEDATE",
               joapdata.reason, joapdata.notifiedby, joapdata.moccontroller,
               TO_CHAR (joapdata.joaplastupdated,
                        'MM/DD/YYYY HH24:MI:SS'
                       ) "JOAPLASTUPDATED",
               joapdata.hoursrequired, joapdata.hoursremaining,
               joapdata.expediternotified, joapdata.enginedataid
          FROM aircraft,
               joap,
               colors,
               colorrules,
               aircraftenginedata,
               joapdata,
               schedule
         WHERE (    (aircraft.aircraftid = aircraftenginedata.aircraftid)
                AND (aircraftenginedata.enginedataid = joapdata.enginedataid
                    )
                AND (joap.joapid = joapdata.joapid)
                AND (joap.colorrulesid = colorrules.colorrulesid)
                AND (colorrules.codetype = 'JOAP')
                AND (colorrules.colorid = colors.colorid)
                AND (joapdata.scheduleid = schedule.scheduleid(+))
                AND (aircraft.aircraftid = aircraftidin)
                AND (joapdata.datecleared IS NULL)
                AND (joap.mocid = aircraft.mocid)
               )
      ORDER BY aircraftenginedata.enginenumber, joapdata.sampledate;
END spgetjoapenginedatabyaircraft;
 
 
 
 
 
 
 
 
@
