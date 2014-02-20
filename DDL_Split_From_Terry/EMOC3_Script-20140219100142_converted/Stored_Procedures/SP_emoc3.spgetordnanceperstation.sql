--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETORDNANCEPERSTATION" 
(
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR,
AIRCRAFTIDIN AIRCRAFT.AIRCRAFTID%TYPE)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT weaponsload.STATION,
	   weaponsload.ORDNANCEID,
	   ordnance.ORDNANCE,
	   weaponsload.WEAPONSNUMBER,
	   weaponsload.FIRESYMBOLID,
	   weaponsload.WEAPONSCLASSID


FROM aircraft, weaponsload, ordnance
WHERE ( (aircraft.AIRCRAFTID = AIRCRAFTIDIN)
 	   	AND	(aircraft.AIRCRAFTID = weaponsload.AIRCRAFTID)
		AND (weaponsload.ORDNANCEID = ordnance.ORDNANCEID) )
ORDER BY weaponsload.station;

END SPGETORDNANCEPERSTATION;

 
 
 
 
 
 
 
 
@
