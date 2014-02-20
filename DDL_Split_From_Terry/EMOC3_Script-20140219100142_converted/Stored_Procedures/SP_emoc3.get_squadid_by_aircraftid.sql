--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SQUADID_BY_AIRCRAFTID" (
   acidin                     	 NUMBER,
   squadid 				OUT		 NUMBER
)
AS
squadcnt NUMBER;
   /******************************************************************************
   NAME:       GET_SQUADID_BY_AIRCRAFTID
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_SQUADID_BY_AIRCRAFTID
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   /*GET SQUADROND */
   SELECT COUNT(*)
	   INTO squadcnt
	   FROM aircraft
	  WHERE aircraftid = acidin;
   IF squadcnt > 0 THEN
	 SELECT squadronid
	   INTO squadid
	   FROM aircraft
	  WHERE aircraftid = acidin;
   ELSE
   	   squadid := NULL;
   END IF;


--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END GET_SQUADID_BY_AIRCRAFTID;
 
 
 
 
 
 
 
 
@
