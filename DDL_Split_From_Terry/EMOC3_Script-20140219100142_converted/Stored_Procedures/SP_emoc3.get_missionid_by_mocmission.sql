--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MISSIONID_BY_MOCMISSION" (
   mocidin                     	 NUMBER,
   missionnumin 				 VARCHAR2,
   missid				OUT		 NUMBER
)
AS
miscount NUMBER;
   /******************************************************************************
   NAME:       GET_MISSIONID_BY_MOCMISSION
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_MISSIONID_BY_MOCMISSION
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   /*GET MISSION*/
	    IF missionnumin IS NOT NULL THEN
		 	SELECT COUNT(*)
			  INTO miscount
			  FROM MISSIONS
			 WHERE mocid = mocidin
			   AND mission = missionnumin;
			IF miscount > 0 THEN
				SELECT missionid
				  INTO missid
				  FROM MISSIONS
				 WHERE mocid = mocidin
				   AND mission = missionnumin;
			ELSE
				missid := NULL;
			END IF;
		 ELSE
		 	 missid := NULL;
		 END IF;

--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END GET_MISSIONID_BY_MOCMISSION;
 
 
 
 
 
 
 
 
@
