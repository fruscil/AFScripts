--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_DAILYFLYINGSCHEDULEBRIEF" (
P_CURSOR OUT    EMOC_TYPES.EMOC_CURSOR,
SORTIEDATEIN      SCHEDULE.SORTIEDATE%TYPE,
MOCIDIN     SQUADRONS.MOCID%TYPE
)
/******************************************************************************
   NAME:       GET_SCHEDULE_BY_SQUADRON_TOTAL
   PURPOSE:    Returns Schedules for the specified squadron with
         text values for codes (JOAP, Fuel, etc.) filled.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        5/14/03      A.Mitchell       1. Created this procedure.
   1.1    6/2/03    A.Mitchell  2. Changed SORTIEDATE to SCHEDDAY
   1.2    6/16/03    A.Mitchell  3. Added Schedule Deviations table support
   1.3    2/1/04    A.Mitchell  4. Added UNION used to show previous day's planes flying
   PARAMETERS:
   INPUT:
   *SQUADRONIDIN
   *SORTIEDATESTART
   OUTPUT:
   *P_CURSOR
   RETURNED VALUE:
   CALLED BY:
   CALLS:
   EXAMPLE USE:
   ASSUMPTIONS:
   LIMITATIONS:
   ALGORITHM:
   NOTES:

******************************************************************************/

AS

BEGIN

    OPEN P_CURSOR FOR
    SELECT SC.SCHEDULEID AS scheduleid,
     TO_CHAR(SC.SCHEDULEDTAKEOFF, 'DD_MON_YY HH24:MI') AS schto,
     TO_CHAR(SC.SCHEDULEDLANDING, 'DD_MON_YY HH24:MI') AS schland,
     TO_CHAR(SC.ACTUALTAKEOFF, 'DD_MON_YY HH24:MI') AS actto,
     TO_CHAR(SC.ACTUALLANDING, 'DD_MON_YY HH24:MI') AS actland,
     SC.CALLSIGN AS callsign,
     SQ.SHORTNAME AS squadron,
     SQ.SQUADRONID AS squadronid,
     LC.LANDINGCODE AS landingstatus,
     PO.POSSESSIONCODE AS possession,
     DC.DEVIATIONCODE AS deviation,
     CC.CAUSECODE AS causecode,
     SC.SORTIENUM AS linenumber,
     AC.SHORTTAILNUMBER AS tailnumber,
     ST.STATUSCODE AS statuscode,
     TO_CHAR(AC.FUELSTATUSTIME, 'DD_MON_YY HH24:MI') AS fueltime,
     JP.JOAPCODE AS joapcode,
     RM.REMARKS AS remarks
    FROM SCHEDULE SC
     LEFT JOIN AIRCRAFT AC ON SC.AIRCRAFTID = AC.AIRCRAFTID
     LEFT JOIN SQUADRONS SQ ON SC.SQUADRONID = SQ.SQUADRONID
     LEFT JOIN LANDINGCODES LC ON SC.LANDINGCODEID = LC.LANDINGCODEID
     LEFT JOIN DEVIATIONCODES DC ON SC.DEVIATIONCODEID = DC.DEVIATIONCODEID
     LEFT JOIN POSSESSIONS PO ON AC.POSSESSIONID = PO.POSSESSIONID
     LEFT JOIN CAUSECODES CC ON SC.CAUSECODEID = CC.CAUSECODEID
     LEFT JOIN WX ON SC.WXCODEID = WX.WXCODEID
     LEFT JOIN PILOT PT ON SC.PILOTID = PT.PILOTID
     LEFT JOIN CONDITIONCODES CD ON AC.CONDITIONCODEID = CD.CONDCODEID
     LEFT JOIN CONDITIONSTATUS CS ON CD.CONDSTATID = CS.CONDSTATID
     LEFT JOIN AIRCRAFTMDS MDS ON AC.AIRCRAFTMDSID = MDS.AIRCRAFTMDSID
     LEFT JOIN STATUSCODE ST ON AC.STATUSCODEID = ST.STATUSCODEID
     LEFT JOIN REMARKS RM ON SC.SCHEDULEREMARKS = RM.REMARKSID
     LEFT JOIN JOAPDATA JD ON SC.SCHEDULEID = JD.SCHEDULEID
     LEFT JOIN JOAP JP ON JP.JOAPID = JD.JOAPID
     JOIN WINGS WG ON SQ.WINGID = WG.WINGID
    WHERE SC.SORTIEDATE = SORTIEDATEIN
 AND SQ.MOCID = MOCIDIN;

   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       NULL;
     WHEN OTHERS THEN
       NULL;
END GET_DAILYFLYINGSCHEDULEBRIEF;
 
 
 
 
 
 
 
 
@
