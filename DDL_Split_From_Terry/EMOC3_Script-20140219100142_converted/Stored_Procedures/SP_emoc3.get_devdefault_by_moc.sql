--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_DEVDEFAULT_BY_MOC" (
   mocidin                     	 NUMBER,
   devid				OUT		 NUMBER
)
AS
devcnt NUMBER;
   /******************************************************************************
   NAME:       GET_DEVDEFAULT_BY_MOC
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_DEVDEFAULT_BY_MOC
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   /*GET Deviation*/
   SELECT COUNT(*)
   INTO devcnt
   FROM DEVIATIONCODES
  WHERE mocid = mocidin
    AND defaultdeviationcode = 1;
  IF devcnt > 0 THEN
	 SELECT deviationcodeid
	   INTO devid
	   FROM DEVIATIONCODES
	  WHERE mocid = mocidin
	    AND defaultdeviationcode = 1;
  ELSE
  	  devid := NULL;
  END IF;

--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END GET_DEVDEFAULT_BY_MOC;
 
 
 
 
 
 
 
 
@
