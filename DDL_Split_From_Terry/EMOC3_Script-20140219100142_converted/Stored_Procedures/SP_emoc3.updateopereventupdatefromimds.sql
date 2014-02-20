--<ScriptOptions statementTerminator="@"/>

CREATE PROCEDURE         "EMOC3"."UPDATEOPEREVENTUPDATEFROMIMDS" (
   oeutransidin	  			     NUMBER,
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   isortiedatein				 VARCHAR2,
   sortiedatein                  VARCHAR2,
   schedblocknumberin			 VARCHAR2,
   equipidin    			 	 VARCHAR2,
   sortienumberin				 VARCHAR2,
   istartdatein					 VARCHAR2,
   startdatein  				 VARCHAR2,
   starttimein  				 VARCHAR2,
   istopdatein					 VARCHAR2,
   stopdatein   				 VARCHAR2,
   stoptimein                    VARCHAR2,
   fuelloadin                    VARCHAR2,
   missionnumin                  VARCHAR2,
   opeventtypeeventin            VARCHAR2
)/* FEULLOAD???????????????????*/
AS
   mocvar   NUMBER;
   acidvar  NUMBER;
   squadvar NUMBER;
   schedidvar NUMBER;
   missvar  NUMBER;
   startdate DATE;
   stopdate  DATE;
   /******************************************************************************
   NAME:       UPDATEOPEREVENTUPDATEFROMIMDS
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     UPDATEOPEREVENTUPDATEFROMIMDS
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       operationaleventupdatetrx)

******************************************************************************/
BEGIN
   /*GET MOCID for gathering code ids*/
	 GET_MOCID_BY_ELCUNITID(currentelcin,unitidin,mocvar);

	 IF mocvar IS NOT NULL THEN
	 /*Get Aircraftid to make sure correct schedule line*/
	 	   GET_AIRCRAFTID_BY_MOCEQUIPID(mocvar,equipidin,acidvar);

		   IF acidvar IS NOT NULL THEN
		   	  UPD_AIRCRAFT_FUELLOAD(fuelloadin,acidvar);
	 	   	  /*Get Squadronid */
	 	   		 GET_SQUADID_BY_AIRCRAFTID(acidvar,squadvar);

				 IF squadvar IS NOT NULL THEN
	 			 /*GetScheduleid to apply deviation to*/
	 			 	GET_SCHEDID_BY_SQUADSORTIEACID(squadvar,sortiedatein,sortienumberin,acidvar,schedidvar);

					IF schedidvar IS NOT NULL THEN
					   	 GET_MISSIONID_BY_MOCMISSION(mocvar,missionnumin,missvar);

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

						 UPDATE EMOC3.SCHEDULE
						 	SET SCHEDULEDTAKEOFF = startdate,
					       		SCHEDULEDLANDING = stopdate,
					       		MISSIONID = missvar,
					       		TYPE_EVENT = opeventtypeeventin
							WHERE  SCHEDULEID = schedidvar;
					 END IF;
				END IF;
		 END IF;
	END IF;


--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END UPDATEOPEREVENTUPDATEFROMIMDS;
 
 
 
 
 
 
 
 
@
