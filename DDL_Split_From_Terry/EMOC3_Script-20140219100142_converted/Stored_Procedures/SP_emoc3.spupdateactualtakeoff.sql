--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEACTUALTAKEOFF" (
SCHEDULEIDIN SCHEDULE.SCHEDULEID%TYPE,
STATUSCODETIMEIN VARCHAR

)
AS

BEGIN

UPDATE SCHEDULE
SET

ACTUALTAKEOFF = TO_DATE(STATUSCODETIMEIN, 'MM/DD/YYYY HH24:MI:SS')

WHERE (SCHEDULEID = SCHEDULEIDIN);
END Spupdateactualtakeoff;
 
 
 
 
 
 
 
 
@
