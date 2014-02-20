--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."TBMCS_INTERFACE_METRICS" (
STARTDATE 		  		  DATE,
ENDDATE					  DATE,
P_CURSOR_ALL_AVG 		  OUT EMOC_TYPES.EMOC_CURSOR,
P_CURSOR_DAILY_AVG 		  OUT EMOC_TYPES.EMOC_CURSOR,
P_CURSOR_TOTAL_COUNT 	  OUT EMOC_TYPES.EMOC_CURSOR,
P_CURSOR_TOTAL_FAILED	  OUT EMOC_TYPES.EMOC_CURSOR,
P_CURSOR_LONG	   		  OUT EMOC_TYPES.EMOC_CURSOR,
P_CURSOR_FAILED  		  OUT EMOC_TYPES.EMOC_CURSOR,
P_CURSOR_CUSTOM  		  OUT EMOC_TYPES.EMOC_CURSOR
)
AS
BEGIN

--This procedure used to query TBMCSINTERFACELOG table and report on transaction metrics
--86400 is used b/c this is the number of seconds in a day

--average transaction Duration
OPEN P_CURSOR_ALL_AVG FOR
SELECT TO_CHAR(AVG(TBMCSRESPONSERECV - TBMCSMSGSENT) * 86400, 999.99) || ' seconds' "Avg Duration/All Trans."
FROM TBMCSINTERFACELOG
WHERE TBMCSMSGSENT BETWEEN STARTDATE AND (ENDDATE + 1);

--daily average transaction Duration
OPEN P_CURSOR_DAILY_AVG FOR
SELECT TO_CHAR(AVG(TBMCSRESPONSERECV - TBMCSMSGSENT) * 86400, 999.99) || ' seconds' "Avg Duration", COUNT(INTERFACELOGID) "# Trans.", TO_CHAR(TBMCSMSGSENT, 'MM/DD/YYYY') "Date"
FROM TBMCSINTERFACELOG
WHERE TBMCSMSGSENT BETWEEN (ENDDATE - 7) AND (ENDDATE + 1)
GROUP BY TO_CHAR(TBMCSMSGSENT, 'MM/DD/YYYY');

--total # transactions
OPEN P_CURSOR_TOTAL_COUNT FOR
SELECT COUNT(INTERFACELOGID) "Total # Trans."
FROM TBMCSINTERFACELOG
WHERE TBMCSMSGSENT BETWEEN STARTDATE AND (ENDDATE + 1);

--total # failed
OPEN P_CURSOR_TOTAL_FAILED FOR
SELECT COUNT(INTERFACELOGID) "# of Trans."
FROM TBMCSINTERFACELOG
WHERE TBMCSMSGSENT BETWEEN STARTDATE AND (ENDDATE + 1)
AND ((TBMCSRESPONSERECV IS NOT NULL
AND TBMCSRESPONSE NOT LIKE 'EMOC to TBMCS Transaction%completed successfully%')
OR TBMCSRESPONSE IS NULL);

--long running transactions
OPEN P_CURSOR_LONG FOR
SELECT * FROM (
SELECT INTERFACELOGID "ID", TBMCSMSGSENT "Time Sent", TO_CHAR(MAX(TBMCSRESPONSERECV - TBMCSMSGSENT) * 86400, 999) || ' seconds' "Duration", UPDATEMETHOD "Trans. Type"
FROM TBMCSINTERFACELOG
WHERE TBMCSMSGSENT BETWEEN sysdate - 7 AND (sysdate + 1)
GROUP BY INTERFACELOGID, TBMCSMSGSENT, UPDATEMETHOD
ORDER BY MAX(TBMCSRESPONSERECV - TBMCSMSGSENT) DESC )
WHERE ROWNUM <= 7;

--grouping of failed by type
OPEN P_CURSOR_FAILED FOR
SELECT COUNT(INTERFACELOGID) "# of Trans.", UPDATEMETHOD "Trans. Type"
FROM TBMCSINTERFACELOG
WHERE TBMCSMSGSENT BETWEEN STARTDATE AND (ENDDATE + 1)
AND ((TBMCSRESPONSERECV IS NOT NULL
AND TBMCSRESPONSE NOT LIKE 'EMOC to TBMCS Transaction%completed successfully%')
OR TBMCSRESPONSE IS NULL)
GROUP BY UPDATEMETHOD;

--use temp dummy select. users can replace with their own custom sql for report
OPEN P_CURSOR_CUSTOM FOR
SELECT TO_CHAR(SYSDATE, 'MM/DD/YYYY') "Today's Date:"
FROM DUAL;

END TBMCS_INTERFACE_METRICS;

 
 
 
 
 
 
 
 
@