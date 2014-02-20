--<ScriptOptions statementTerminator="@"/>


/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 11948
	Relative Current Chunk Line Number: 11948
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character '   -- Consider logging the error and then re-raise\n       RAISE;\nEND GET_SCHEDLINE_DEV;\n\n[CREATE]'
------------

The following statement (from line 11882 to 11946) and was skipped" BEGIN*/
 CREATE FUNCTION         "EMOC3"."GET_SCHEDLINE_DEV"(

SCHEDULEIDIN IN NUMBER

)

/******************************************************************************

   NAME:       GET_SCHEDDLINE_DEV

   PURPOSE:    Return deviation for scheduleid



   REVISIONS:

   Ver        Date        Author           Description

   ---------  ----------  ---------------  ------------------------------------

   1.0        5/25/2004   J.Chaplin        1. Created this function.

   2.0        12/7/2011   J.Long	   1. Update the retVal for multiple values



******************************************************************************/

RETURN VARCHAR2

IS

retVal VARCHAR2(50) := null;

BEGIN

        select wm_concat(deviationcode) DEV
		  into retVal
		  from scheduledeviations sch
          join schedule on sch.scheduleid = schedule.scheduleid
          join deviationcodes dev on dev.deviationcodeid = sch.deviationcodeid
         where (
         	   	schedule.scheduleid = SCHEDULEIDIN
               );

		RETURN retVal;
   EXCEPTION
     WHEN NO_DATA_FOUND THEN
        if retVal is NULL then
		   begin
           select sch.deviationcodeid DEV
		   into retVal
           from schedule sch
           join deviationcodes dev on dev.deviationcodeid = sch.deviationcodeid
           where (
         	   	sch.scheduleid = SCHEDULEIDIN
               	);
		select wm_concat(deviationcode) into retVal from deviationcodes where deviationcodeid in TO_NUMBER(retVal);
			end;
		end if;
		RETURN retVal;
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END GET_SCHEDLINE_DEV@
