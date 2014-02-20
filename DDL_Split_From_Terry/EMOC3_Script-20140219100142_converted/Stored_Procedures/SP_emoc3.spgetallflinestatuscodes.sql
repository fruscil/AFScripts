--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETALLFLINESTATUSCODES" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR,
AIRCRAFTIDIN AIRCRAFT.AIRCRAFTID%TYPE)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR

SELECT SCHEDULE.AIRCRAFTID, SCHEDULE.SORTIENUM, SCHEDULESTATUS.STATUSCODEID, STATUSCODE.STATUSCODE, SCHEDULESTATUS.STATUSTIME
FROM AIRCRAFT, SCHEDULE, SCHEDULESTATUS, STATUSCODE
WHERE (    (SCHEDULE.AIRCRAFTID = AIRCRAFTIDIN)
      AND  (SCHEDULE.SCHEDULEID = SCHEDULESTATUS.SCHEDULEID)  )
	 ORDER BY SCHEDULE.SORTIENUM;
END SPGETALLFLINESTATUSCODES;

 
 
 
 
 
 
 
 
@
