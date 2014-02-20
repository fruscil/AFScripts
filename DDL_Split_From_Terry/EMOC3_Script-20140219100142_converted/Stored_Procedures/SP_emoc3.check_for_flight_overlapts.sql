--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."CHECK_FOR_FLIGHT_OVERLAPTS" (
   sortiedatein					 VARCHAR2,
   schedidin					 NUMBER,
   acidin						 NUMBER,
   schedcnt				OUT		 NUMBER
)
AS
   /******************************************************************************
   NAME:       CHECK_FOR_FLIGHT_OVERLAPTS
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     CHECK_FOR_FLIGHT_OVERLAPTS
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   /*GET SCHEDEULID*/
   SELECT COUNT(*)
   INTO schedcnt
   FROM schedule
   WHERE sortiedate = sortiedatein
   AND aircraftid = acidin
   AND ((scheduledtakeoff >= (SELECT scheduledtakeoff FROM schedule WHERE scheduleid = schedidin)
   AND scheduledtakeoff <= (SELECT scheduledlanding FROM schedule WHERE scheduleid = schedidin))
   OR (scheduledlanding >= (SELECT scheduledtakeoff FROM schedule WHERE scheduleid = schedidin)
   AND scheduledlanding <= (SELECT scheduledlanding FROM schedule WHERE scheduleid = schedidin)));



--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END CHECK_FOR_FLIGHT_OVERLAPTS;
 
 
 
 
 
 
 
 
@
