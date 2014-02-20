--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_CAUSEDEFAULT_BY_MOC" (
   mocidin                     	 NUMBER,
   causeid				OUT		 NUMBER
)
AS
causecnt NUMBER;
   /******************************************************************************
   NAME:       GET_CAUSEDEFAULT_BY_MOC
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_CAUSEDEFAULT_BY_MOC
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   /*GET Cause*/
   SELECT COUNT(*)
   INTO causecnt
   FROM CAUSECODES
  WHERE mocid = mocidin
    AND defaultcausecode = 1;
  IF causecnt > 0 THEN
	 SELECT causecodeid
	   INTO causeid
	   FROM CAUSECODES
	  WHERE mocid = mocidin
	    AND defaultcausecode = 1;
  ELSE
  	  causeid := NULL;
  END IF;

--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END GET_CAUSEDEFAULT_BY_MOC;
 
 
 
 
 
 
 
 
@
