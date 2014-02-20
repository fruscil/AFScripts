--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_HQBRIEF" (
MOCIDIN     AIRCRAFT.MOCID%TYPE,
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT AC.AIRCRAFTID AS hqbriefid,
    NULL AS show,--show, --not db, userd entered
    AM.AIRCRAFTMDS AS mds,
    AC.SHORTTAILNUMBER AS tailnumber,
    SQ.SHORTNAME AS squadron,
    SQ.SQUADRONID AS squadronid,
    TO_CHAR(AC.LASTFLOWNTIME, 'DD_MON_YY') AS lastflowndate,
    NULL AS projected, --projected, -- user enters
    TO_CHAR(AC.LASTFLOWNTIME + 31, 'DD_MON_YY') AS hqdate, --h/q date, --Last flown + 31 days
    CC.CONDITIONCODE AS status,
    AC.ETIC AS etic,
    NULL AS estimatedflydate, --estimated fly date, --user entered
    TRUNC(SYSDATE - AC.LASTFLOWNTIME) AS daysdown, --daysdown, --calculated from last flown date - today
    RM.REMARKS AS remarks
FROM AIRCRAFT AC
LEFT JOIN HANGER_QUEEN_CODE HQ ON AC.HANGERQUEENSTATUS = HQ.HQCODEID
LEFT JOIN AIRCRAFTMDS AM ON AC.AIRCRAFTMDSID = AM.AIRCRAFTMDSID
LEFT JOIN SQUADRONS SQ ON AC.SQUADRONID = SQ.SQUADRONID
LEFT JOIN CONDITIONCODES CC ON AC.CONDITIONCODEID = CC.CONDCODEID
LEFT JOIN REMARKS RM ON AC.REMARKSID = RM.REMARKSID
LEFT JOIN POSSESSIONS PS ON AC.POSSESSIONID = PS.POSSESSIONID
WHERE (SYSDATE - AC.LASTFLOWNTIME) > 30
AND (PS.POSSESSIONCODE NOT LIKE 'P%' OR AC.POSSESSIONID IS NULL)
AND AC.MOCID = MOCIDIN;

END GET_HQBRIEF;
 
 
 
 
 
 
 
 
@
