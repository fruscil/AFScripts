--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETAIRCRAFTSTATUSCODES" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR,
SCHEDULEIDIN SCHEDULESTATUS.SCHEDULEID%TYPE)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR

SELECT
schedulestatus.SCHEDULESTATUSID,
schedulestatus.SCHEDULEID,
schedulestatus.STATUSCODEID,
schedulestatus.STATUSTIME,
schedulestatus.STATUSTYPE,
statuscode.statuscode,
colors.colorvalue as fuelcolorvalue

FROM
schedulestatus, statuscode, colors, fuel

WHERE (  		(schedulestatus.SCHEDULEID = 1)
	  	  AND (schedulestatus.STATUSCODEID = statuscode.statuscodeid)
		  AND (schedulestatus.statuscodeid = fuel.FUELSTATUSID(+))
		  AND (fuel.COLORID = colors.COLORID(+))       )

ORDER BY STATUSTIME;


END SPGETAIRCRAFTSTATUSCODES;

 
 
 
 
 
 
 
 
@
