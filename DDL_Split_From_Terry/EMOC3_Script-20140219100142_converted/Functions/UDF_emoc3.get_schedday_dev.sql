--<ScriptOptions statementTerminator="@"/>


CREATE FUNCTION         "EMOC3"."GET_SCHEDDAY_DEV" (
SORTIEDATEIN IN VARCHAR2,
SQUADRONIDIN NUMBER,
DEVIATIONIN VARCHAR2
)
/******************************************************************************
   NAME:       GET_SCHEDDAYDEV
   PURPOSE:    Return the number of associated DEVs for Schedule Fly Day report

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        4/9/2004    A.Mitchell      1. Created this function.


******************************************************************************/

RETURN VARCHAR2

IS
retVal NUMBER := 0;

BEGIN

	   select sum(DEV) DEV
	   into retVal
	   from
       (
        select count(sch.deviationcodeid) DEV
          from schedule sch
          join deviationcodes dev on dev.deviationcodeid = sch.deviationcodeid
         where (
         	   	sch.sortiedate = SORTIEDATEIN
        		and sch.squadronid = SQUADRONIDIN
        		and (dev.deviationcode = DEVIATIONIN)
               )
        union all
        select count(sch.deviationcodeid) DEV
          from scheduledeviations sch
          join schedule on sch.scheduleid = schedule.scheduleid
          join deviationcodes dev on dev.deviationcodeid = sch.deviationcodeid
         where (
         	   	schedule.sortiedate = SORTIEDATEIN
        		and schedule.squadronid = SQUADRONIDIN
        		and (dev.deviationcode = DEVIATIONIN)
               )
       );

   RETURN retVal;
   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       NULL;
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END GET_SCHEDDAY_DEV;
 
 
 
 
 
 
 
 
@
