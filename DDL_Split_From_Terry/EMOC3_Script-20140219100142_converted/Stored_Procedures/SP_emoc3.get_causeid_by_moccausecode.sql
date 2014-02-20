--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_CAUSEID_BY_MOCCAUSECODE" (
   mocidin                     	 NUMBER,
   devcausecodein				 VARCHAR2,
   causeid				OUT		 NUMBER
)
AS
causecnt NUMBER;
   /******************************************************************************
   NAME:       GET_CAUSEID_BY_MOCCAUSECODE
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_CAUSEID_BY_MOCCAUSECODE
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   /*GET CauseCodeid*/
   SELECT COUNT(*)
     INTO causecnt
     FROM CAUSECODES
    WHERE mocid = mocidin
      AND causecode = devcausecodein;
	IF causecnt > 0 THEN
	    SELECT causecodeid
	      INTO causeid
	      FROM CAUSECODES
	     WHERE mocid = mocidin
	       AND causecode = devcausecodein;
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
END GET_CAUSEID_BY_MOCCAUSECODE;
 
 
 
 
 
 
 
 
@
