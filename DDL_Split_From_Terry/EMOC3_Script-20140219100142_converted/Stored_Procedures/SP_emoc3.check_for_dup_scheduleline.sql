--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."CHECK_FOR_DUP_SCHEDULELINE" (
   squadin                     	 NUMBER,
   sortiedatein					 VARCHAR2,
   sortienumberin				 VARCHAR2,
   acidin						 NUMBER,
   schedcnt				OUT		 NUMBER
)
AS

   /******************************************************************************
   NAME:       CHECK_FOR_DUP_SCHEDULELINE
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     CHECK_FOR_DUP_SCHEDULELINE
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


--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END CHECK_FOR_DUP_SCHEDULELINE;
 
 
 
 
 
 
 
 
@
