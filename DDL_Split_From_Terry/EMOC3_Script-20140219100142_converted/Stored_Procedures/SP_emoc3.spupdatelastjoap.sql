--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATELASTJOAP" (

JOAPDATAIDIN JOAPDATA.JOAPDATAID%TYPE,
ENGINEDATAIDIN JOAPDATA.ENGINEDATAID%TYPE,
SCHEDULEIDIN JOAPDATA.SCHEDULEID%TYPE,
MOCCONTROLLERIN JOAPDATA.MOCCONTROLLER%TYPE,
SAMPLEDATEIN VARCHAR,
JOAPIDIN JOAPDATA.JOAPID%TYPE,
REASONIN JOAPDATA.REASON%TYPE,
HOURSREQUIREDIN JOAPDATA.HOURSREQUIRED%TYPE,
HOURSREMAININGIN JOAPDATA.HOURSREMAINING%TYPE,
NOTIFIEDBYIN JOAPDATA.NOTIFIEDBY%TYPE,
EXPEDITERNOTIFIEDIN JOAPDATA.EXPEDITERNOTIFIED%TYPE,
JOAPLASTUPDATEDIN VARCHAR

)
AS
BEGIN
UPDATE JOAPDATA
SET

JOAPDATA.MOCCONTROLLER = MOCCONTROLLERIN,
JOAPDATA.SAMPLEDATE = TO_DATE(SAMPLEDATEIN,'MM/DD/YYYY HH24:MI:SS'),
JOAPDATA.JOAPID = JOAPIDIN,
JOAPDATA.REASON = REASONIN,
JOAPDATA.HOURSREQUIRED = HOURSREQUIREDIN,
JOAPDATA.HOURSREMAINING = HOURSREMAININGIN,
JOAPDATA.NOTIFIEDBY = NOTIFIEDBYIN,
JOAPDATA.EXPEDITERNOTIFIED = EXPEDITERNOTIFIEDIN,
JOAPDATA.JOAPLASTUPDATED = TO_DATE(JOAPLASTUPDATEDIN,'MM/DD/YYYY HH24:MI:SS')

WHERE ((JOAPDATAID = JOAPDATAIDIN));



END SPUPDATELASTJOAP;

 
 
 
 
 
 
 
 
@