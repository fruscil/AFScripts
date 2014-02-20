--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETWRITEUP" 
(P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR,
JCNIN WRITEUPS.JCN%TYPE,
AIRCRAFTIDIN WRITEUPS.AIRCRAFTID%TYPE)

AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT writeups.SYMBOLID,
	   writeups.PACER,
	   writeups.WRITEUPTIME,
	   writeups.ETIC,
	   writeups.WUCID,
	   writeups.DISCREPANCY,
	   writeups.CORRECTED,
	   writeups.CORRECTEDTIME,
	   writeups.CORRECTIVEACTION,
	   aircraft.CONDITIONCODEID

FROM writeups, aircraft
WHERE (   (writeups.AIRCRAFTID = AIRCRAFTIDIN)
	  AND (writeups.JCN = JCNIN)
	  AND (writeups.AIRCRAFTID = aircraft.AIRCRAFTID)
	  AND (writeups.CORRECTEDTIME IS NULL)    );


END SPGETWRITEUP;

 
 
 
 
 
 
 
 
@
