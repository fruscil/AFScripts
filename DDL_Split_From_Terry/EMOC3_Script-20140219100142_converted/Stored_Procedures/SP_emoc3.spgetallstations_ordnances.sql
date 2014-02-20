--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETALLSTATIONS_ORDNANCES" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR,
AIRCRAFTIDIN INTEGER)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT STATION, ORDNANCE, WEAPONSNUMBER

FROM WEAPONSLOAD, ORDNANCE

WHERE WEAPONSLOAD.AIRCRAFTID = AIRCRAFTIDIN
	  AND WEAPONSLOAD.ORDNANCEID = ORDNANCE.ORDNANCEID;

END SPGETALLSTATIONS_ORDNANCES;

 
 
 
 
 
 
 
 
@
