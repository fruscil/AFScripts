--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_JOAP_DATA_BY_SCHEDULEID" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   scheduleidin         schedule.scheduleid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   joap.joapcode code, colors.colorvalue, colorrules.colorrank,
               aircraftenginedata.enginenumber, joapdata.scheduleid,
               schedule.scheduledtakeoff, joapdata.moccontroller,
               joapdata.sampledate, joapdata.reason, schedule.sortienum,
               schedule.sortiedate, joapdata.joapdataid,
               aircraftenginedata.enginedataid
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
                AND (joapdata.scheduleid = schedule.scheduleid)
                AND (schedule.scheduleid = scheduleidin)
                AND (joapdata.datecleared IS NULL)
               )
      ORDER BY joapdata.sampledate,
               aircraftenginedata.enginenumber,
               schedule.scheduledtakeoff;
END get_joap_data_by_scheduleid;

 
 
 
 
 
 
 
 
@
