--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPINSERTSCHEDULESTATUS" (

SCHEDULEIDIN SCHEDULESTATUS.SCHEDULEID%TYPE,
STATUSCODEIDIN SCHEDULESTATUS.STATUSCODEID%TYPE,
STATUSTIMEIN VARCHAR,
STATUSTYPEIN SCHEDULESTATUS.STATUSTYPE%TYPE

)
AS
COUNTER INTEGER;
ROW_ID INTEGER;
BEGIN
--INCREMENT
	 SELECT SEQ_SCHEDULESTATUS.NEXTVAL
	 INTO   ROW_ID
	 FROM   DUAL;

IF STATUSTYPEIN = '0' THEN
   INSERT INTO SCHEDULESTATUS (SCHEDULESTATUSID, SCHEDULEID, STATUSCODEID, STATUSTIME, STATUSTYPE)
   VALUES (ROW_ID, SCHEDULEIDIN, STATUSCODEIDIN, TO_DATE(STATUSTIMEIN,'MM/DD/YYYY HH24:MI:SS'), STATUSTYPEIN);
ELSE --IF STATUSTYPEIN = '1' THEN
   INSERT INTO SCHEDULESTATUS (SCHEDULESTATUSID, SCHEDULEID, FUELSTATUSID, STATUSTIME, STATUSTYPE)
   VALUES (ROW_ID, SCHEDULEIDIN, STATUSCODEIDIN, TO_DATE(STATUSTIMEIN,'MM/DD/YYYY HH24:MI:SS'), STATUSTYPEIN);
END IF;


END SPINSERTSCHEDULESTATUS;
 
 
 
 
 
 
 
 
@
