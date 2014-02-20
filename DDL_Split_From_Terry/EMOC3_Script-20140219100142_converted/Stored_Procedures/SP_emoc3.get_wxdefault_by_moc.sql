--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WXDEFAULT_BY_MOC" (
   mocidin                     	 NUMBER,
   wxid				OUT		 NUMBER
)
AS
wxcnt NUMBER;
   /******************************************************************************
   NAME:       GET_WXDEFAULT_BY_MOC
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_WXDEFAULT_BY_MOC
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   /*GET Weather Code*/
   SELECT COUNT(*)
	   INTO wxcnt
	   FROM WX
	  WHERE mocid = mocidin
	    AND defaultweathercode = 1;
   IF wxcnt > 0 THEN
	    SELECT weathercode
	   INTO wxid
	   FROM WX
	  WHERE mocid = mocidin
	    AND defaultweathercode = 1;
   ELSE
   	   wxid := NULL;
   END IF;

--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END GET_WXDEFAULT_BY_MOC;
 
 
 
 
 
 
 
 
@
