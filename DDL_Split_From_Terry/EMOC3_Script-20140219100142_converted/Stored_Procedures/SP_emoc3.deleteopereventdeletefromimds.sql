--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETEOPEREVENTDELETEFROMIMDS" (
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   equipidin                     VARCHAR2,
   isortiedatein				 VARCHAR2,
   sortiedatein     			 VARCHAR2,
   sortienumberin   			 VARCHAR2
)
AS
   mocvar   NUMBER;
   acidvar  NUMBER;
   squadvar NUMBER;
   /******************************************************************************
   NAME:       DELETEOPEREVENTDELETEFROMIMDS
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     DELETEOPEREVENTDELETEFROMIMDS
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       operationaleventdeletetrx)

******************************************************************************/
BEGIN
    /*GET MOCID for gathering code ids*/
	 GET_MOCID_BY_ELCUNITID(currentelcin,unitidin,mocvar);

	 IF mocvar IS NOT NULL THEN
	 /*Get Aircraftid to make sure correct schedule line*/
	 	   GET_AIRCRAFTID_BY_MOCEQUIPID(mocvar,equipidin,acidvar);

		   IF acidvar IS NOT NULL THEN
	 	   /*Get Squadronid for Aircraft*/
	 	   		 GET_SQUADID_BY_AIRCRAFTID(acidvar,squadvar);

				 IF squadvar IS NOT NULL THEN

				   	 DELETE FROM EMOC3.SCHEDULE
					 WHERE SORTIEDATE = sortiedatein
					   AND SORTIENUM = sortienumberin
					   AND AIRCRAFTID = acidvar
					   AND SQUADRONID = squadvar;
				 END IF;
			END IF;
	 END IF;

--EXCEPTION
--   WHEN NO_DATA_FOUND
 --  THEN
--     NULL;
--   WHEN OTHERS
--   THEN
      -- Consider logging the error and then re-raise
--      RAISE;
END DELETEOPEREVENTDELETEFROMIMDS;
 
 
 
 
 
 
 
 
@
