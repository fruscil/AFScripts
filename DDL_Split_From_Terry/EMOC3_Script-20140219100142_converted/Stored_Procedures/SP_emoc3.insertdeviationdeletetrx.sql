--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTDEVIATIONDELETETRX" (
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   isortiedatein     VARCHAR2,
   sortiedatein                  VARCHAR2,
   schedblknumin     VARCHAR2,
   equipidin         VARCHAR2,
   sortienumberin      VARCHAR2,
   sortiemodifierin              VARCHAR2,
   mainteventidin                VARCHAR2,
   devcodein                     VARCHAR2,
   devcausecodein                VARCHAR2,
   chargeindin                   VARCHAR2
)
AS
   tmpvar   NUMBER;
   /******************************************************************************
   NAME:       INSERTDEVIATIONDELETETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     INSERTDEVIATIONDELETETRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       deviationdeletetrx)

******************************************************************************/
BEGIN
   SELECT seq_deviationdelete.NEXTVAL
     INTO tmpvar
     FROM DUAL;

     INSERT INTO EMOC3.DEVIATIONDELETETRX (
       DEVIATIONDELETETRXID, HOMEENTERPRISELOCATIONCODE,
   CURRENTENTERPRISELOCATIONCODE, UNITID, SORTIEDATE, SCHEDULINGBLOCKNUMBER,
   EQUIPMENTID, SORTIENUMBER, SORTIEMODIFIER, MAINTENANCEEVENTID,
      DEVIATIONCODE, DEVIATIONCAUSECODE, CHARGEABLEINDICATOR, DATEPROCESSED)
  VALUES (tmpvar, homeelcin, currentelcin, unitidin, isortiedatein, schedblknumin,
     equipidin, sortienumberin, sortiemodifierin, mainteventidin,
    devcodein, devcausecodein, chargeindin, SYSDATE);

  IF schedblknumin IS NOT NULL THEN
   DELETEBLKDEVIATIONFROMIMDS(homeelcin, currentelcin, unitidin, isortiedatein, sortiedatein,
     schedblknumin, equipidin, sortienumberin, sortiemodifierin, mainteventidin,
    devcodein, devcausecodein, chargeindin);
  ELSE
    DELETEDEVIATIONFROMIMDS(homeelcin, currentelcin, unitidin, isortiedatein, sortiedatein,
     schedblknumin, equipidin, sortienumberin, sortiemodifierin, mainteventidin,
    devcodein, devcausecodein, chargeindin);
  END IF;

--EXCEPTION
 --  WHEN NO_DATA_FOUND
 --  THEN
 --     NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END INSERTDEVIATIONDELETETRX;
 
 
 
 
 
 
 
 
@
