--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."TRANSMIT" 
 (p1 IN VARCHAR2, p2 IN VARCHAR2, p3 IN NUMBER)
 /*Code Fragment was removed >> AUTHID CURRENT_USER<< Code Fragment was removed - END*/
AS LANGUAGE JAVA NAME 'DbTrigger.transmit(java.lang.String, java.lang.String, int)';
/* *** DCW Evaluation Issue "PLSQL_AUTHID_CURRENT_USER".Corresponding line no in the source file:42311 *** */

 
 
 
 
 
 
 
 
@

CREATE PROCEDURE         "EMOC3"."UPDATEBLKDEVCORRECTIONFROMIMDS" (
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   isortiedatein				 VARCHAR2,
   sortiedatein                  VARCHAR2,
   schedblknumin				 VARCHAR2,
   equipidin 				 	 VARCHAR2,
   sortienumberin 				 VARCHAR2,
   sortiemodifierin              VARCHAR2,
   mainteventidin                VARCHAR2,
   devcodein                     VARCHAR2,
   devcausecodein                VARCHAR2,
   newdevcausecodein			 VARCHAR2,
   chargeindin                   VARCHAR2,
   istartdatein					 VARCHAR2,
   startdatein					 VARCHAR2,
   starttimein                   VARCHAR2,
   istopdatein					 VARCHAR2,
   stopdatein                    VARCHAR2,
   stoptimein					 VARCHAR2,
   devremarksin                  VARCHAR2
)/* criteria on where clause */
AS
   mocvar   NUMBER;
   schedidvar NUMBER;
   devidvar NUMBER;
   causevar NUMBER;
   chargevar NUMBER;
   newcausevar NUMBER;
   squadvar NUMBER;
   actionvar NUMBER;
   remarksid NUMBER;
   startdate DATE;
   stopdate  DATE;
   /******************************************************************************
   NAME:       UPDATEBLKDEVCORRECTIONFROMIMDS
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     UPDATEBLKDEVCORRECTIONFROMIMDS
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       deviationcorrectiontrx)

******************************************************************************/
BEGIN
   /*GET MOCID for gathering code ids*/
	 GET_MOCID_BY_ELCUNITID(currentelcin,unitidin,mocvar);

	 IF mocvar IS NOT NULL THEN
	 /*Get Deviationid*/
	 	   GET_DEVID_BY_MOCDEVCODE(mocvar,devcodein,devidvar);

		   IF devidvar IS NOT NULL THEN
	 	   /*GET CauseCodeid*/
	 	   		 GET_CAUSEID_BY_MOCCAUSECODE(mocvar,devcausecodein,causevar);

				 IF causevar IS NOT NULL THEN
	 			 /*GET CauseCodeid*/
				 	   GET_CAUSEID_BY_MOCCAUSECODE(mocvar,newdevcausecodein,newcausevar);

					   IF newcausevar IS NOT NULL THEN
							 IF chargeindin = 'Y' THEN
							 	chargevar := 1;
							 ELSE
							 	chargevar := 0;
							 END IF;
							 actionvar := 3;
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

						   UPDATE EMOC3.SCHEDULEDEVIATIONS
						   		  SET    NEWCAUSECODE = newcausevar,
						       			 SORTIEMOD = sortiemodifierin,
						       			 ACTIONOPTIONS = actionvar,
						       			 CHARGEABLE = chargevar,
						       			 STARTDATETIME = startdate,
						       			 STOPDATETIME = stopdate,
						       			 DEVIATIONSREMARKS = remarksid
								WHERE  SCHEDULEDEVIATIONID IN (SELECT SCHEDULEDEVIATIONID
									   					   	   FROM SCHEDULEDEVIATIONS
															   WHERE SCHEDULEID IN (SELECT scheduleid
							   																 FROM SCHEDULE
							  																 WHERE SQUADRONID IN (SELECT squadronid
																							 	   			      FROM squadrons
																												  WHERE mocid = mocvar)
							    															 AND SORTIEDATE = sortiedatein
																							 AND BLOCKNUMBER = schedblknumin))
								  AND  DEVIATIONCODEID = devidvar
								  AND  CAUSECODEID = causevar;
					 END IF;
				END IF;
			END IF;
	 END IF;

--EXCEPTION
--   WHEN NO_DATA_FOUND
 --  THEN
 --     NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END UPDATEBLKDEVCORRECTIONFROMIMDS;
 
 
 
 
 
 
 
 
@
