--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WINGID_BY_ELCUNITID" (
   elcin                    VARCHAR2,
   unitidin                 VARCHAR2,
   wingid   	 OUT		 NUMBER
)
AS
wingcnt NUMBER;
   /******************************************************************************
   NAME:       GET_WINGID_BY_ELCUNITID
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        1/16/2007  rwm             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_WINGID_BY_ELCUNITID
      Sysdate:         1/16/2007
      Date and Time:   1/16/2007
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   /*GET WINGID */
    SELECT COUNT(*)
	   INTO wingcnt
	   FROM WINGS
	  WHERE ELC = elcin
	    AND unitid = unitidin;
   IF wingcnt > 0 THEN
	 SELECT wingid
	   INTO wingid
	   FROM (SELECT wingid FROM WINGS
	  WHERE ELC = elcin
	    AND unitid = unitidin
		AND ROWNUM < 2);
   ELSE
   	   wingid := NULL;
   END IF;


--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END GET_WINGID_BY_ELCUNITID;
 
 
 
 
 
 
 
 
@
