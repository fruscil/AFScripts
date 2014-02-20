--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AIRCRAFTID_BY_MOCEQUIPID" (
   mocin                     	 NUMBER,
   equipidin                     VARCHAR2,
   acid   				OUT		 NUMBER
)
AS
accnt NUMBER;
   /******************************************************************************
   NAME:       GET_AIRCRAFTID_BY_MOCEQUIPID
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_AIRCRAFTID_BY_MOCEQUIPID
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   /*GET AIRCRAFTID */
   SELECT COUNT(*)
     INTO accnt
	 FROM aircraft
	WHERE mocid = mocin
	  AND misequipid = equipidin;
   IF accnt > 0 THEN
	 SELECT aircraftid
	   INTO acid
	   FROM aircraft
	  WHERE mocid = mocin
	    AND misequipid = equipidin;
   ELSE
   	   acid := NULL;
   END IF;


--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END GET_AIRCRAFTID_BY_MOCEQUIPID;
 
 
 
 
 
 
 
 
@
