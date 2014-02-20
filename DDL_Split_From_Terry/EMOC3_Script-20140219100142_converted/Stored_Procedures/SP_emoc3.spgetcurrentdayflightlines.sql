--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE                                   "EMOC3"."SPGETCURRENTDAYFLIGHTLINES"
(
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR,
AIRCRAFTIDIN AIRCRAFT.AIRCRAFTID%TYPE,
SORTIEDATEIN SCHEDULE.SCHEDULEDTAKEOFF%TYPE)
/******************************************************************************
   NAME:       SPGETCURRENTDAYFLIGHTLINES
   PURPOSE:
   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        7/11/03      A.Mitchell       1. Created this procedure.
   1.1        9/04/09      J.C.             2. Modified to use SORTIEDATEIN
                                               vice SYSDATE (QC392)
   1.2        2/01/12      D.T.             Modified to show the deviation code
******************************************************************************/
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
/*requires attention:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 12209
	Relative Current Chunk Line Number: 12209
	Column Number: 6
------------
 
-------------
Error Message
	Message: no viable alternative at character ' "SCHEDDAY",\n\ndc.deviationcode,\ndc0.deviationcode "TAILSWP_SPARE"\n\nFROM ([(]'
------------

The following statement (from line 12193 to 12224) and was skipped" begin*/
 OPEN P_CURSOR FOR

SELECT
schedule.scheduleid,
schedule.aircraftid,
schedule.sortienum,
schedule.callsign,
TO_CHAR(schedule.ACTUALTAKEOFF, 'MM/DD/YYYY HH24:MI:SS') "ACTUALTAKEOFF",
TO_CHAR(schedule.ACTUALLANDING, 'MM/DD/YYYY HH24:MI:SS') "ACTUALLANDING",
TO_CHAR(schedule.SCHEDULEDTAKEOFF, 'MM/DD/YYYY HH24:MI:SS') "SCHEDULEDTAKEOFF",
TO_CHAR(schedule.SCHEDULEDLANDING, 'MM/DD/YYYY HH24:MI:SS') "SCHEDULEDLANDING",
TO_CHAR(schedule.SCHEDDAY, 'MM/DD/YYYY') "SCHEDDAY",

dc.deviationcode,
dc0.deviationcode "TAILSWP_SPARE"

FROM (((schedule schedule left join  scheduledeviations
on schedule.scheduleid = scheduledeviations.scheduleid)
 left join deviationcodes dc
 on scheduledeviations.deviationcodeid = dc.deviationcodeid))
 left join deviationcodes dc0
 on schedule.deviationcodeid = dc0.deviationcodeid

WHERE ((   (TO_CHAR(schedule.SCHEDULEDTAKEOFF, 'MM/DD/YYYY') = TO_CHAR(SORTIEDATEIN, 'MM/DD/YYYY'))
        OR (TO_CHAR(schedule.SCHEDULEDLANDING, 'MM/DD/YYYY') = TO_CHAR(SORTIEDATEIN, 'MM/DD/YYYY')))
        AND (schedule.aircraftid = AIRCRAFTIDIN))



ORDER BY SCHEDULE.SCHEDULEDTAKEOFF;


/*requires attention end*/
END SPGETCURRENTDAYFLIGHTLINES;

@
