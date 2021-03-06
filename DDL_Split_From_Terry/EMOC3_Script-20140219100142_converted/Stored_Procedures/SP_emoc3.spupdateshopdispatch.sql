--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATESHOPDISPATCH" (

SHOPDISPATCHIDIN SHOPDISPATCH.SHOPDISPATCHID%TYPE,
AIRCRAFTIDIN SHOPDISPATCH.AIRCRAFTID%TYPE,
COMPLETIONDATEIN VARCHAR,
DISCREPANCYIN SHOPDISPATCH.DISCREPANCY%TYPE,
ETICSHOWTIMEIN VARCHAR,
PERSONCONTACTEDIN SHOPDISPATCH.PERSONCONTACTED%TYPE,
PERSONDISPATCHEDIN SHOPDISPATCH.PERSONDISPATCHED%TYPE,
REQUESTDATEIN VARCHAR,
REQUESTERIN SHOPDISPATCH.REQUESTER%TYPE,
SQDISPATCHEDTOIDIN SHOPDISPATCH.SQDISPATCHEDTOID%TYPE,
WORKCENTERIDIN SHOPDISPATCH.WORKCENTERID%TYPE

)
AS

BEGIN

UPDATE SHOPDISPATCH
SET AIRCRAFTID=AIRCRAFTIDIN,
	COMPLETIONDATE=TO_DATE(COMPLETIONDATEIN, 'MM/DD/YYYY HH24:MI:SS'),
	DISCREPANCY=DISCREPANCYIN,
	ETICSHOWTIME=TO_DATE(ETICSHOWTIMEIN, 'MM/DD/YYYY HH24:MI:SS'),
	PERSONCONTACTED=PERSONCONTACTEDIN,
	PERSONDISPATCHED=PERSONDISPATCHEDIN,
	REQUESTDATE=TO_DATE(REQUESTDATEIN, 'MM/DD/YYYY HH24:MI:SS'),
	REQUESTER=REQUESTERIN,
	SQDISPATCHEDTOID=SQDISPATCHEDTOIDIN,
	WORKCENTERID=WORKCENTERIDIN

WHERE SHOPDISPATCHID=SHOPDISPATCHIDIN;


END SPUPDATESHOPDISPATCH;

 
 
 
 
 
 
 
 
@
