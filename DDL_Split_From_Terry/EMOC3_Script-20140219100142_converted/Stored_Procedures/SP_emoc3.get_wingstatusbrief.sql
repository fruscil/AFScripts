--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WINGSTATUSBRIEF" (
MOCIDIN     BRIEF_WING_STATUS_VIEW.MOCID%TYPE,
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT wing AS wing,
    squadron AS squadron,
 squadronid AS squadronid,
    SUM(DECODE(trim(statuscode),'NMCBL',1,'NMCBB',1,'NMCBK',1,'NMCBA',1,'NMCMC',1,'NMCMD',1,'NMCMM',1,'NMCMN',1,'NMCSE',1,'NMCSP',1,'FMC',1,'FMCF',1,'PMCSH',1,'PMC',1,'PMCMG',1,'PMCBF',1,0)) AS commposs,
    SUM(DECODE(trim(possessioncode),'B',1,0)) AS noncommposs,
    SUM(DECODE(trim(possessioncode),'D',1,0)) AS nonposs,
    SUM(DECODE(trim(statuscode),'FMC',1,'FMCF',1,'PMCSH',1,'PMC',1,'PMCMG',1,'PMCBF',1,0)) AS mc,
    SUM(DECODE(trim(statuscode),'FMC',1,0)) AS fmc,
    SUM(DECODE(trim(statuscode),'NMCSE',1,'NMCSP',1,0)) AS ns,
    SUM(DECODE(trim(statuscode),'NMCMC',1,'NMCMD',1,'NMCMM',1,'NMCMN',1,0)) AS nm,
    SUM(DECODE(trim(statuscode),'NMCBL',1,'NMCBB',1,'NMCBK',1,'NMCBA',1,0)) AS nb,
    SUM(DECODE(trim(statuscode),'PMCSH',1,0)) AS ps,
    SUM(DECODE(trim(statuscode),'PMC',1,'PMCMG',1,0)) AS pm, --dong have this code
    SUM(DECODE(trim(statuscode),'PMCBF',1,0)) AS pb,
    SUM(DECODE(trim(possessioncode),'T',1,0)) AS TX
FROM BRIEF_WING_STATUS_VIEW
WHERE MOCID = MOCIDIN
GROUP BY wing, squadron, squadronid;


END GET_WINGSTATUSBRIEF;
 
 
 
 
 
 
 
 
@
