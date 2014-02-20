--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SEMEDX_DATA_BY_SCHEDULEID" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   scheduleidin         schedule.scheduleid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   semedx.semedx code, colors.colorvalue, colorrules.colorrank,
               aircraftenginedata.enginenumber, semedxdata.scheduleid,
               schedule.scheduledtakeoff, semedxdata.moccontroller,
               semedxdata.sampledate, semedxdata.reason, schedule.sortienum,
               schedule.sortiedate, semedxdata.semdataid,
               aircraftenginedata.enginedataid
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
                AND (semedxdata.scheduleid = schedule.scheduleid)
                AND (schedule.scheduleid = scheduleidin)
               )
      ORDER BY semedxdata.sampledate,
               aircraftenginedata.enginenumber,
               schedule.scheduledtakeoff;
END get_semedx_data_by_scheduleid;

 
 
 
 
 
 
 
 
@
