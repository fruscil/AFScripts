--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTOPEREVENTREPLACEMENTTRX" (
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   isortiedatein				 VARCHAR2,
   sortiedatein                  VARCHAR2,
   sortienumberin   			 VARCHAR2,
   undoreplacementin   			 VARCHAR2,
   equipidin    				 VARCHAR2,
   devcodein    				 VARCHAR2,
   devcausecodein  				 VARCHAR2,
   chargeindin   				 VARCHAR2,
   newequipidin                  VARCHAR2,
   mainteventid                  VARCHAR2,
   devremarksin                  VARCHAR2
)
AS
   tmpvar   NUMBER;
   /******************************************************************************
   NAME:       INSERTOPEREVENTREPLACEMENTTRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     INSERTOPEREVENTREPLACEMENTTRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       operationaleventreplacementtrx)

******************************************************************************/
BEGIN
   SELECT seq_opereventreplacement.NEXTVAL
     INTO tmpvar
     FROM DUAL;

   	 INSERT INTO EMOC3.OPERATIONALEVENTREPLACEMENTTRX (
   	 		OPERATEVENTREPLACEMENTTRXID, HOMEENTERPRISELOCATIONCODE,
   			CURRENTENTERPRISELOCATIONCODE, UNITID, SORTIEDATE, SORTIENUMBER,
   			UNDOREPLACEMENT, EQUIPMENTID, DEVIATIONCODE, DEVIATIONCAUSECODE,
			CHARGEABLEINDICATOR, NEWEQUIPMENTID, MAINTENANCEEVENTID,
			DEVIATIONREMARKS, DATEPROCESSED)
	 VALUES (tmpvar, homeelcin, currentelcin, unitidin, isortiedatein,
    		 sortienumberin, undoreplacementin, equipidin, devcodein,
			 devcausecodein, chargeindin, newequipidin, mainteventid, devremarksin,
			 SYSDATE);

	 INSERTOPEREVTRPLACEMNTFROMIMDS(homeelcin, currentelcin, unitidin, isortiedatein,
    		 sortiedatein, sortienumberin, undoreplacementin, equipidin, devcodein,
			 devcausecodein, chargeindin, newequipidin, mainteventid, devremarksin);

--EXCEPTION
 --  WHEN NO_DATA_FOUND
 --  THEN
--      NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
--      RAISE;
END INSERTOPEREVENTREPLACEMENTTRX;
 
 
 
 
 
 
 
 
@
