--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETALT_AIRCRAFTBYSQUADRON" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR,
SQUADRONIDIN INTEGER)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT TAILNUMBER, ETIC, LOCATIONNAME, FUELSTATUS, COLORVALUE, AIRCRAFTMDS, STATUSCODE

FROM AIRCRAFT, LOCATIONS, FUEL, COLORS, AIRCRAFTMDS, STATUSCODE

WHERE SQUADRONID = SQUADRONIDIN
AND AIRCRAFT.LOCATIONID = LOCATIONS.LOCATIONID
AND (AIRCRAFT.FUELSTATUSID = FUEL.FUELSTATUSID AND FUEL.COLORID = COLORS.COLORID)
AND AIRCRAFT.AIRCRAFTMDSID = AIRCRAFTMDS.AIRCRAFTMDSID
AND AIRCRAFT.STATUSCODEID = STATUSCODE.STATUSCODEID;
END SPGETALT_AIRCRAFTBYSQUADRON;
 
 
 
 
 
 
 
 
@