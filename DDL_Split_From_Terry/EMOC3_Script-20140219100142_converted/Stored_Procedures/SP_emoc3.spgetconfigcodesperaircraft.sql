--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETCONFIGCODESPERAIRCRAFT" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR,
AIRCRAFTIDIN SCHEDULE.AIRCRAFTID%TYPE,
DATEIN SCHEDULE.SCHEDULEDTAKEOFF%TYPE)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR

SELECT schedule.SORTIENUM, schedule.CONFIGCODE, schedule.SCHEDULEDLANDING,schedule.SCHEDULEDTAKEOFF
	 FROM schedule
 	 WHERE (    (schedule.aircraftid = aircraftidin)
        AND (schedule.scheduledtakeoff = datein)  )

	 ORDER BY schedule.scheduledtakeoff;

END SPGETCONFIGCODESPERAIRCRAFT;

 
 
 
 
 
 
 
 
@