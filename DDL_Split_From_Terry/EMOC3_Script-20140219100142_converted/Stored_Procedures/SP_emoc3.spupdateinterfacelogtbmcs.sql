--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEINTERFACELOGTBMCS" (
AIRCRAFTIDIN INTERFACELOG.AIRCRAFTID%TYPE,
INTERFACELOGIDIN INTERFACELOG.INTERFACELOGID%TYPE,
TIMEOFINSERTIN INTERFACELOG.TIMEOFINSERT%TYPE,
TBMCSMSGSUBJECTIN varchar2,
TBMCSMSGTYPEIN varchar2,
TBMCSONLYIN NUMBER,
TBMCSSUMMARYSENTIN DATE,
TBMCSXMLIN varchar2,
INTERFACECONTROLIDIN INTERFACELOG.INTERFACECONTROLID%TYPE

)
AS

BEGIN

INSERT INTO INTERFACELOG (INTERFACELOGID, AIRCRAFTID, TIMEOFINSERT, INTERFACECONTROLID )

VALUES (INTERFACELOGIDIN, AIRCRAFTIDIN, TIMEOFINSERTIN,  INTERFACECONTROLIDIN);

COMMIT;

END SPUPDATEINTERFACELOGTBMCS;
 
 
 
 
 
 
 
 
@
