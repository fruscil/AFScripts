--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETALLFUELCODESBYMISSION" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR,
SCHEDULEIDIN SCHEDULESTATUS.SCHEDULEID%TYPE)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR

SELECT
schedulestatus.SCHEDULEID,
schedulestatus.SCHEDULESTATUSID,
schedulestatus.STATUSCODEID,
TO_CHAR(schedulestatus.STATUSTIME, 'MM/DD/YYYY HH24:MI:SS') "STATUSTIME",
schedulestatus.STATUSTYPE,
fuel.FUELSTATUS,
FUEL.FUELDESCRIPTION,
colors.COLORVALUE


FROM schedulestatus, fuel, colors
WHERE (  (schedulestatus.statuscodeid = fuel.fuelstatusid(+))
		AND (fuel.COLORID = colors.COLORID(+))
        AND (schedulestatus.scheduleid = SCHEDULEIDIN)
		AND (schedulestatus.statustype = 1) )

ORDER BY schedulestatus.statustime;
END SPGETALLFUELCODESBYMISSION;

 
 
 
 
 
 
 
 
@
