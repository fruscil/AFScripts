--<ScriptOptions statementTerminator="@"/>

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 13298
	Relative Current Chunk Line Number: 13298
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character ' = 1 --updater role\nORDER BY SQFLIGHT;\n\nEND GET_CAMS_SCHEDULE_FOR_USER;\n\n[CREATE]'
------------

The following statement (from line 13260 to 13296) and was skipped" BEGIN*/
 CREATE PROCEDURE             "EMOC3"."GET_CAMS_SCHEDULE_FOR_USER"  (
USERIDIN      USERS.USERID%TYPE,
MOCIDIN          WINGS.MOCID%TYPE,
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR
)
AS
/******************************************************************************
   NAME:       GET_CAMS_SCHEDULE_FOR_USER
   PURPOSE:

   REVISIONS:
   Ver        Date           Author           Description
   ---------  ----------        ---------------  ------------------------------------
   1.0      12/30/2006   r mcbride       1. Created this procedure.
   1.1      02/07/2011   FE              1. Added fix for QC 460

   NOTES:

******************************************************************************/
BEGIN

  --Use to create CAMS 174 transactions for each Unit/MDS at specific date/time
  OPEN P_CURSOR FOR
  SELECT DISTINCT AIRCRAFTMDS, WINGNAME, ELC, wings.UNITID, WORKCENTERCODE, flights.SQUADRONID, SHORTNAME || '/' || wings.UNITID || WORKCENTERCODE || '/' || AIRCRAFTMDS "SQFLIGHT"
  FROM emoc3.AIRCRAFT AC
  JOIN emoc3.AIRCRAFTMDS MDS ON AC.AIRCRAFTMDSID = MDS.AIRCRAFTMDSID
  JOIN emoc3.SQUADRONS SQ ON AC.SQUADRONID = SQ.SQUADRONID
  JOIN emoc3.WINGS ON WINGS.WINGID = SQ.WINGID
  JOIN emoc3.FLIGHTS ON FLIGHTS.SQUADRONID = SQ.SQUADRONID
  JOIN emoc3.WORKCENTERS WK ON WK.WORKCENTERID = FLIGHTS.WORKCENTERID
  JOIN emoc3.PERMISSIONS ON PERMISSIONS.SQUADRONID = SQ.SQUADRONID
  JOIN emoc3.USERS ON USERS.USERID = PERMISSIONS.USERID
Where emoc3.wings.mocid = MOCIDIN
AND PERMISSIONS.EMOCROLE = 1 --updater role
ORDER BY SQFLIGHT;

END GET_CAMS_SCHEDULE_FOR_USER@
