--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETALLCOMBATSCLSBYMDS" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR,
AIRCRAFTIDIN AIRCRAFT.AIRCRAFTID%TYPE)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR

SELECT combatscls.COMBATSCL, combatscls.COMBATSCLID
	 FROM aircraft, combatsclrules, combatscls
 	 WHERE (    (aircraft.aircraftmdsid = combatsclrules.aircraftmdsid)
        AND (combatscls.combatsclid = combatsclrules.combatsclid)
        AND (aircraft.aircraftid = aircraftidin)   )
	 ORDER BY COMBATSCL;
END SPGETALLCOMBATSCLSBYMDS;

 
 
 
 
 
 
 
 
@
