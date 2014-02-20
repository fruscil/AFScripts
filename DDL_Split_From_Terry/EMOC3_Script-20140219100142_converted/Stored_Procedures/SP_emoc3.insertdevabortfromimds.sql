--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTDEVABORTFROMIMDS" (
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   isortiedatein				 VARCHAR2,
   sortiedatein                  VARCHAR2,
   equipidin 				 	 VARCHAR2,
   sortienumberin 				 VARCHAR2,
   sortiemodifierin              VARCHAR2,
   mainteventidin                VARCHAR2,
   schedblknumin                 VARCHAR2,
   devcodein                     VARCHAR2,
   devcausecodein                VARCHAR2,
   chargeindin                   VARCHAR2,
   istartdatein					 VARCHAR2,
   startdatein					 VARCHAR2,
   starttimein                   VARCHAR2,
   istopdatein					 VARCHAR2,
   stopdatein                    VARCHAR2,
   stoptimein					 VARCHAR2,
   devremarksin                  VARCHAR2
)
AS
   mocvar   NUMBER;
   acidvar  NUMBER;
   schedidvar NUMBER;
   devidvar NUMBER;
   causevar NUMBER;
   chargevar NUMBER;
   squadvar NUMBER;
   actionvar NUMBER;
   tmpvar NUMBER;
   remarksid NUMBER;
   startdate DATE;
   stopdate  DATE;
   /******************************************************************************
   NAME:       INSERTDEVABORTFROMIMDS
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     INSERTDEVIATIONABORTTRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       deviationaborttrx)

******************************************************************************/
BEGIN

   /*GET MOCID for gathering code ids*/
	GET_MOCID_BY_ELCUNITID(currentelcin,unitidin,mocvar);

	IF mocvar IS NOT NULL THEN
	 /*Get Aircraftid to make sure correct schedule line*/
	 	   GET_AIRCRAFTID_BY_MOCEQUIPID(mocvar,equipidin,acidvar);

		   IF acidvar IS NOT NULL THEN
	 	   /*Get Squadronid */
		   		 GET_SQUADID_BY_AIRCRAFTID(acidvar,squadvar);

				 IF squadvar IS NOT NULL THEN
	 			 /*GetScheduleid to apply deviation to*/
	 			 	GET_SCHEDID_BY_SQUADSORTIEACID(squadvar,sortiedatein,sortienumberin,acidvar,schedidvar);

					IF schedidvar IS NOT NULL THEN
	 				/*Get Deviationid*/
	 					  GET_DEVID_BY_MOCDEVCODE(mocvar,devcodein,devidvar);

						  IF devidvar IS NOT NULL THEN
	 					  /*GET CauseCodeid*/
	 					  		GET_CAUSEID_BY_MOCCAUSECODE(mocvar,devcausecodein,causevar);

								IF causevar IS NOT NULL THEN

									 IF chargeindin = 'Y' THEN
									 	chargevar := 1;
									 ELSE
									 	chargevar := 0;
									 END IF;
									 actionvar := 4;

									 IF devremarksin IS NOT NULL THEN
										 SELECT SEQ_REMARKS.NEXTVAL
									       INTO   REMARKSID
									       FROM   DUAL;
									       Add_Remarks (REMARKSID, devremarksin);
									 ELSE
									 	 remarksid := NULL;
									 END IF;
									 IF startdatein IS NOT NULL AND starttimein IS NOT NULL THEN
									  	 startdate := TO_DATE(startdatein || starttimein, 'mm/dd/yyyy hh24:MI:ss');
									  ELSE
									  	 startdate := NULL;
									  END IF;
									 IF stopdatein IS NOT NULL AND stoptimein IS NOT NULL THEN
									  	 stopdate := TO_DATE(stopdatein || stoptimein, 'mm/dd/yyyy hh24:MI:ss');
									  ELSE
									  	 stopdate := NULL;
									  END IF;

								      SELECT seq_scheduledeviations.NEXTVAL
									     INTO tmpvar
									     FROM DUAL;

									 INSERT INTO EMOC3.SCHEDULEDEVIATIONS (
								   	 		SCHEDULEDEVIATIONID, SCHEDULEID, DEVIATIONCODEID,
											CAUSECODEID, NEWCAUSECODE, SORTIENUM, SORTIEDATE,
											SORTIEMOD, ACTIONOPTIONS, CHARGEABLE, STARTDATETIME,
								   			STOPDATETIME, MAINTENANCEEVENTID, DEVIATIONSREMARKS,
								   			INTERFACELOGID)
									 VALUES (tmpvar, schedidvar, devidvar, causevar, NULL,
									 		 sortienumberin, sortiedatein, sortiemodifierin, actionvar,
											 chargevar, startdate, stopdate,
											 mainteventidin, remarksid, NULL);
								 END IF;
						  END IF;
					END IF;
				END IF;
			END IF;
		END IF;

--EXCEPTION
--   WHEN NO_DATA_FOUND
--   THEN
--      NULL;
--   WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END INSERTDEVABORTFROMIMDS;
 
 
 
 
 
 
 
 
@
