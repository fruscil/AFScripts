--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETALLFLIGHTLINES" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR,
AIRCRAFTIDIN AIRCRAFT.AIRCRAFTID%TYPE)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR

SELECT
schedule.scheduleid,
schedule.aircraftid,
schedule.sortienum,
schedule.callsign,
TO_CHAR(schedule.ACTUALTAKEOFF, 'MM/DD/YYYY HH24:MI:SS') "ACTUALTAKEOFF",
TO_CHAR(schedule.ACTUALLANDING, 'MM/DD/YYYY HH24:MI:SS') "ACTUALLANDING",
TO_CHAR(schedule.SCHEDULEDTAKEOFF, 'MM/DD/YYYY HH24:SS') "SCHEDULEDTAKEOFF",
sch.statuscodeid,
TO_CHAR(sch.statustime, 'MM/DD/YYYY HH24:MI:SS') "STATUSTIME",
sta.statuscode,
sch.statustype,
fuel.FUELSTATUS,
colors.COLORVALUE
  FROM schedule schedule, schedulestatus sch, statuscode sta, fuel, colors
 WHERE (   (TO_CHAR(schedule.SCHEDULEDTAKEOFF, 'MM/DD/YYYY') = TO_CHAR(SYSDATE, 'MM/DD/YYYY'))
 	   	AND	(sch.statuscodeid = sta.statuscodeid(+))
 	   	AND (sch.statuscodeid = fuel.FUELSTATUSID(+))
		AND (fuel.COLORID = colors.COLORID(+))
        AND (schedule.scheduleid = sch.scheduleid)
        AND (schedule.aircraftid = AIRCRAFTIDIN))



	 ORDER BY SCHEDULE.SCHEDULEID,SCHEDULE.SCHEDULEDTAKEOFF;
END SPGETALLFLIGHTLINES;

 
 
 
 
 
 
 
 
@
