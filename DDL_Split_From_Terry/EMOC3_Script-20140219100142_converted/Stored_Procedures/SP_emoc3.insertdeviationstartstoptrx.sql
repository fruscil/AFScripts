--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTDEVIATIONSTARTSTOPTRX" (
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   isortiedatein     VARCHAR2,
   sortiedatein                  VARCHAR2,
   equipidin        VARCHAR2,
   sortienumberin      VARCHAR2,
   sortiemodifierin              VARCHAR2,
   mainteventidin                VARCHAR2,
   schedblknumin                 VARCHAR2,
   devcodein                     VARCHAR2,
   devcausecodein                VARCHAR2,
   chargeindin                   VARCHAR2,
   istartdatein      VARCHAR2,
   startdatein      VARCHAR2,
   starttimein                   VARCHAR2,
   istopdatein      VARCHAR2,
   stopdatein                    VARCHAR2,
   stoptimein      VARCHAR2,
   devremarksin                  VARCHAR2
)
AS
   tmpvar   NUMBER;
   /******************************************************************************
   NAME:       INSERTDEVIATIONSTARTSTOPTRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     INSERTDEVIATIONSTARTSTOPTRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       deviationstartstoptrx)

******************************************************************************/
BEGIN
   SELECT seq_deviationstartstop.NEXTVAL
     INTO tmpvar
     FROM DUAL;

     INSERT INTO EMOC3.DEVIATIONSTARTSTOPTRX (
       DEVIATIONSTARTSTOPTRXID, HOMEENTERPRISELOCATIONCODE,
   CURRENTENTERPRISELOCATIONCODE, UNITID, SORTIEDATE,
   EQUIPMENTID, SORTIENUMBER, SORTIEMODIFIER, MAINTENANCEEVENTID,
      SCHEDULINGBLOCKNUMBER, DEVIATIONCODE, DEVIATIONCAUSECODE, CHARGEABLEINDICATOR,
      STARTDATE, STARTTIME, STOPDATE, STOPTIME, DEVIATIONREMARKS,
   DATEPROCESSED)
  VALUES (tmpvar, homeelcin, currentelcin, unitidin, isortiedatein,
     equipidin, sortienumberin, sortiemodifierin, mainteventidin,
    schedblknumin, devcodein, devcausecodein, chargeindin, istartdatein,
    starttimein, istopdatein, stoptimein, devremarksin, SYSDATE);

  IF schedblknumin IS NOT NULL THEN
   INSERTBLKDEVSTARTSTOPFROMIMDS(homeelcin, currentelcin, unitidin, isortiedatein,
     sortiedatein, equipidin, sortienumberin, sortiemodifierin, mainteventidin,
    schedblknumin, devcodein, devcausecodein, chargeindin, istartdatein,
    startdatein, starttimein, istopdatein, stopdatein, stoptimein, devremarksin);
  ELSE
   INSERTDEVSTARTSTOPFROMIMDS(homeelcin, currentelcin, unitidin, isortiedatein,
     sortiedatein, equipidin, sortienumberin, sortiemodifierin, mainteventidin,
    schedblknumin, devcodein, devcausecodein, chargeindin, istartdatein,
    startdatein, starttimein, istopdatein, stopdatein, stoptimein, devremarksin);
  END IF;

--EXCEPTION
 --  WHEN NO_DATA_FOUND
--   THEN
--      NULL;
--   WHEN OTHERS
--   THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END INSERTDEVIATIONSTARTSTOPTRX;
 
 
 
 
 
 
 
 
@
