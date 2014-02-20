--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTOPERATIONALEVENTLOADTRX" (
   oeltransidin	  			     NUMBER,
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   isortiedatein				 VARCHAR2,
   sortiedatein                  VARCHAR2,
   dsortiedatein				 VARCHAR2,
   durexcd24hrsin				 VARCHAR2,
   opeventtypeeventin			 VARCHAR2,
   assnoneblockin				 VARCHAR2,
   estfuelloadin				 VARCHAR2,
   equipidin    				 VARCHAR2,
   schedblknumin				 VARCHAR2,
   sortienumberin 				 VARCHAR2,
   starttimein                   VARCHAR2,
   stoptimein                    VARCHAR2,
   missionnumin                  VARCHAR2,
   devcausecodein                VARCHAR2,
   chargeindin                   VARCHAR2
)
AS
   tmpvar   NUMBER;
   /******************************************************************************
   NAME:       INSERTOPERATIONALEVENTLOADTRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     INSERTOPERATIONALEVENTLOADTRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       operationaleventloadtrx)

******************************************************************************/
BEGIN
   SELECT seq_opereventload.NEXTVAL
     INTO tmpvar
     FROM DUAL;

   	 INSERT INTO EMOC3.OPERATIONALEVENTLOADTRX (
   	 		OPERATIONALEVENTLOADTRXID, OELTRANSACTIONID, HOMEENTERPRISELOCATIONCODE,
   			CURRENTENTERPRISELOCATIONCODE, UNITID, SORTIEDATE,
   			DURATIONEXCEEDS24HOURS, OPERATIONALEVENTTYPEEVENT, ASSIGNTOONESCHEDULEINGBLOCK,
   			ESTIMATEDFUELLOAD, EQUIPMENTID, SORTIENUMBER, STARTTIME, STOPTIME,
			MISSIONNUMBER, DEVIATIONCAUSECODE, CHARGEABLEINDICATOR, DATEPROCESSED, SCHEDULINGBLOCKNUMBER)
	 VALUES (tmpvar, oeltransidin, homeelcin, currentelcin, unitidin, isortiedatein,
    		 durexcd24hrsin, opeventtypeeventin, assnoneblockin, estfuelloadin,
			 equipidin, sortienumberin, starttimein, stoptimein, missionnumin,
    		 devcausecodein, chargeindin, SYSDATE, schedblknumin);

	 INSERTOPEREVENTLOADFROMIMDS(oeltransidin, homeelcin, currentelcin, unitidin, isortiedatein,
    		 sortiedatein, dsortiedatein, durexcd24hrsin, opeventtypeeventin, assnoneblockin,
			 estfuelloadin, equipidin, schedblknumin, sortienumberin, starttimein, stoptimein, missionnumin,
    		 devcausecodein, chargeindin);

--EXCEPTION
 --  WHEN NO_DATA_FOUND
--   THEN
--     NULL;
--   WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
  --    RAISE;
END INSERTOPERATIONALEVENTLOADTRX;
 
 
 
 
 
 
 
 
@
