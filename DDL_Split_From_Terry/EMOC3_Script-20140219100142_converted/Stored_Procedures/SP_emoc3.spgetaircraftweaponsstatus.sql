--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETAIRCRAFTWEAPONSSTATUS" 
(
AIRCRAFTIDIN IN AIRCRAFT.AIRCRAFTID%TYPE,
SQUADRONNAMEOUT OUT SQUADRONS.SQUADRONNAME%TYPE,
TAILNUMBEROUT OUT AIRCRAFT.TAILNUMBER%TYPE,
LASTFLOWNTIMEOUT OUT AIRCRAFT.LASTFLOWNTIME%TYPE,
COMBATSCLOUT OUT COMBATSCLS.COMBATSCL%TYPE,
COMBATSCLIDOUT OUT AIRCRAFT.COMBATSCLID%TYPE,
CHAFFOUT OUT AIRCRAFT.CHAFF%TYPE,
FLAREOUT OUT AIRCRAFT.FLARE%TYPE,
HOTGUNSOUT OUT AIRCRAFT.HOTGUNS%TYPE


)
AS
BEGIN

SELECT SQUADRONNAME,
TAILNUMBER,
LASTFLOWNTIME,
COMBATSCLS.COMBATSCL,
AIRCRAFT.COMBATSCLID,
CHAFF,
FLARE,
HOTGUNS


INTO SQUADRONNAMEOUT,
TAILNUMBEROUT,
LASTFLOWNTIMEOUT,
COMBATSCLOUT,
COMBATSCLIDOUT,
CHAFFOUT,
FLAREOUT,
HOTGUNSOUT

FROM AIRCRAFT, SQUADRONS, COMBATSCLS

WHERE AIRCRAFT.AIRCRAFTID = AIRCRAFTIDIN
	  AND AIRCRAFT.SQUADRONID = SQUADRONS.SQUADRONID
	  AND AIRCRAFT.COMBATSCLID = COMBATSCLS.COMBATSCLID;

END SPGETAIRCRAFTWEAPONSSTATUS;

 
 
 
 
 
 
 
 
@
