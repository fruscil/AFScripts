--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTOPEREVENTUPDATETRX" (
   oeutransidin           NUMBER,
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   isortiedatein     VARCHAR2,
   sortiedatein                  VARCHAR2,
   schedblocknumberin    VARCHAR2,
   equipidin          VARCHAR2,
   sortienumberin     VARCHAR2,
   istartdatein      VARCHAR2,
   startdatein       VARCHAR2,
   starttimein       VARCHAR2,
   istopdatein      VARCHAR2,
   stopdatein        VARCHAR2,
   stoptimein                    VARCHAR2,
   fuelloadin                    VARCHAR2,
   missionnumin                  VARCHAR2,
   opereventtypeeventin            VARCHAR2
)
AS
   tmpvar   NUMBER;
   /******************************************************************************
   NAME:       INSERTOPEREVENTUPDATETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     INSERTOPEREVENTUPDATETRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       operationaleventupdatetrx)

******************************************************************************/
BEGIN
   SELECT seq_opereventupdate.NEXTVAL
     INTO tmpvar
     FROM DUAL;

     INSERT INTO EMOC3.OPERATIONALEVENTUPDATETRX (
       OPERATIONALEVENTUPDATETRXID, OEUTRANSACTIONID, HOMEENTERPRISELOCATIONCODE,
      CURRENTENTERPRISELOCATIONCODE, UNITID, SORTIEDATE, SCHEDULINGBLOCKNUMBER,
      EQUIPMENTID, SORTIENUMBER, STARTDATE, STARTTIME, STOPDATE, STOPTIME,
   FUELLOAD, MISSIONNUMBER, OPERATIONALEVENTTYPEEVENT, DATEPROCESSED)
  VALUES (tmpvar, oeutransidin, homeelcin, currentelcin, unitidin, isortiedatein,
       schedblocknumberin, equipidin, sortienumberin, istartdatein,
    starttimein, istopdatein, stoptimein, fuelloadin, missionnumin,
    opereventtypeeventin, SYSDATE);

  IF schedblocknumberin IS NOT NULL THEN
   UPDATEBLKOPEREVTUPDATEFROMIMDS(oeutransidin, homeelcin, currentelcin, unitidin, isortiedatein,
       sortiedatein, schedblocknumberin, equipidin, sortienumberin, istartdatein, startdatein,
    starttimein, istopdatein, stopdatein, stoptimein, fuelloadin, missionnumin,
    opereventtypeeventin);
  ELSE
   UPDATEOPEREVENTUPDATEFROMIMDS(oeutransidin, homeelcin, currentelcin, unitidin, isortiedatein,
       sortiedatein, schedblocknumberin, equipidin, sortienumberin, istartdatein, startdatein,
    starttimein, istopdatein, stopdatein, stoptimein, fuelloadin, missionnumin,
    opereventtypeeventin);
  END IF;

--EXCEPTION
--   WHEN NO_DATA_FOUND
 --  THEN
 --     NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END INSERTOPEREVENTUPDATETRX;
 
 
 
 
 
 
 
 
@
