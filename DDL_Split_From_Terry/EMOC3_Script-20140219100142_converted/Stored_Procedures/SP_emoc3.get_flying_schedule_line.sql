--<ScriptOptions statementTerminator="@"/>

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 12519
	Relative Current Chunk Line Number: 12519
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character ' THEN\n        NULL;\nEND GET_FLYING_SCHEDULE_LINE;\n\n[CREATE]'
------------

The following statement (from line 12392 to 12517) and was skipped" BEGIN*/
 CREATE PROCEDURE                 "EMOC3"."GET_FLYING_SCHEDULE_LINE" (
P_CURSOR OUT    EMOC_TYPES.EMOC_CURSOR,
SCHEDULEIDIN    SCHEDULE.SCHEDULEID%TYPE
)
/******************************************************************************
   NAME:       GET_FLYING_SCHEDULE_LINE
   PURPOSE:    Returns Schedule for the specified ID

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        6/24/03      A.Mitchell       1. Created this procedure.
   2.0		  3/28/13	   JACL				2. Edit CAUSECODEID from Flyboard

   PARAMETERS:
   INPUT:
   *SCHEDULEIDIN
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
  SELECT SC.SCHEDULEID,
    SC.GO,
   SC.SCHEDULEDTAKEOFF,
   SC.SCHEDULEDLANDING,
   SC.ACTUALTAKEOFF,
   SC.ACTUALLANDING,
   SC.SPARE,
   SC.ADJTAKEOFF,
   SC.ADJLANDING,
   SC.AREAARRIVETIME,
   SC.AREALEAVETIME,
   SC.CALLSIGN,
   SQ.SQUADRONNAME,
   LC.LANDINGCODE,
   RG.RANGE,
   DC.DEVIATIONCODE,
   CC.CAUSECODE,
   WX.WEATHERCODE,
   MI.MISSION,
   AR.AREA,
   SC.AIRCRAFTID,
   PT.PILOTNAME,
   SC.SORTIENUM,
   SC.SORTIEMOD,
   SC.SORTIEDATE,
   AC.SHORTTAILNUMBER,
   SC.SQUADRONID,
   AC.LOCATIONCODE,
   CO.COLORVALUE,        --ROW COLOR FOR CONDITIONSTATUS
   MDS.AIRCRAFTMDS,
   ST.ICONNAME,
   ST.STATUSCODE,
   CO2.COLORVALUE ROWCOLOR, --ROW COLOR FOR DEVIATIONS
   FU.FUELSTATUS,
   SC.CONFIGCODE,
   SC.SORTIE_JOAP,
   SC.SORTIE_SEMEDX,
   SC.SCHEDDAY,
   REM1.REMARKS MAINTENANCEREMARKS,
   REM2.REMARKS,
   SC.SCHEDULEREMARKS,
   SC.MAINTREMARKS,
   WG.WINGID,
   WG.UNITID,
   NVL(SC.PUBLISHED_FLAG, 0) PUBLISHED_FLAG,
   AC.LASTFLOWNTIME,
   AC.FUELLOAD,
   SC.BLOCKNUMBER,
   SC.TYPE_EVENT,
   SC.SCHEDULESOURCE,
   AC.CHAFF,
   AC.FLARE,
   AC.AIRCRAFTYEAR,
   AC.TMEFLOWNSINCEPHASEDATE,
    SC.LANDINGCODEID,
    SC.WXCODEID,
    SC.PILOTID,
    SC.AREAID,
    SC.RANGEID,
    SC.MISSIONID,
    CS.FLYABLE,
    MDS.PHASEUNIT,
    AC.MISEQUIPID,
	SC.CAUSECODEID
  FROM SCHEDULE SC
   LEFT JOIN AIRCRAFT AC ON SC.AIRCRAFTID = AC.AIRCRAFTID
   LEFT JOIN SQUADRONS SQ ON SC.SQUADRONID = SQ.SQUADRONID
   LEFT JOIN LANDINGCODES LC ON SC.LANDINGCODEID = LC.LANDINGCODEID
   LEFT JOIN RANGES RG ON SC.RANGEID = RG.RANGEID
   LEFT JOIN DEVIATIONCODES DC ON SC.DEVIATIONCODEID = DC.DEVIATIONCODEID
   LEFT JOIN CAUSECODES CC ON SC.CAUSECODEID = CC.CAUSECODEID
   LEFT JOIN WX ON SC.WXCODEID = WX.WXCODEID
   LEFT JOIN MISSIONS MI ON SC.MISSIONID = MI.MISSIONID
   LEFT JOIN AREAS AR ON SC.AREAID = AR.AREAID
   LEFT JOIN PILOT PT ON SC.PILOTID = PT.PILOTID
   LEFT JOIN CONDITIONCODES CD ON AC.CONDITIONCODEID = CD.CONDCODEID
   LEFT JOIN CONDITIONSTATUS CS ON CD.CONDSTATID = CS.CONDSTATID
   LEFT JOIN COLORS CO ON CS.COLORID = CO.COLORID
   LEFT JOIN AIRCRAFTMDS MDS ON AC.AIRCRAFTMDSID = MDS.AIRCRAFTMDSID
   LEFT JOIN STATUSCODE ST ON AC.STATUSCODEID = ST.STATUSCODEID
   LEFT JOIN COLORS CO2 ON DC.COLORID = CO2.COLORID
   LEFT JOIN FUEL FU ON AC.FUELSTATUSID = FU.FUELSTATUSID
   LEFT JOIN REMARKS REM1 ON REM1.REMARKSID = MAINTREMARKS
   LEFT JOIN REMARKS REM2 ON REM2.REMARKSID = SCHEDULEREMARKS
   JOIN WINGS WG ON SQ.WINGID = WG.WINGID
  WHERE SC.SCHEDULEID = SCHEDULEIDIN;

    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        NULL;
      WHEN OTHERS THEN
        NULL;
END GET_FLYING_SCHEDULE_LINE@