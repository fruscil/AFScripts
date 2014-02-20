--<ScriptOptions statementTerminator="@"/>

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 13120
	Relative Current Chunk Line Number: 13120
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character 'aircraft.aircraftid = aircraftidin;\nEND IF;\nEND SPUPDATEWRITEUP;\n\n[CREATE]'
------------

The following statement (from line 13045 to 13118) and was skipped" BEGIN*/
 CREATE PROCEDURE                 "EMOC3"."SPUPDATEWRITEUP" (
aircraftidin aircraft.aircraftid%TYPE,
eventnumberin writeups.jcn%TYPE,
symbolidin writeups.symbolid%TYPE,
pacerin writeups.pacer%TYPE,
writeuptimein VARCHAR,
eticin writeups.etic%TYPE,
wucidin writeups.wucid%TYPE,
discrepancyin writeups.discrepancy%TYPE,
correctedin writeups.corrected%TYPE,
correctedtimein VARCHAR,
correctiveactionin writeups.correctiveaction%TYPE,
conditioncodeidin INTEGER,
writeupidin INTEGER
)
/***********************************************
   NAME:       SPUPDATEWRITEUP
   PURPOSE:    Updates Writeups, Sets ETIC/Pacer if applicable

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        6/24/13      JACL            1. Updated Procedure, allow user to set pacer.

************************************************/
AS
et VARCHAR (15);

BEGIN
UPDATE writeups
SET writeups.jcn = eventnumberin,
writeups.symbolid = symbolidin,
writeups.pacer = pacerin,
writeups.writeuptime =
TO_DATE (writeuptimein, 'MM/DD/YYYY HH24:MI:SS'),
writeups.etic = eticin,
writeups.wucid = wucidin,
writeups.discrepancy = discrepancyin,
writeups.corrected = correctedin,
writeups.correctedtime =
TO_DATE (correctedtimein, 'MM/DD/YYYY HH24:MI:SS'),
writeups.correctiveaction = correctiveactionin
WHERE ((aircraftid = aircraftidin) AND (writeupid = writeupidin));
COMMIT;

--case where record updated to be pacer writeup, make other records for that aircraft non-pacer records

IF pacerin = 1
THEN
UPDATE writeups
SET pacer = 0
WHERE aircraftid = aircraftidin AND writeupid NOT IN writeupidin;
END IF;
COMMIT;

--Always update aircraft table with pacer writeup's etic
--update etic

SELECT etic
INTO et
FROM (SELECT etic
FROM writeups
WHERE aircraftid = aircraftidin
AND correctedtime IS NULL
AND pacer = 1
AND ROWNUM < 2
ORDER BY writeups.writeuptime DESC);
IF (et IS NOT NULL)
THEN
UPDATE aircraft
SET etic = et
WHERE aircraft.aircraftid = aircraftidin;
END IF;
END SPUPDATEWRITEUP@
