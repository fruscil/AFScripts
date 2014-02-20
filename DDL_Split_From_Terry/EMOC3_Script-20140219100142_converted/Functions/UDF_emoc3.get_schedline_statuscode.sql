--<ScriptOptions statementTerminator="@"/>


CREATE FUNCTION         "EMOC3"."GET_SCHEDLINE_STATUSCODE" (
SCHEDULEIDIN IN NUMBER,
STATUSCODEIN IN VARCHAR2
)
/******************************************************************************
   NAME:       GET_SCHEDDLINE_STATUSCODE
   PURPOSE:    Return time for statuscode for scheduleid

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        5/25/2004   J.Chaplin        1. Created this function.


******************************************************************************/

RETURN VARCHAR2

IS
retVal VARCHAR2(10) := null;

BEGIN


        select TO_CHAR(STATUSTIME,'HH24MI') STATUSTIME
		into retVal
          from schedule sch
          join schedulestatus stat on stat.scheduleid = sch.scheduleid
		  join statuscode code on code.statuscodeid = stat.statuscodeid
         where (
         	   	sch.scheduleid = SCHEDULEIDIN
				and code.statuscode = STATUSCODEIN
               );

		IF retVal is null
		THEN
		   BEGIN
		   		retVal := 'none';
		   END;
		END IF;

		RETURN retVal;
		--EXCEPTION
		  --WHEN NO_DATA_FOUND THEN
		   -- retVal := 'none';
		  --WHEN OTHERS THEN
		    --Consider logging the error and then re-raise
			--retVal := 'none';
END GET_SCHEDLINE_STATUSCODE;
 
 
 
 
 
 
 
 
@
