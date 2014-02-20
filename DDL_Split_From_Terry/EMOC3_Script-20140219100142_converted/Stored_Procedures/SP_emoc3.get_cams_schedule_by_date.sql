--<ScriptOptions statementTerminator="@"/>


/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 12392
	Relative Current Chunk Line Number: 12392
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character ') = TO_CHAR(DATETIMEIN, 'HH24MI');\n\nEND GET_CAMS_SCHEDULE_BY_DATE;\n\n[CREATE]'
------------

The following statement (from line 12353 to 12390) and was skipped" BEGIN*/
 CREATE PROCEDURE                 "EMOC3"."GET_CAMS_SCHEDULE_BY_DATE" (
DATETIMEIN DATE,
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR
)
/******************************************************************************
   NAME:       GET_CAMS_SCHEDULE_BY_DATE
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        6/13/13     DAVID TSAI       Specified the table for the SQUADRONID
					   to fix the compile error during the upgrade
					   from 11gR1 to 11gR2.



******************************************************************************/

AS
BEGIN

  --Use to create CAMS 174 transactions for each Unit/MDS at specific date/time
  OPEN P_CURSOR FOR
  SELECT DISTINCT AIRCRAFTMDS, WINGNAME, ELC, wings.UNITID, WORKCENTERCODE, AC.SQUADRONID,
  (SELECT USERID FROM USERS WHERE USERNAME='emocadmin') as adminuserid,
  (select imdsloginid from imdslogins where userid = (select USERID FROM USERS WHERE USERNAME='emocadmin')
     and wingid =  wings.wingid) as imdsloginid
  FROM AIRCRAFT AC
  JOIN AIRCRAFTMDS MDS ON AC.AIRCRAFTMDSID = MDS.AIRCRAFTMDSID
  JOIN SQUADRONS SQ ON AC.SQUADRONID = SQ.SQUADRONID
  JOIN WINGS ON WINGS.WINGID = SQ.WINGID
  JOIN FLIGHTS ON FLIGHTS.SQUADRONID = SQ.SQUADRONID
  JOIN WORKCENTERS WK ON WK.WORKCENTERID = FLIGHTS.WORKCENTERID
  WHERE TO_CHAR(SCHEDULEDOW) = TO_CHAR(DATETIMEIN, 'D')
  AND TO_CHAR(SCHEDULETIME) = TO_CHAR(DATETIMEIN, 'HH24MI');

END GET_CAMS_SCHEDULE_BY_DATE@
