--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SCHEDID_BY_SQUADSORTIEACID" (
   squadin                     	 NUMBER,
   sortiedatein					 VARCHAR2,
   sortienumberin				 VARCHAR2,
   acidin						 NUMBER,
   schedid 				OUT		 NUMBER
)
AS
schedcnt NUMBER;
   /******************************************************************************
   NAME:       GET_SCHEDID_BY_SQUADSORTIEAIRCRAFTID
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_SCHEDID_BY_SQUADSORTIEAIRCRAFTID
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   /*GET SCHEDEULID*/
   SELECT COUNT(*)
	   INTO schedcnt
	   FROM SCHEDULE
	  WHERE SQUADRONID = squadin
	    AND SORTIEDATE = sortiedatein
		AND SORTIENUM = sortienumberin
		AND AIRCRAFTID = acidin;
   IF schedcnt > 0 THEN
	 SELECT scheduleid
	   INTO schedid
	   FROM SCHEDULE
	  WHERE SQUADRONID = squadin
	    AND SORTIEDATE = sortiedatein
		AND SORTIENUM = sortienumberin
		AND AIRCRAFTID = acidin;
	ELSE
		schedid := NULL;
	END IF;

--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END GET_SCHEDID_BY_SQUADSORTIEACID;
 
 
 
 
 
 
 
 
@
