--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEENGINERUN" (

ENGINELOGIDIN ENGINERUNLOG.ENGINELOGID%TYPE,
ABSTARTIN ENGINERUNLOG.ABSTART%TYPE,
ABSTOPIN ENGINERUNLOG.ABSTOP%TYPE,
EMPLOYEENUMBERIN ENGINERUNLOG.EMPLOYEENUMBER%TYPE,
ENGINEDATAIDIN ENGINERUNLOG.ENGINEDATAID%TYPE,
IDLESTARTIN ENGINERUNLOG.IDLESTART%TYPE,
IDLESTOPIN ENGINERUNLOG.IDLESTOP%TYPE,
LASTUPDATEIN VARCHAR,
LASTUPDATEBYIN ENGINERUNLOG.LASTUPDATEBY%TYPE,
MILSTARTIN ENGINERUNLOG.MILSTART%TYPE,
MILSTOPIN ENGINERUNLOG.MILSTOP%TYPE,
MISUPDATEDIN ENGINERUNLOG.MISUPDATED%TYPE,
MOCCONTROLLERIN ENGINERUNLOG.MOCCONTROLLER%TYPE,
QUALCHECKEDIN ENGINERUNLOG.QUALCHECKED%TYPE,
REASONIN ENGINERUNLOG.REASON%TYPE,
RUNDATEIN VARCHAR,
RUNPERSONIN ENGINERUNLOG.RUNPERSON%TYPE,
SPAPPROVALIN ENGINERUNLOG.SPAPPROVAL%TYPE,
STANDBYFIRETRUCKIN ENGINERUNLOG.STANDBYFIRETRUCK%TYPE,
TOWERRUNCLEARANCEIN ENGINERUNLOG.TOWERRUNCLEARANCE%TYPE,
AIRCRAFTIDIN ENGINERUNLOG.AIRCRAFTID%TYPE


)
AS

BEGIN

UPDATE ENGINERUNLOG
SET ABSTART=ABSTARTIN,
	ABSTOP=ABSTOPIN,
	EMPLOYEENUMBER=EMPLOYEENUMBERIN,
	ENGINEDATAID=ENGINEDATAIDIN,
	IDLESTART=IDLESTARTIN,
	IDLESTOP=IDLESTOPIN,
	LASTUPDATE=TO_DATE(LASTUPDATEIN, 'MM/DD/YYYY HH24:MI:SS'),
	LASTUPDATEBY=LASTUPDATEBYIN,
	MILSTART=MILSTARTIN,
	MILSTOP=MILSTOPIN,
	MISUPDATED=MISUPDATEDIN,
	MOCCONTROLLER=MOCCONTROLLERIN,
	QUALCHECKED=QUALCHECKEDIN,
	REASON=REASONIN,
	RUNDATE=TO_DATE(RUNDATEIN, 'MM/DD/YYYY HH24:MI:SS'),
	RUNPERSON=RUNPERSONIN,
	SPAPPROVAL=SPAPPROVALIN,
	STANDBYFIRETRUCK=STANDBYFIRETRUCKIN,
	TOWERRUNCLEARANCE=TOWERRUNCLEARANCEIN,
	AIRCRAFTID = AIRCRAFTIDIN

WHERE ENGINELOGID=ENGINELOGIDIN;


END SPUPDATEENGINERUN;

 
 
 
 
 
 
 
 
@