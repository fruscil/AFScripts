--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETEBLKDEVIATIONFROMIMDS" (
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   isortiedatein				 VARCHAR2,
   sortiedatein                  VARCHAR2,
   schedblknumin				 VARCHAR2,
   equipidin   					 VARCHAR2,
   sortienumberin 				 VARCHAR2,
   sortiemodifierin              VARCHAR2,
   mainteventidin                VARCHAR2,
   devcodein                     VARCHAR2,
   devcausecodein                VARCHAR2,
   chargeindin                   VARCHAR2
)
AS
   mocvar   NUMBER;
   acidvar  NUMBER;
   devidvar NUMBER;
   causevar NUMBER;
   /*chargevar NUMBER;*/
   /******************************************************************************
   NAME:       DELETEBLKDEVIATIONFROMIMDS
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     DELETEBLKDEVIATIONFROMIMDS
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       deviationdeletetrx)

******************************************************************************/
BEGIN
   	 /*GET MOCID for gathering code ids*/
	 GET_MOCID_BY_ELCUNITID(currentelcin,unitidin,mocvar);

	 IF mocvar IS NULL THEN
	 	/*Get Deviationid*/
		GET_DEVID_BY_MOCDEVCODE(mocvar,devcodein,devidvar);

		IF devidvar IS NOT NULL THEN
	 	/*GET CauseCodeid*/
			  GET_CAUSEID_BY_MOCCAUSECODE(mocvar,devcausecodein,causevar);

			  IF causevar IS NOT NULL THEN

		   	 	 DELETE FROM EMOC3.SCHEDULEDEVIATIONS
			 	 WHERE scheduleid IN (SELECT scheduleid
			   	   			  	 	FROM SCHEDULE
			  						WHERE SQUADRONID IN
										  (SELECT squadronid FROM squadrons WHERE mocid = mocvar)
			    					AND SORTIEDATE = sortiedatein
									AND BLOCKNUMBER = schedblknumin)
			 	 AND deviationcodeid = devidvar
			 	 AND causecodeid = causevar;
			  END IF;
		END IF;
	END IF;

--EXCEPTION
--   WHEN NO_DATA_FOUND
--   THEN
--      NULL;
--   WHEN OTHERS
--   THEN
      -- Consider logging the error and then re-raise
--      RAISE;
END DELETEBLKDEVIATIONFROMIMDS;
 
 
 
 
 
 
 
 
@
