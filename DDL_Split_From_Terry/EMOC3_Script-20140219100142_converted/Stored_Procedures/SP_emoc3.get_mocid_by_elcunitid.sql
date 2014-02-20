--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOCID_BY_ELCUNITID" (
   elcin                     	 VARCHAR2,
   unitidin                      VARCHAR2,
   mocid   				OUT		 NUMBER
)
AS
moccnt NUMBER;
   /******************************************************************************
   NAME:       GET_MOCID_BY_ELCUNITID
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_MOCID_BY_ELCUNITID
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   /*GET MOCID */
    SELECT COUNT(*)
	   INTO moccnt
	   FROM WINGS
	  WHERE ELC = elcin
	    AND unitid = unitidin;
   IF moccnt > 0 THEN
	 SELECT mocid
	   INTO mocid
	   FROM WINGS
	  WHERE ELC = elcin
	    AND unitid = unitidin;
   ELSE
   	   mocid := NULL;
   END IF;


--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END GET_MOCID_BY_ELCUNITID;
 
 
 
 
 
 
 
 
@
