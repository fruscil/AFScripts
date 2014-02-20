--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETCHIPENGINEDATABYAIRCRAFT" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   aircraftidin         aircraft.aircraftid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   semedx.semedx, colors.colorvalue, colors.colorname,
               colorrules.colorrank, aircraftenginedata.enginenumber,
               semedxdata.semdataid, semedxdata.scheduleid,
               TO_CHAR (schedule.scheduledtakeoff,
                        'MM/DD/YYYY HH24:MI:SS'
                       ) "SCHEDULEDTAKEOFF",
               semedxdata.semedxid,
               TO_CHAR (semedxdata.sampledate,
                        'MM/DD/YYYY HH24:MI:SS'
                       ) "SAMPLEDATE",
               semedxdata.enginedataid, semedxdata.expediternotified,
               semedxdata.hoursrequired, semedxdata.hoursremaining,
               semedxdata.moccontroller, semedxdata.notifiedby,
               semedxdata.reason,
               TO_CHAR (semedxdata.semedxlastupdated,
                        'MM/DD/YYYY HH24:MI:SS'
                       ) "SEMEDXLASTUPDATED"
          FROM aircraft,
               semedx,
               colors,
               colorrules,
               aircraftenginedata,
               semedxdata,
               schedule
         WHERE (    (aircraft.aircraftid = aircraftenginedata.aircraftid)
                AND (aircraftenginedata.enginedataid = semedxdata.enginedataid
                    )
                AND (semedx.semedxid = semedxdata.semedxid)
                AND (semedx.colorrulesid = colorrules.colorrulesid)
                AND (colorrules.codetype = 'SEMEDX')
                AND (colorrules.colorid = colors.colorid)
                AND (semedxdata.scheduleid = schedule.scheduleid(+))
                AND (aircraft.aircraftid = aircraftidin)
                AND (semedxdata.datecleared IS NULL)
                AND (semedx.mocid = aircraft.mocid)
               )
      ORDER BY aircraftenginedata.enginenumber, semedxdata.sampledate;
END spgetchipenginedatabyaircraft;



 
 
 
 
 
 
 
 
@
